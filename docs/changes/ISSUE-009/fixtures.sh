#!/usr/bin/env bash
# Reproducible, disposable acceptance fixtures for ISSUE-009 W1.
set -euo pipefail

source_sha=${1:?usage: fixtures.sh <committed-source-sha> [evidence-output]}
evidence_output=${2:-}
repo_root=$(git rev-parse --show-toplevel)
real_git=$(command -v git)
workflow=.github/workflows/lite-checks.yml
work_dir=$(mktemp -d)
trap 'rm -rf "$work_dir"' EXIT
body="$work_dir/whitespace-body.sh"
log="$work_dir/results.log"
printf '# ISSUE-009 fixture evidence\n\nSOURCE=%s\nGIT=%s\nBASH=%s\nWORK=%s\n\n## Preserved unsuccessful pre-final attempts\n\nRecorded at %s. These attempts are diagnostic history only and are not acceptance evidence.\n\n- Initial extraction attempt: `fixture extraction: malformed run block`; the extractor incorrectly rejected blank lines in the YAML literal block.\n- Initial T01 attempt: `Bad file descriptor`; the commit-object reader file descriptor was attached to each `read`, rather than the complete loop.\n\n## Final exact-source execution\n\n' "$source_sha" "$($real_git --version)" "$BASH_VERSION" "$work_dir" "$(date -u +%Y-%m-%dT%H:%M:%SZ)" >"$log"

# Extract exactly one literal YAML run block; no implementation is copied here.
git -C "$repo_root" show "$source_sha:$workflow" >"$work_dir/workflow.yml"
workflow_blob=$(git -C "$repo_root" rev-parse "$source_sha:$workflow")
step_count=$(grep -Fxc '      - name: Check introduced whitespace errors' "$work_dir/workflow.yml" || true)
[[ $step_count == 1 ]] || { printf 'fixture extraction: expected one named step, got %s\n' "$step_count" >&2; exit 1; }
awk '
  $0 == "      - name: Check introduced whitespace errors" { wanted=1; next }
  wanted && $0 == "        run: |" { run=1; next }
  wanted && !run && /^      - / { exit 2 }
  run && /^      - / { exit }
  run {
    if ($0 == "") { print ""; next }
    if ($0 !~ /^          /) exit 3
    sub(/^          /, "")
    print
  }
  END { if (!run || NR == 0) exit 4 }
' "$work_dir/workflow.yml" >"$body" || { echo 'fixture extraction: malformed run block' >&2; exit 1; }
[[ -s $body ]] || { echo 'fixture extraction: empty run body' >&2; exit 1; }
bash -n "$body"
body_sha=$(sha256sum "$body" | awk '{print $1}')
printf 'WORKFLOW_BLOB=%s\nBODY_SHA256=%s\n' "$workflow_blob" "$body_sha" >>"$log"

wrapper_dir="$work_dir/bin"
mkdir "$wrapper_dir"
cat >"$wrapper_dir/git" <<'WRAPPER'
#!/usr/bin/env bash
set -u
printf '%q ' "$@" >>"${FIXTURE_GIT_LOG:?}"
printf '\n' >>"${FIXTURE_GIT_LOG:?}"
kind=${FIXTURE_FAULT:-}
match=0
case "$kind" in
  rev-parse) [[ ${1:-} == rev-parse && ${2:-} == --verify ]] && match=1 ;;
  cat-file-commit|cat-file-commit-malformed-plus-74|cat-file-empty|cat-file-truncated|cat-file-malformed|cat-file-malformed-parent) [[ ${1:-} == cat-file && ${2:-} == commit ]] && match=1 ;;
  cat-file-parent) [[ ${1:-} == cat-file && ${2:-} == -e ]] && match=1 ;;
  diff) [[ ${1:-} == diff && ${2:-} == --check ]] && match=1 ;;
  diff-tree) [[ ${1:-} == diff-tree && ${2:-} == --check ]] && match=1 ;;
esac
if (( match )); then
  if [[ ${FIXTURE_PLAUSIBLE:-0} == 1 ]]; then
    case "$kind" in
      rev-parse) printf '%s\n' "${FIXTURE_PLAUSIBLE_OID:-0123456789012345678901234567890123456789}" ;;
      cat-file-commit) printf 'tree 0123456789012345678901234567890123456789\nauthor a <a@b> 0 +0000\ncommitter a <a@b> 0 +0000\n\nmessage\n' ;;
      cat-file-commit-malformed-plus-74) printf 'tree not-an-object-id\n\nmessage\n' ;;
      cat-file-empty) : ;;
      cat-file-truncated) printf 'tree 0123456789012345678901234567890123456789\nauthor a <a@b> 0 +0000\n' ;;
      cat-file-malformed) printf 'tree not-an-object-id\n\nmessage\n' ;;
      cat-file-malformed-parent) printf 'tree 0123456789012345678901234567890123456789\nparent not-a-valid-oid\nauthor a <a@b> 0 +0000\ncommitter a <a@b> 0 +0000\n\nmessage\n' ;;
      *) printf 'plausible inspection output\n' ;;
    esac
  fi
  exit "${FIXTURE_FAULT_RC:-74}"
fi
exec "${FIXTURE_REAL_GIT:?}" "$@"
WRAPPER
chmod +x "$wrapper_dir/git"

init_repo() {
  local path=$1
  git init -q "$path"
  git -C "$path" config user.name Fixture
  git -C "$path" config user.email fixture@example.invalid
}
commit_file() {
  local path=$1 content=$2 message=$3
  printf '%b' "$content" >"$path/file.txt"
  git -C "$path" add file.txt
  GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' git -C "$path" commit -q -m "$message"
}
inventory() {
  local path=$1 label=$2
  {
    printf '[%s] HEAD=' "$label"
    if git -C "$path" rev-parse HEAD; then :; else inventory_status=$?; printf 'HEAD-resolve-exit=%s\n' "$inventory_status"; fi
    if git -C "$path" cat-file -e 'HEAD^{commit}'; then
      if git -C "$path" show -s --format='parents=%P tree=%T' HEAD; then :; else inventory_status=$?; printf 'HEAD-metadata-display-exit=%s\n' "$inventory_status"; fi
      if git -C "$path" cat-file -p HEAD | sed -n '1,/^$/p'; then :; else inventory_status=$?; printf 'HEAD-raw-display-exit=%s\n' "$inventory_status"; fi
    else
      inventory_status=$?
      printf 'HEAD-commit-type=unavailable-or-invalid exit=%s\n' "$inventory_status"
    fi
    printf 'shallow='; git -C "$path" rev-parse --is-shallow-repository
    test -f "$path/.git/shallow" && { printf 'shallow-bytes='; od -An -tx1 "$path/.git/shallow"; } || echo 'shallow-bytes=absent'
    if git -C "$path" for-each-ref --format='ref=%(refname):%(objectname)'; then :; else inventory_status=$?; printf 'ref-inventory-exit=%s\n' "$inventory_status"; fi
    if git -C "$path" status --porcelain=v1 --untracked-files=all --ignored; then :; else inventory_status=$?; printf 'status-inventory-exit=%s\n' "$inventory_status"; fi
  } >>"$log" 2>&1
}
run_body() {
  local id=$1 path=$2 expected=$3 fault=${4:-} plausible=${5:-0} fault_rc=${6:-74}
  local case_dir="$work_dir/$id"
  mkdir "$case_dir"
  inventory "$path" "$id-before"
  set +e
  (
    cd "$path"
    FIXTURE_REAL_GIT="$real_git" FIXTURE_GIT_LOG="$case_dir/git.log" FIXTURE_FAULT="$fault" \
      FIXTURE_PLAUSIBLE="$plausible" FIXTURE_FAULT_RC="$fault_rc" PATH="$wrapper_dir:$PATH" bash "$body"
  ) >"$case_dir/stdout" 2>"$case_dir/stderr"
  rc=$?
  set -e
  inventory "$path" "$id-after"
  {
    printf '\nCASE %s expected=%s rc=%s\n' "$id" "$expected" "$rc"
    if [[ -n $fault ]]; then
      printf 'fault: kind=%s plausible=%s forced-exit=%s\n' "$fault" "$plausible" "$fault_rc"
    fi
    sed 's/^/git: /' "$case_dir/git.log" 2>/dev/null || :
    sed 's/^/stdout: /' "$case_dir/stdout"
    sed 's/^/stderr: /' "$case_dir/stderr"
    if [[ $expected == inspection74 ]]; then
      printf 'assertion: inspection exit 74 was handled before commit metadata parsing; no whitespace checker was invoked\n'
    fi
  } >>"$log"
  case "$expected" in
    pass) [[ $rc == 0 ]] ;;
    fail) [[ $rc != 0 ]] ;;
    stop) [[ $rc != 0 ]] && grep -Fq 'STOP: cannot establish Git parentage' "$case_dir/stderr" && ! grep -Eq '(^| )diff(-tree)? ' "$case_dir/git.log" ;;
    rc74) [[ $rc == 74 ]] ;;
    inspection74) [[ $rc == 74 ]] && grep -Fq 'cannot read HEAD commit metadata (exit 74)' "$case_dir/stderr" && ! grep -Eq '(^| )diff(-tree)? ' "$case_dir/git.log" ;;
    root) [[ $rc == 0 ]] && grep -Fq 'diff-tree --check' "$case_dir/git.log" && ! grep -Fq 'diff --check' "$case_dir/git.log" ;;
    parent) [[ $rc == 0 ]] && grep -Fq 'diff --check' "$case_dir/git.log" && ! grep -Fq 'diff-tree --check' "$case_dir/git.log" ;;
  esac
}

# T01/T02/T13: genuine roots, including a shallow root boundary and a message
# that resembles a parent header.
root_clean="$work_dir/root-clean"; init_repo "$root_clean"; commit_file "$root_clean" 'clean\n' root
run_body T01 "$root_clean" root
root_bad="$work_dir/root-bad"; init_repo "$root_bad"; commit_file "$root_bad" 'bad \n' root
run_body T02 "$root_bad" fail
root_message="$work_dir/root-message"; init_repo "$root_message"; commit_file "$root_message" 'clean\n' $'root\nparent 0123456789012345678901234567890123456789'
root_remote="$work_dir/root.git"; $real_git init -q --bare "$root_remote"; $real_git -C "$root_message" remote add origin "file://$root_remote"; $real_git -C "$root_message" push -q origin HEAD:main
root_shallow="$work_dir/root-shallow"; $real_git clone -q --no-local --depth 1 --branch main "file://$root_remote" "$root_shallow"
run_body T13-shallow-root "$root_shallow" root

# T03/T04 ordinary linear commits.
ordinary_clean="$work_dir/ordinary-clean"; init_repo "$ordinary_clean"; commit_file "$ordinary_clean" 'base\n' base; commit_file "$ordinary_clean" 'child\n' child
run_body T03 "$ordinary_clean" parent
ordinary_bad="$work_dir/ordinary-bad"; init_repo "$ordinary_bad"; commit_file "$ordinary_bad" 'base\n' base; commit_file "$ordinary_bad" 'child \n' child
run_body T04 "$ordinary_bad" fail

# T05/T06: each actual inspection fails, then repeats with plausible stdout.
for inspection in rev-parse cat-file-commit cat-file-parent; do
  run_body "T05-$inspection" "$ordinary_clean" stop "$inspection" 0
  if [[ $inspection == cat-file-commit ]]; then
    # Complete-looking commit metadata plus rc 74 must stop before parsing.
    run_body "T06-$inspection" "$ordinary_clean" inspection74 "$inspection" 1
  else
    run_body "T06-$inspection" "$ordinary_clean" stop "$inspection" 1
  fi
done
# A malformed but plausible commit stream with exit 74 must stop on that status
# before metadata parsing can select a malformed-header failure path.
run_body T06-cat-file-commit-malformed-plus-74 "$ordinary_clean" inspection74 cat-file-commit-malformed-plus-74 1
run_body T06-malformed-metadata "$ordinary_clean" stop cat-file-malformed 1 0

# T07: invalid HEAD plus successful empty, truncated, malformed-tree, and
# malformed-parent commit metadata outputs are rejected before either checker.
invalid_head="$work_dir/invalid-head"; init_repo "$invalid_head"; printf x >"$invalid_head/blob"; blob=$($real_git -C "$invalid_head" hash-object -w blob)
printf '%s\n' "$blob" >"$invalid_head/.git/HEAD"
run_body T07-invalid-head "$invalid_head" stop
run_body T07-empty-commit-output "$ordinary_clean" stop cat-file-empty 1 0
run_body T07-truncated-commit-output "$ordinary_clean" stop cat-file-truncated 1 0
run_body T07-malformed-commit-output "$ordinary_clean" stop cat-file-malformed 1 0
run_body T07-malformed-parent-output "$ordinary_clean" stop cat-file-malformed-parent 1 0

# T08/T09: local file:// depth-2 and depth-1 checkouts.
remote="$work_dir/remote.git"; $real_git init -q --bare "$remote"
upstream="$work_dir/upstream"; init_repo "$upstream"; commit_file "$upstream" 'one\n' one; commit_file "$upstream" 'two\n' two; commit_file "$upstream" 'three\n' three; $real_git -C "$upstream" remote add origin "file://$remote"; $real_git -C "$upstream" push -q origin HEAD:main
depth2="$work_dir/depth2"; $real_git clone -q --no-local --depth 2 --branch main "file://$remote" "$depth2"
run_body T08-depth2-linear "$depth2" parent
fetch_depth2="$work_dir/fetch-depth2"; init_repo "$fetch_depth2"; $real_git -C "$fetch_depth2" remote add origin "file://$remote"; $real_git -C "$fetch_depth2" fetch -q --no-tags --depth=2 origin main; $real_git -C "$fetch_depth2" checkout -q --detach FETCH_HEAD
run_body T08-depth2-fetch-detached "$fetch_depth2" parent
depth1="$work_dir/depth1"; $real_git clone -q --no-local --depth 1 --branch main "file://$remote" "$depth1"
run_body T09 "$depth1" stop

# T10: independently fetch the recorded parent into the depth-1 object database.
parent=$($real_git -C "$upstream" rev-parse HEAD^)
$real_git -C "$depth1" fetch -q --depth=1 origin "$parent"
run_body T10 "$depth1" parent

# A later depth-2 checkout confirms that the checker itself still rejects whitespace.
commit_file "$upstream" 'four \n' bad; $real_git -C "$upstream" push -q origin HEAD:main
depth2_bad="$work_dir/depth2-bad"; $real_git clone -q --no-local --depth 2 --branch main "file://$remote" "$depth2_bad"
run_body T08-depth2-whitespace "$depth2_bad" fail

# T11 selected whitespace checker faults retain its exact status.
run_body T11-parent "$ordinary_clean" rc74 diff
run_body T11-root "$root_clean" rc74 diff-tree

# T12: two-parent merge and a depth-2 file:// checkout of that merge.
merge_repo="$work_dir/merge"; init_repo "$merge_repo"; commit_file "$merge_repo" 'base\n' base
main_branch=$($real_git -C "$merge_repo" symbolic-ref --short HEAD)
$real_git -C "$merge_repo" branch side
printf 'main\n' >"$merge_repo/main.txt"; $real_git -C "$merge_repo" add main.txt; GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_repo" commit -q -m main
$real_git -C "$merge_repo" checkout -q side; printf 'side\n' >"$merge_repo/side.txt"; $real_git -C "$merge_repo" add side.txt; GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_repo" commit -q -m side
$real_git -C "$merge_repo" checkout -q "$main_branch"
GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_repo" merge -q --no-ff side -m merge
run_body T12-merge "$merge_repo" parent
merge_remote="$work_dir/merge.git"; $real_git init -q --bare "$merge_remote"; $real_git -C "$merge_repo" remote add origin "file://$merge_remote"; $real_git -C "$merge_repo" push -q origin HEAD:main
merge_depth2="$work_dir/merge-depth2"; $real_git clone -q --no-local --depth 2 --branch main "file://$merge_remote" "$merge_depth2"
run_body T12-depth2-pr-merge "$merge_depth2" parent
merge_bad="$work_dir/merge-bad"; init_repo "$merge_bad"; commit_file "$merge_bad" 'base\n' base; bad_branch=$($real_git -C "$merge_bad" symbolic-ref --short HEAD); $real_git -C "$merge_bad" branch side
printf 'main\n' >"$merge_bad/main.txt"; $real_git -C "$merge_bad" add main.txt; GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_bad" commit -q -m main
$real_git -C "$merge_bad" checkout -q side; printf 'side \n' >"$merge_bad/side.txt"; $real_git -C "$merge_bad" add side.txt; GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_bad" commit -q -m side
$real_git -C "$merge_bad" checkout -q "$bad_branch"; GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_bad" merge -q --no-ff side -m merge
run_body T12-merge-whitespace "$merge_bad" fail

# T14: isolated commit objects name unavailable and existing-non-commit parents;
# no shared object is removed.
isolated="$work_dir/isolated"; init_repo "$isolated"
tree=$($real_git -C "$isolated" mktree </dev/null)
missing_parent=0123456789012345678901234567890123456789
constructed=$(printf 'tree %s\nparent %s\nauthor Fixture <fixture@example.invalid> 0 +0000\ncommitter Fixture <fixture@example.invalid> 0 +0000\n\nconstructed\n' "$tree" "$missing_parent" | $real_git -C "$isolated" hash-object -t commit -w --stdin)
$real_git -C "$isolated" update-ref HEAD "$constructed"
run_body T14 "$isolated" stop
existing_blob=$(printf 'not a commit\n' | $real_git -C "$isolated" hash-object -w --stdin)
blob_parent_commit=$(printf 'tree %s\nparent %s\nauthor Fixture <fixture@example.invalid> 0 +0000\ncommitter Fixture <fixture@example.invalid> 0 +0000\n\nblob-parent\n' "$tree" "$existing_blob" | $real_git -C "$isolated" hash-object -t commit -w --stdin)
$real_git -C "$isolated" update-ref HEAD "$blob_parent_commit"
run_body T14-existing-blob-parent "$isolated" stop

printf '\nRESULT=PASS T01-T14\n' >>"$log"
if [[ -n $evidence_output ]]; then
  cp "$log" "$evidence_output"
fi
cat "$log"
