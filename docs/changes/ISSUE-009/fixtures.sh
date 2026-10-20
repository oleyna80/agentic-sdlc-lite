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
printf 'SOURCE=%s\nGIT=%s\nBASH=%s\nWORK=%s\n' "$source_sha" "$($real_git --version)" "$BASH_VERSION" "$work_dir" >"$log"

# Extract exactly one literal YAML run block; no implementation is copied here.
git -C "$repo_root" show "$source_sha:$workflow" >"$work_dir/workflow.yml"
workflow_blob=$(git -C "$repo_root" rev-parse "$source_sha:$workflow")
step_count=$(grep -Fxc '      - name: Check introduced whitespace errors' "$work_dir/workflow.yml" || true)
[[ $step_count == 1 ]] || { printf 'fixture extraction: expected one named step, got %s\n' "$step_count" >&2; exit 1; }
awk '
  $0 == "      - name: Check introduced whitespace errors" { wanted=1; next }
  wanted && $0 == "        run: |" { run=1; next }
  wanted && !run { exit 2 }
  run && /^      - / { exit }
  run {
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
  cat-file-commit) [[ ${1:-} == cat-file && ${2:-} == commit ]] && match=1 ;;
  cat-file-parent) [[ ${1:-} == cat-file && ${2:-} == -e ]] && match=1 ;;
  diff) [[ ${1:-} == diff && ${2:-} == --check ]] && match=1 ;;
  diff-tree) [[ ${1:-} == diff-tree && ${2:-} == --check ]] && match=1 ;;
esac
if (( match )); then
  if [[ ${FIXTURE_PLAUSIBLE:-0} == 1 ]]; then
    case "$kind" in
      rev-parse) printf '%s\n' "${FIXTURE_PLAUSIBLE_OID:-0123456789012345678901234567890123456789}" ;;
      cat-file-commit) printf 'tree 0123456789012345678901234567890123456789\nauthor a <a@b> 0 +0000\ncommitter a <a@b> 0 +0000\n\nmessage\n' ;;
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
    printf '[%s] HEAD=' "$label"; git -C "$path" rev-parse HEAD
    git -C "$path" show -s --format='parents=%P tree=%T' HEAD
    git -C "$path" cat-file -p HEAD | sed -n '1,/^$/p'
    printf 'shallow='; git -C "$path" rev-parse --is-shallow-repository
    test -f "$path/.git/shallow" && { printf 'shallow-bytes='; od -An -tx1 "$path/.git/shallow"; } || echo 'shallow-bytes=absent'
    git -C "$path" for-each-ref --format='ref=%(refname):%(objectname)'
    git -C "$path" status --porcelain=v1 --untracked-files=all --ignored
  } >>"$log"
}
run_body() {
  local id=$1 path=$2 expected=$3 fault=${4:-} plausible=${5:-0}
  local case_dir="$work_dir/$id"
  mkdir "$case_dir"
  inventory "$path" "$id-before"
  set +e
  (
    cd "$path"
    FIXTURE_REAL_GIT="$real_git" FIXTURE_GIT_LOG="$case_dir/git.log" FIXTURE_FAULT="$fault" \
      FIXTURE_PLAUSIBLE="$plausible" FIXTURE_FAULT_RC=74 PATH="$wrapper_dir:$PATH" bash "$body"
  ) >"$case_dir/stdout" 2>"$case_dir/stderr"
  rc=$?
  set -e
  inventory "$path" "$id-after"
  {
    printf '\nCASE %s expected=%s rc=%s\n' "$id" "$expected" "$rc"
    sed 's/^/git: /' "$case_dir/git.log" 2>/dev/null || :
    sed 's/^/stdout: /' "$case_dir/stdout"
    sed 's/^/stderr: /' "$case_dir/stderr"
  } >>"$log"
  case "$expected" in
    pass) [[ $rc == 0 ]] ;;
    fail) [[ $rc != 0 ]] ;;
    stop) [[ $rc != 0 ]] && grep -Fq 'STOP: cannot establish Git parentage' "$case_dir/stderr" && ! grep -Eq '(^| )diff(-tree)? ' "$case_dir/git.log" ;;
    rc74) [[ $rc == 74 ]] ;;
    root) [[ $rc == 0 ]] && grep -Fq 'diff-tree --check' "$case_dir/git.log" && ! grep -Fq 'diff --check' "$case_dir/git.log" ;;
    parent) [[ $rc == 0 ]] && grep -Fq 'diff --check' "$case_dir/git.log" && ! grep -Fq 'diff-tree --check' "$case_dir/git.log" ;;
  esac
}

# T01/T02/T13: genuine roots, including a message that resembles a parent header.
root_clean="$work_dir/root-clean"; init_repo "$root_clean"; commit_file "$root_clean" 'clean\n' root
run_body T01 "$root_clean" root
root_bad="$work_dir/root-bad"; init_repo "$root_bad"; commit_file "$root_bad" 'bad \n' root
run_body T02 "$root_bad" fail
root_message="$work_dir/root-message"; init_repo "$root_message"; commit_file "$root_message" 'clean\n' $'root\nparent 0123456789012345678901234567890123456789'
run_body T13 "$root_message" root

# T03/T04 ordinary linear commits.
ordinary_clean="$work_dir/ordinary-clean"; init_repo "$ordinary_clean"; commit_file "$ordinary_clean" 'base\n' base; commit_file "$ordinary_clean" 'child\n' child
run_body T03 "$ordinary_clean" parent
ordinary_bad="$work_dir/ordinary-bad"; init_repo "$ordinary_bad"; commit_file "$ordinary_bad" 'base\n' base; commit_file "$ordinary_bad" 'child \n' child
run_body T04 "$ordinary_bad" fail

# T05/T06: each actual inspection fails, then repeats with plausible stdout.
for inspection in rev-parse cat-file-commit cat-file-parent; do
  run_body "T05-$inspection" "$ordinary_clean" stop "$inspection" 0
  run_body "T06-$inspection" "$ordinary_clean" stop "$inspection" 1
done

# T07: invalid HEAD and an invalid object type are rejected before either checker.
invalid_head="$work_dir/invalid-head"; init_repo "$invalid_head"; printf x >"$invalid_head/blob"; blob=$($real_git -C "$invalid_head" hash-object -w blob)
$real_git -C "$invalid_head" update-ref HEAD "$blob"
run_body T07-invalid-head "$invalid_head" stop

# T08/T09: local file:// depth-2 and depth-1 checkouts.
remote="$work_dir/remote.git"; $real_git init -q --bare "$remote"
upstream="$work_dir/upstream"; init_repo "$upstream"; commit_file "$upstream" 'one\n' one; commit_file "$upstream" 'two\n' two; commit_file "$upstream" 'three\n' three; $real_git -C "$upstream" remote add origin "file://$remote"; $real_git -C "$upstream" push -q origin HEAD:main
depth2="$work_dir/depth2"; $real_git clone -q --no-local --depth 2 --branch main "file://$remote" "$depth2"
run_body T08-depth2-linear "$depth2" parent
depth1="$work_dir/depth1"; $real_git clone -q --no-local --depth 1 --branch main "file://$remote" "$depth1"
run_body T09 "$depth1" stop

# T10: independently fetch the recorded parent into the depth-1 object database.
parent=$($real_git -C "$upstream" rev-parse HEAD^)
$real_git -C "$depth1" fetch -q --depth=1 origin "$parent"
run_body T10 "$depth1" parent

# T11 selected whitespace checker faults retain its exact status.
run_body T11-parent "$ordinary_clean" rc74 diff
run_body T11-root "$root_clean" rc74 diff-tree

# T12: two-parent merge and a depth-2 file:// checkout of that merge.
merge_repo="$work_dir/merge"; init_repo "$merge_repo"; commit_file "$merge_repo" 'base\n' base
$real_git -C "$merge_repo" branch side
commit_file "$merge_repo" 'main\n' main
$real_git -C "$merge_repo" checkout -q side; commit_file "$merge_repo" 'side\n' side
$real_git -C "$merge_repo" checkout -q master
GIT_AUTHOR_DATE='2000-01-01T00:00:00Z' GIT_COMMITTER_DATE='2000-01-01T00:00:00Z' $real_git -C "$merge_repo" merge -q --no-ff side -m merge
run_body T12-merge "$merge_repo" parent
merge_remote="$work_dir/merge.git"; $real_git init -q --bare "$merge_remote"; $real_git -C "$merge_repo" remote add origin "file://$merge_remote"; $real_git -C "$merge_repo" push -q origin HEAD:main
merge_depth2="$work_dir/merge-depth2"; $real_git clone -q --no-local --depth 2 --branch main "file://$merge_remote" "$merge_depth2"
run_body T12-depth2-pr-merge "$merge_depth2" parent

# T14: isolated commit object names an unavailable parent; no shared object is removed.
isolated="$work_dir/isolated"; init_repo "$isolated"
tree=$($real_git -C "$isolated" mktree </dev/null)
missing_parent=0123456789012345678901234567890123456789
constructed=$(printf 'tree %s\nparent %s\nauthor Fixture <fixture@example.invalid> 0 +0000\ncommitter Fixture <fixture@example.invalid> 0 +0000\n\nconstructed\n' "$tree" "$missing_parent" | $real_git -C "$isolated" hash-object -t commit -w --stdin)
$real_git -C "$isolated" update-ref HEAD "$constructed"
run_body T14 "$isolated" stop

printf '\nRESULT=PASS T01-T14\n' >>"$log"
if [[ -n $evidence_output ]]; then
  cp "$log" "$evidence_output"
fi
cat "$log"
