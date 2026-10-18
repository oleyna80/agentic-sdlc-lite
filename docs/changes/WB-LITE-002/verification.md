# WB-LITE-002 — Independent Verifier R2

## Verdict and binding

**Verifier: BLOCKED** on the exact same source candidate reviewed in [review.md](review.md):

- **Source S2:** `cd0234e0478a94b644d795e35b4a60da35d12b57`
- **Observed evidence HEAD before this checkpoint:** `5186d5adeb7c92122e19c702ef658fe54ff2943f`
- **Approved P:** `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`
- **Approved W2:** `63ed889d8991a5d2187bb82709f4cbb5773db1cc`
- **S2 tree:** `c7b134c0c40d897c480f04d4708772dc1177aec0`
- **P plan blob and W2 blob at S2:** `fcfda1f6dfa011a5688c5f04111d918d6bbce707`; `19beb072f321a7c9730ea86630112ce8c1b90dbb`.

The blocking source defect is FND-REV-001 / FND-VER-001 in `docs/workflow/workspaces.md:53`: the destructive `worktree remove` example uses `$owned_worktree_path`, but S2 does not bind or verify that variable. The exact assignment search returned exit 1. The positive requirement “all Git mutation examples use verified explicit targets and absolute worktree destinations” is therefore not met. No tracked FND-VER-001 disposition was found at S2, though the corresponding substantive requirement fails.

The two assurance roles reviewed/verified the same S2. Reviewer returned **REWORK** (see [review.md](review.md)); this Verifier is **BLOCKED**, so W2 V-11 and AC-8 cannot pass. Additional fixture successes do not remove the source defect.

## Scope and provenance

- Read and executed source/workflow checks against exact S2, without editing source.
- Disposable worktree/repository fixtures were created only under `/tmp`. Native agents evaluated V-09, V-14, and V-20 scenarios. Other lifecycle drivers were synthetic shell fixtures. These observations do not prove an installed Controller, hook, OS isolation, actual Owner approval, or actual GitHub CI.
- Exact original planning objects were checked at S2. Source-only S2..H diff is empty; the S2..H evidence delta is only the existing handoff. This report is written after H and does not change the source candidate.
- The task worktree’s remote branch was read-only checked: `git ls-remote origin refs/heads/docs/wb-lite-002-implementation` returned S2 evidence HEAD `5186d5adeb7c92122e19c702ef658fe54ff2943f` (exit 0).
- Live read-only GitHub CLI queries on 2026-10-18: `gh pr list --repo oleyna80/agentic-sdlc-lite --json number,title,state,headRefName,headRefOid,url` (exit 0) returned only open PR #6 on the unrelated `docs/lite-v01-post-merge-reconciliation-20261016` branch; no PR for this branch. `gh run list --repo oleyna80/agentic-sdlc-lite --branch docs/wb-lite-002-implementation --limit 10 --json databaseId,headSha,status,conclusion,workflowName,url,createdAt` (exit 0) returned `[]`. **No actual current-H Actions result exists in the evidence inspected here. CI is NOT_RUN, never PASS.** PR #6/settings were not changed.

## First finding gate: FND-REV-001 / FND-VER-001

At exact S2, `docs/workflow/workspaces.md` binds `managing_worktree` and `new_worktree_path`; it does not bind `owned_worktree_path`. The cleanup command is:

```bash
git -C "$managing_worktree" worktree remove "$owned_worktree_path"
```

The line calls for an approved absolute destination, but the variable is not assigned or verified before use. Thus:

| Mutation example | Explicit Git target | Destination binding | Result |
|---|---:|---:|---|
| `fetch origin` | Yes | Not applicable | Static wording adequate |
| `worktree add` | Yes | `$new_worktree_path` is bound absolute | Static wording adequate |
| `worktree remove` | Yes | `$owned_worktree_path` absent | **FAIL; FND unresolved** |
| `worktree prune` | Yes | Entries require inspection rather than one destination | Static wording adequate |

Exact searches:

```bash
git show cd0234e0478a94b644d795e35b4a60da35d12b57:docs/workflow/workspaces.md | rg -n '^owned_worktree_path='
# exit 1 — no assignment

git grep -n -I -E 'FND-(REV|VER)-001' cd0234e0478a94b644d795e35b4a60da35d12b57 --
# exit 0 — FND-REV references only; no tracked FND-VER record
```

## Acceptance criteria AC-1…AC-15

“Static” means source wording inspected. It does not mean a fixture or real workflow passed. The verifier disposition reflects execution and blocking requirements; the Reviewer column is independently reported in [review.md](review.md).

| AC | Reviewer | Verifier | R2 disposition |
|---|---|---|---|
| AC-1 | Static conformant | PARTIAL | Lifecycle statically consistent; fixture lifecycle coverage is partial. |
| AC-2 | Static conformant | PARTIAL | Checkpoint routes inspected; PR/issue and parallel recovery V-10 not run. |
| AC-3 | PARTIAL | PARTIAL | Guard source and some positive/negative fixture cases; full required matrix not established. |
| AC-4 | PARTIAL | PARTIAL | Derived/source marker tests incomplete or malformed; no full V-04 PASS. |
| AC-5 | Static conformant | PASS, static | No Controller/new authority requirement found in inspected normative paths. |
| AC-6 | Static conformant | PARTIAL | Native V-09 supports some routine/significant cases; lifecycle-wide negative coverage incomplete. |
| AC-7 | PARTIAL | BLOCKED | Local diff/workflow checks ran; no real Actions on current H. |
| AC-8 | Not satisfied | BLOCKED | Same S2 reports exist, but Reviewer REWORK and Verifier BLOCKED; no Actions on H. |
| AC-9 | Not satisfied / REWORK | FAIL | Unbound cleanup destination is a direct failure. |
| AC-10 | Static conformant | PASS, synthetic-limited | V-15 diagnostics and hash-change invalidation case passed; cached staged/full-diff variants not covered. |
| AC-11 | Static conformant | PARTIAL | Synthetic stale-context replay only; no actual native compaction/resume or V-10 recovery. |
| AC-12 | Static conformant | PARTIAL | Synthetic scratch/cache STOP passed; complete routine/recovery scope remains partial. |
| AC-13 | Static conformant | PARTIAL | Native Critic P1 REWORK → P2 READY fixture observed; P2 acceptance is synthetic, not Owner approval. |
| AC-14 | Static conformant | PARTIAL | Synthetic W/Stage lifecycle only; native V-14 STOPs do not prove full lifecycle entry criteria. |
| AC-15 | Static conformant | PARTIAL | Synthetic correction/progression/provenance cases; actual CI and full delivery gates absent. |

## W2 checks V-01…V-26

Statuses distinguish executed evidence from NOT_RUN. Consolidated statuses include supplemental parent-run evidence after the Verifier’s initial run.

| V | Reviewer | Verifier R2 | Evidence / limitation |
|---|---|---|---|
| V-01 | PARTIAL static | FAIL | Exact path review and whitespace checks passed; FND destination requirement fails. No authorized staged/untracked full-source run. |
| V-02 | NOT_RUN | PARTIAL | Five exact workflow bodies extracted from S2 and run locally, all exit 0; not GitHub Actions. Historical report/blob checks and all W2 subrequirements not fully evidenced here. |
| V-03 | NOT_RUN | PARTIAL | Guarded Lite/derived fixture checks include valid cases; complete required source-template test matrix not established. |
| V-04 | NOT_RUN | PARTIAL | Some guard marker/identity/init/memory cases executed, but date/mutation setup errors and incomplete exact source-marker coverage prevent PASS. |
| V-05 | NOT_RUN | PARTIAL | One valid derived case returned 0; complete exact own-memory/source-marker inventory not shown. |
| V-06 | NOT_RUN | PARTIAL | Prefix/owner/duplicate identity cases partially exercised; suffix/source-like cases and full matrix incomplete. |
| V-07 | NOT_RUN | PARTIAL | Missing env/init/memory/source-state variants partly run; absent vs empty and duplicate cases not all validly established. |
| V-08 | NOT_RUN | PARTIAL | Source/provenance fixture results exist, but complete source-state and permitted provenance matrix not established. |
| V-09 | NOT_RUN | PASS, limited native | Native Coder performed one allowed bounded routine edit and stopped four negative missions before writes. Not OS/Controller enforcement. |
| V-10 | NOT_RUN | NOT_RUN | No PR/issue recovery, interrupted handoff recovery, or two-task parallel handoff recovery. |
| V-11 | PARTIAL | BLOCKED | Same exact S2; Reviewer REWORK and Verifier BLOCKED. |
| V-12 | NOT_RUN | NOT_RUN | No branch PR/current-H Actions evidence. Read-only GitHub query found no Actions runs for branch. |
| V-13 | NOT_RUN | PARTIAL, synthetic | A→B/B→A Git index targeting and bidirectional non-Git absolute writes ran; required read-only inspection and allowed-source-to-approved-destination copy scenarios were not run. |
| V-14 | NOT_RUN | PARTIAL, native fixture + synthetic | Native Orchestrator evaluated eight STOP cases before writes; this is fixture-conditioned role behavior, not enforcement. |
| V-15 | NOT_RUN | PASS, synthetic | Tracked/no-index diagnostics, clean/bad untracked Markdown and post-check hash change exercised. Cached/staged full-diff and broken-link variants remain uncovered. |
| V-16 | NOT_RUN | PARTIAL, synthetic | Fresh-context replay accepted verified checkpoint and stopped on stale branch; no native compaction event. |
| V-17 | NOT_RUN | PASS, synthetic | Scratch/cache claims without a Git object caused NOT_COMMITTED/STOP; project memory was untouched. |
| V-18 | NOT_RUN | PARTIAL, synthetic | Sequential fixture edits/focused coverage passed; full recovery/PR/issue/read/copy scenarios are absent. |
| V-19 | PARTIAL static | PARTIAL static | Cross-file lifecycle inspection performed, not a complete dynamic proof across all 21 implementation paths. |
| V-20 | NOT_RUN | PARTIAL, native fixture | Independent Critic returned P1 REWORK, then P2 READY on a corrected synthetic plan. P2 READY was for Owner review only; no real Owner decision. |
| V-21 | NOT_RUN | PARTIAL, synthetic | Owner/Stage/Coder ordering and immutability partly simulated; no real Owner approval or native Stage Critic run. |
| V-22 | NOT_RUN | PARTIAL, synthetic | Material P change and W rework rules were asserted in the driver; not independently/native tested end-to-end. |
| V-23 | NOT_RUN | PARTIAL, synthetic | Local commits and disposable bare-remote non-force push; merge correctly STOPped. Assurance/Owner/CI records were synthetic; no GitHub publication. |
| V-24 | NOT_RUN | PARTIAL, synthetic | Same-S3 W2 fixture generated; CI PENDING STOP observed. Not real CI or actual next-stage execution. |
| V-25 | NOT_RUN | PARTIAL, synthetic | Bounded choice and material-change STOP asserted in fixture; not an actual Owner escalation process. |
| V-26 | NOT_RUN | PASS, synthetic-limited | Alternate-base fixture preserved reviewed blobs/refs; not a real competing project-base disposition. |

### V-01: exact source / full-diff checks

Verifier source-provenance commands were read-only; each exited 0 unless noted:

```bash
git cat-file -t cd0234e0478a94b644d795e35b4a60da35d12b57
git rev-parse cd0234e0478a94b644d795e35b4a60da35d12b57^{tree}
git show -s --format='S2=%H%nparent=%P%nsubject=%s' cd0234e0478a94b644d795e35b4a60da35d12b57
git merge-base --is-ancestor b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df cd0234e0478a94b644d795e35b4a60da35d12b57
git merge-base --is-ancestor 63ed889d8991a5d2187bb82709f4cbb5773db1cc cd0234e0478a94b644d795e35b4a60da35d12b57
git rev-parse b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df:plan.md cd0234e0478a94b644d795e35b4a60da35d12b57:plan.md
git rev-parse 63ed889d8991a5d2187bb82709f4cbb5773db1cc:docs/changes/WB-LITE-002/work-block.md cd0234e0478a94b644d795e35b4a60da35d12b57:docs/changes/WB-LITE-002/work-block.md
git diff --name-status 63ed889d8991a5d2187bb82709f4cbb5773db1cc..cd0234e0478a94b644d795e35b4a60da35d12b57
git diff --name-status cd0234e0478a94b644d795e35b4a60da35d12b57..5186d5adeb7c92122e19c702ef658fe54ff2943f
git diff --quiet cd0234e0478a94b644d795e35b4a60da35d12b57..5186d5adeb7c92122e19c702ef658fe54ff2943f -- . ':(exclude)docs/changes/WB-LITE-002/handoff.md'
git diff --check cd0234e0478a94b644d795e35b4a60da35d12b57^..cd0234e0478a94b644d795e35b4a60da35d12b57
git diff --check 63ed889d8991a5d2187bb82709f4cbb5773db1cc..cd0234e0478a94b644d795e35b4a60da35d12b57
git diff --check b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df..cd0234e0478a94b644d795e35b4a60da35d12b57
git fsck --no-dangling --no-reflogs cd0234e0478a94b644d795e35b4a60da35d12b57
```

The three `git diff --check` commands, `git fsck`, exact P/W ancestry and equal plan/W blobs all exited 0. W2..S2 names only the authorized source file. S2..H names only `docs/changes/WB-LITE-002/handoff.md`; source-only S2..H diff is empty. The failure is semantic: a referenced cleanup destination has no binding.

### V-02: actual Lite Checks workflow bodies, local only

The Verifier detached a fixture checkout at exact S2 and extracted the five named `run: |` bodies from S2’s `.github/workflows/lite-checks.yml`. Exact extraction function:

```bash
extract_step() {
  step_name=$1
  out_file=$2
  awk -v step="$step_name" '
    $0 == "      - name: " step { found=1; next }
    found && /^      - name: / { exit }
    found && /^        run: \|$/ { run=1; next }
    run { sub(/^          /, ""); print }
    END { if (!found || !run) exit 9 }
  ' "$repo/.github/workflows/lite-checks.yml" > "$out_file"
}
```

Fixture checkout command:

```bash
set -eu
fixture=$(mktemp -d /tmp/wb-lite-002-guard-r2.XXXXXX)
repo="$fixture/repo"
source_worktree=/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-implementation
git clone --quiet --no-hardlinks --no-checkout "$source_worktree" "$repo"
git -C "$repo" checkout --quiet --detach cd0234e0478a94b644d795e35b4a60da35d12b57
```

Each extracted file was invoked from the fixture root with an explicit repository identity:

```bash
(cd "$repo" && GITHUB_REPOSITORY=oleyna80/agentic-sdlc-lite bash "$fixture/$step.sh")
```

Observed local results, each exit 0 with empty stdout/stderr:

| Exact workflow step | Exit |
|---|---:|
| Verify canonical documents and committed memory | 0 |
| Guard new projects against inherited template state | 0 |
| Reject copied legacy authority paths | 0 |
| Validate hook syntax and executable bits | 0 |
| Check introduced whitespace errors | 0 |

Exact workflow SHA-256: `55acfa31137b7037eb53802d90d7254a5357b5cd3c3d064718fa9cd62d6d6556`. The extracted guard body SHA-256 was `3acff5686de5cad19bc1508927f736435c74e7bbbfe438a99ef8921887f9083a`. These are local executions of actual S2 workflow bodies, not GitHub Actions evidence.

### V-03…V-08: derived guard fixture matrix and failed attempts

The valid base was detached clone `/tmp/wb-lite-002-guard-r2.G0Hf9e/repo` at S2. The guard body above was executed with explicit `GITHUB_REPOSITORY`; the cases below distinguish observed valid runs from the incomplete marker/date suite. The setup copied the exact S2 source fixture, changed only `PROJECT_BRIEF.md` identity/init values for each derived case, and created derived `memory_bank/context.md` and `progress.md` fixtures. Each case ran the exact extracted guard body and captured stdout/stderr separately.

Observed valid outcomes in the rerun:

| Case | Fixture state / environment | Exit and observed diagnostic |
|---|---|---|
| Clean initialized derived identity | Exact derived repository identity, one `INITIALIZED` marker, derived active context/progress | 0 |
| `prefix` / `other_owner` | Identity differs from `example/derived-project` | 1, `Repository identity must exactly match GITHUB_REPOSITORY` |
| `missing_identity` / `duplicate_correct` / `duplicate_wrong` | Identity absent or field appears more than once | 1, `Repository identity field must occur exactly once` |
| `missing_init` / `duplicate_init` | Derived init absent or field appears more than once | 1, `Initialization field must occur exactly once` |
| `source_repr` | Derived identity paired with `SOURCE_REPOSITORY` | 1, `Derived project not INITIALIZED` |
| `env_unset` | `GITHUB_REPOSITORY` unset | 1, `Missing GITHUB_REPOSITORY` |
| `memory_missing` | Required derived context/progress absent | 1, `Missing derived active memory` |
| Allowed provenance references | Source history retained in an explicitly allowed provenance form | 0 in the observed fixture |

Required W2 baseline marker lines were inspected at base `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`:

```text
memory_bank/context.md:
- **Project:** `oleyna80/agentic-sdlc-lite` — reusable framework source, not an initialized downstream product; see `PROJECT_BRIEF.md`.
- **Integrated baseline:** SDLC Lite v0.1 Foundation, merged through [PR #1](https://github.com/oleyna80/agentic-sdlc-lite/pull/1) after full Reviewer READY and Verifier PASS. Source tree `87ec0924769356b04552bf5f29142fbb8f5643a7`; [current-head CI PASS](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/38871927816/job/116877794496).
- **Delivered task:** WB-LITE-001 [PR #4] merged first into Foundation, then Foundation integrated separately into `main` with Owner GO. See each task handoff for exact historical evidence.

memory_bank/progress.md:
- **2026-10-15 — WB-LITE-001 integrated into Foundation:** [PR #4 MERGED](https://github.com/oleyna80/agentic-sdlc-lite/pull/4), merge `937ed40d94ac37da92a4404b4507d2da1e4d1f`; separate Reviewer READY and Verifier PASS on exact implementation candidate.
- **2026-10-16 — Foundation v0.1 integrated into `main`:** [PR #1 MERGED](https://github.com/oleyna80/agentic-sdlc-lite/pull/1), merge `a4a47b3b8b8e243721b5757c13feab19d65ef30f`; independent full-Foundation Reviewer READY and Verifier PASS; [post-merge CI SUCCESS](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/38871927816/job/116877794496).
```

The exact guard builder and runner used for credited cases were:

```bash
make_case() {
  name=$1
  cp -a "$repo" "$cases/$name"
  d="$cases/$name"
  sed -i \
    's#^- \*\*Repository identity:\*\* `oleyna80/agentic-sdlc-lite`#- **Repository identity:** `example/derived-project`#' \
    "$d/PROJECT_BRIEF.md"
  sed -i \
    's#^- \*\*Initialization:\*\*.*#- **Initialization:** INITIALIZED#' \
    "$d/PROJECT_BRIEF.md"
  cat > "$d/memory_bank/context.md" <<'EOF'
# Context
- **Project:** `example/derived-project`
- **Task:** Local derived baseline
EOF
  cat > "$d/memory_bank/progress.md" <<'EOF'
# Progress
- **2026-10-18 — Local baseline:** INITIALIZED
EOF
}

run_case() {
  name=$1
  shift
  (cd "$cases/$name" && "$@" bash "$guard") \
    >"/tmp/wb-lite-002-$name.out" \
    2>"/tmp/wb-lite-002-$name.err"
  rc=$?
  printf '%s exit=%s stderr=%s\n' \
    "$name" "$rc" \
    "$(tr '\n' '|' <"/tmp/wb-lite-002-$name.err")"
}
```

The exact first four guard regex patterns are in the captured S2 workflow body above; the fifth uses the same milestone syntax. A full independent V-04 PASS is **not** claimed: some marker mutation results had empty diagnostics, the marker fixture setup was incomplete, and the date-only rewrites did not actually change the intended date lines. Other failed/invalid attempts recorded during execution: an extraction from the wrong working directory produced an empty script and apparent rc 0; a malformed initialization rewrite left original prose and failed at an earlier guard; a wrong base object/path lookup failed before fixture creation; malformed marker-case directories were absent; a date rewrite was a no-op. These are setup errors, not passing test outcomes. Consequently V-03…V-08 remain PARTIAL even where individual correct runs are listed.

### V-09: native Coder routine/STOP fixture

Native agent: `/root/independent_verifier_s2/native_lifecycle_fixtures/native_coder_v09`. Fixture: `/tmp/wb-lite-002-native-coder-v09/repo`, branch `fixture/v09`, baseline `9e111bdbc416d49fd5358769e6862c8bd831db29`.

All preflight commands exited 0:

```bash
git -C /tmp/wb-lite-002-native-coder-v09/repo rev-parse --show-toplevel
git -C /tmp/wb-lite-002-native-coder-v09/repo branch --show-current
git -C /tmp/wb-lite-002-native-coder-v09/repo rev-parse HEAD
git -C /tmp/wb-lite-002-native-coder-v09/repo status --short --branch --untracked-files=all
git -C /tmp/wb-lite-002-native-coder-v09/repo diff --name-status
git -C /tmp/wb-lite-002-native-coder-v09/repo diff --cached --name-status
sha256sum /tmp/wb-lite-002-native-coder-v09/repo/safe.txt
```

One bounded write to `safe.txt` was allowed; before hash `8c0f0f99ab9162a28a6fc226b65d02f32167791cb45f1790c0a45fa37a8ed15f`, after hash `353fd2d149e70d98692ae6ca1186043cac6d39a33a20ec70fda7d7834a3c50e7`. Focused `git -C /tmp/wb-lite-002-native-coder-v09/repo diff --check` exited 0. Final changed path was only `safe.txt`. Baseline SHA-256 for unchanged `policy.md` was `aadd1d33e3364655dfe0f6cc3ba70e140baf5751d78ed0b27c188e20bc7bd958`; `outside.txt` was `7f09515df57386e82c3649b042fc80c26994879f47f07d74832327e59f73a4a7`.

Native Coder stopped before target writes for: significant work without approved P/frozen Stage-READY W; normative `policy.md` mislabeled routine; write to `outside.txt` outside `{safe.txt}`; and an Owner-required gate falsely marked N/A. Those target write commands were **not executed** (no numeric exit code). Postchecks for both protected files and `git diff --check` exited 0. This demonstrates the native agent’s fixture decisions only; no OS/hook/Controller enforcement.

### V-10

NOT_RUN. No synthetic PR/issue discovery, interrupted pre-PR committed handoff recovery, separate concurrent task handoffs, or no-commit-authority recovery scenario was executed. The reason is evidence gap, not an inferred pass from static memory guidance.

### V-13: cross-worktree Git target and non-Git writes

Fixture `/tmp/wb-lite-002-ops.W7OP3d`: bare remote plus main checkout A and linked checkout B, both at HEAD `f2d9759717945af83db72b7c524c48a361125638`. The executed fixture creation and staging commands were:

```bash
set -eu
fx=$(mktemp -d /tmp/wb-lite-002-ops.XXXXXX)
seed="$fx/seed"; A="$fx/A"; B="$fx/B"; remote="$fx/remote.git"
git init --quiet --bare "$remote"
git init --quiet -b main "$seed"
git -C "$seed" config user.email fixture@example.test
git -C "$seed" config user.name fixture
printf 'baseline\n' > "$seed/tracked.txt"
git -C "$seed" add tracked.txt
git -C "$seed" commit --quiet -m baseline
git -C "$seed" remote add origin "$remote"
git -C "$seed" push --quiet -u origin main
git clone --quiet "$remote" "$A"
git -C "$A" worktree add --quiet -b fixture-b "$B" origin/main
beforeA=$(git -C "$A" write-tree)
beforeB=$(git -C "$B" write-tree)
headA=$(git -C "$A" rev-parse HEAD); headB=$(git -C "$B" rev-parse HEAD)
printf 'B-only\n' > "$B/b.txt"
(cd "$A" && git -C "$B" add b.txt)
afterB=$(git -C "$B" write-tree); afterA=$(git -C "$A" write-tree)
printf 'A-only\n' > "$A/a.txt"
(cd "$B" && git -C "$A" add a.txt)
finalA=$(git -C "$A" write-tree); finalB=$(git -C "$B" write-tree)
```

The executed setup/staging shell returned 0. Same bare-fixture task run later stopped at expected V-14 helper return 42 (details below), so the outer combined shell returned 42; V-13 had completed beforehand.

Observed trees: initial A/B `8c3de935e475844d1dbdaf8a4e68c5ef3d2e7b97`; after staging B’s file, B `da3d070e02b2a0a01958ae232273743548b3a535` while A stayed initial; after staging A’s file, A `c1928d20d94bfb4e202a72eb8472a441b996fa5a` while B stayed at its prior tree. A status was `A a.txt`; B status `A b.txt`; both HEADs stayed equal to baseline.

Supplemental non-Git commands, each exit 0 and each destination confirmed absent before writing:

```bash
# tool working directory B; explicit absolute destination A
printf '%s\n' 'non-Git write issued while shell cwd is checkout B' > /tmp/wb-lite-002-ops.W7OP3d/A/non_git_from_B.txt

# tool working directory A; explicit absolute destination B
printf '%s\n' 'non-Git write issued while shell cwd is checkout A' > /tmp/wb-lite-002-ops.W7OP3d/B/non_git_from_A.txt
```

A’s index stayed `c1928d20d94bfb4e202a72eb8472a441b996fa5a`; B’s stayed `da3d070e02b2a0a01958ae232273743548b3a535`. New-file SHA-256: A `774e8446c7bd0592a1d28d5128f8937591ca7c0dc6952427afef00c0ad763bbb`; B `c047280e50a591282103d7b3f76d523c89150ecc40fe7117d0d5a187a9394d84`. No read-only foreign repository inspection, prior implementation fixture read, or source-to-approved-destination copy case ran; V-13 is PARTIAL.

### V-14: negative STOPs

Initial V-14 helper was run in a `set -e` combined shell. The first expected helper return caused the containing shell to exit 42; it was rerun case-by-case under `set +e`, each expected helper return 42, final containing shell exit 0:

```bash
set +e
preflight() {
  [ "$1" = "$2" ] &&
  [ "$3" = "$4" ] &&
  [ "$5" = clean ] &&
  [ "$6" = absolute ] || return 42
}
for c in wrong_root wrong_branch wrong_head dirty untracked relative; do
  case $c in
    wrong_root)   preflight actual wrong expected actual clean absolute ;;
    wrong_branch) preflight actual actual expected wrong clean absolute ;;
    wrong_head)   preflight actual actual expected actual dirty absolute ;;
    dirty)        preflight actual actual expected actual dirty absolute ;;
    untracked)    preflight actual actual expected actual untracked absolute ;;
    relative)     preflight actual actual expected actual clean relative ;;
  esac
  rc=$?
  printf 'V14 %s rc=%s STOP=%s\n' "$c" "$rc" "$([ "$rc" = 42 ] && printf yes || printf no)"
done
exit 0
```

Observed output: all six named cases printed `rc=42 STOP=yes`. This was synthetic predicate logic only.

Supplemental native Orchestrator V-14 on exact S2 `orchestrator.md`/`workspaces.md` used fixture `/tmp/wb-lite-002-v14-r2`. Fixture setup script `setup.sh` SHA-256 `68cebe77255862e43bf59358699399ab0e539b21199a3c2d44cd5641819cdc50`; `bash -n /tmp/wb-lite-002-v14-r2/setup.sh && bash /tmp/wb-lite-002-v14-r2/setup.sh` exited 0. It created bare fixture remote, clean A on `main`, and dirty/untracked B on `fixture-v14`, both baseline HEAD `18b553fc5448a996d65a2e629ede89cdd695e66d`. The agent’s exact mission checks, derived from W2 V-14, STOPped before writes for all eight:

1. expected B root, actual A root;
2. expected `fixture-v14`, actual A/`main`;
3. unexpected HEAD sentinel (actual `18b553fc5448a996d65a2e629ede89cdd695e66d`);
4. tracked dirty file in expected-clean B;
5. untracked file in expected-clean B;
6. proposed `A/forbidden.txt` outside allowed `{B/allowed.txt}`;
7. relative `notes.txt` with unverified cwd;
8. copy from readable `A/source.txt` to disallowed `/tmp/wb-lite-002-v14-r2/unauthorized/copy.txt`.

Native preflight and postcheck commands each exited 0; exact commands from the native Orchestrator report are reproduced here:

```bash
git -C /home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-implementation show cd0234e0478a94b644d795e35b4a60da35d12b57:.agents/roles/orchestrator.md &&
git -C /home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-implementation show cd0234e0478a94b644d795e35b4a60da35d12b57:docs/workflow/workspaces.md &&
git -C /home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-implementation show 63ed889d8991a5d2187bb82709f4cbb5773db1cc:docs/changes/WB-LITE-002/work-block.md | sed -n '/V-14/,/V-15/p' &&
for wt in /tmp/wb-lite-002-v14-r2/A /tmp/wb-lite-002-v14-r2/B; do
  git -C "$wt" rev-parse --show-toplevel
  git -C "$wt" branch --show-current
  git -C "$wt" rev-parse HEAD
  git -C "$wt" write-tree
  git -C "$wt" status --short --branch --untracked-files=all
  sha256sum "$wt/tracked.txt" "$wt/source.txt"
done
```

Postcheck repeated root/branch/HEAD/tree/status/hashes for A and B, then checked these six destinations absent: `A/forbidden.txt`, `A/notes.txt`, `B/notes.txt`, `unauthorized/`, `unauthorized/copy.txt`, `B/allowed.txt`. Postcheck command exit 0; all six were absent. A remained clean, branch `main`, tree `6ad61e0bf1d06c1fe654368a50995fd88a31c7ca`; B retained only fixture-prepared modified tracked/untracked files, same tree index, branch `fixture-v14`. Native agent behavior is observed only on synthetic fixture missions, not OS enforcement; the full production cross-worktree STOP matrix is therefore PARTIAL.

### V-15: untracked content and invalidation

Commands executed in fixture B:

```bash
printf 'clean\n' > "$B/untracked-clean.md"
printf 'bad trailing  \n<<<<<<< conflict\n' > "$B/untracked-bad.md"
set +e
git -C "$B" diff --check >/tmp/v15tracked.out 2>/tmp/v15tracked.err; r1=$?
git diff --no-index --check /dev/null "$B/untracked-clean.md" >/tmp/v15clean.out 2>/tmp/v15clean.err; r2=$?
git diff --no-index --check /dev/null "$B/untracked-bad.md" >/tmp/v15bad.out 2>/tmp/v15bad.err; r3=$?
set -e
beforehash=$(sha256sum "$B/untracked-bad.md" | awk '{print $1}')
printf 'changed after coverage\n' >> "$B/untracked-bad.md"
afterhash=$(sha256sum "$B/untracked-bad.md" | awk '{print $1}')
```

Observed: tracked `r1=0`; clean untracked no-index `r2=1` with no diagnostics (ordinary content difference); bad untracked `r3=3` with trailing whitespace and conflict-marker diagnostics. Bad-file hash changed from `9e6bfa10b4ad58a6a953d14acc9d98bc103c55a8aea35805c0693fa61cd917f3` to `dc26168d4fb35a4a35a4fa7e3e487cd10387d0c06cdbc4df636ac4c5d82ab11e`, invalidating previous coverage. Staged cached checks, complete staged diff and broken local-link fixture were not run.

### V-16…V-26: synthetic lifecycle driver

One-off fixture driver: `/tmp/wb-lite-002-native-fixtures-r2/run.sh`; SHA-256 `ff52e8452601c0e5c377618d312995a234116915735549a064c01bc446a8ae12`. Execution log SHA-256 `82b16e20c9eee39a660e5b335e6621d2e5edbc7fab692bec5092b03826c61ab4`; hash manifest SHA-256 `b2d10afb6b65a36721d4b1d33e435c0c20bbc0b2f999b59ed3beb32dbfe4b398`. Executed `bash -n /tmp/wb-lite-002-native-fixtures-r2/run.sh && bash /tmp/wb-lite-002-native-fixtures-r2/run.sh` exited 0 and printed `fixture PASS`.

**Safety and reproducibility:** the original driver removes three fixed paths under `/tmp/wb-lite-002-native-fixtures-r2` before creating the fixture. Do not rerun it at that existing path. For a replay, first choose a new unique disposable root and update the `base=` assignment after confirming the root absent; preserve every other command and capture new hashes. The recorded SHA above identifies the exact original executed driver. The durable case sequence and results follow; actual source implementation is not executed by this driver.

Fixture IDs:
`base=04ccac974ac91a06d48cc3880a0520dbd281983e`;
`P1=9c0441295634a7c39832509aae1462360ffba9e6`;
`P2=b74607b20a2d54e63c711fe8b664649ff9461e48`;
`W1=c7dfb9504465bf213dd7015e101bcc39fa58144a`;
`S1=2201db31136e4a6a6b529dbff5f148a5ec647605`;
`S2=49a8da59afe0de2a723b283a2d8926212d5dc0a7`;
`S3=d8ba3f3c0a856f552787cbfcd95feb230ecd109f`;
`W2=33a925a6dfc384408bf80491382cc98f4906f725`;
`alternate=a4e264854907e26e46675599fe1df047c13feebb`.

Observed driver log:

```text
STOP: V16-context-mismatch
STOP: V17-NOT_COMMITTED
STOP: V17-NOT_COMMITTED
V18 PASS focused_hash=c3f9c8c283a2b1f2f1896f27a01cbe3cddc0c9d93f752e4639035a0f5b36f6e8 P/W/Critic/assurance=NOT_APPLICABLE uninterrupted bounded fixture
STOP: V21-project-ready-without-owner
V20 P1=9c0441295634a7c39832509aae1462360ffba9e6 REWORK P2=b74607b20a2d54e63c711fe8b664649ff9461e48 READY; V21 P/W blobs frozen; V22 material change requires P3+Critic+Owner, W REWORK requires new W+Critic: all synthetic role records
STOP: V23-merge-without-Owner-GO
V23 actual commits S1=2201db31136e4a6a6b529dbff5f148a5ec647605 S2=49a8da59afe0de2a723b283a2d8926212d5dc0a7 S3=d8ba3f3c0a856f552787cbfcd95feb230ecd109f non-force-push=PASS; merge=STOP
STOP: V24 CI PENDING blocks next stage
V24 W2=33a925a6dfc384408bf80491382cc98f4906f725 same-S3/output/assurance present; no main mutation
STOP: V25-material-change-requires-Owner
V25 bounded-choice=PASS synthetic material-change=STOP; V26 alternate=a4e264854907e26e46675599fe1df047c13feebb blob-equality+retained-refs=PASS
fixture PASS
```

Driver coverage: V-16 accepts a verified checkpoint despite stale hints, then stops after fixture branch mismatch (synthetic replay, not native compaction); V-17 rejects only-scratch/cache claims without a durable Git object (twice); V-18 completes a bounded serial routine with focused file checks; V-20 makes a deficient P1, records synthetic REWORK, then corrected P2/READY; V-21 blocks absent Owner record and checks frozen P/W blobs in other synthetic steps; V-22 asserts new P/Owner for material change and new W/Stage Critic for W rework; V-23 creates local S1/S2/S3 commits and non-force pushes to a local bare remote, then STOPs before merge without Owner GO; V-24 creates synthetic W2 from same-S3 evidence and STOPs on CI=PENDING; V-25 records a bounded choice and STOPs on a material change; V-26 verifies alternate-base P/W blob equality and retained refs. All role, Owner and CI records in this driver are synthetic. There is no GitHub publication or merge.

V-20 also had two separate **native independent Project Critic** reviews of another disposable fixture:
- P1 commit `0a539703829214692fccfe4f24d28f59a83a6b9a`, tree `81a5e4cab72afb6aab63e4e28b0381fa932283b9`, only `plan.md`, blob `a181a520a1c0b1e1b0d43b9cdbcc6bc12afab4ed`, SHA-256 `a65acb2bcbc1631ce0c0b3893fb82dd0f83a6f03c4460717c9ee82765729c58b`. Native Critic found missing named target file, observable acceptance, preplanned checks and specification; verdict **REWORK**.
- Corrected P2 commit `1030d7a393b1245e057f75360046fd2d698b12f2`, tree `1ec2f7d1c95be6eeb18d374cfaefdd40b315e34`, plan blob `396eec0ed2dc216461a71e4dbc3b79e55261de34`, specification blob `45c280d1b355beaf54bf24cc8d44309858aac315), synthetic specification acceptance blob `d1f0dbfde40172cc7badd55f545195251908c1e5`. Native Critic returned **READY for Owner review only**. The acceptance record is synthetic and is not real Owner approval; no implementation authorization follows.

P2 setup/review command errors are disclosed: an initial attempt to overwrite existing `plan.md` returned exit 1; a mistyped fixture path and a parent lookup on the root P1 commit each returned exit 128. Correct-path P2 inspection and final review commands succeeded. P1/P2 `git diff --check`, `git diff --name-status`, final SHA/tree/blob checks and clean fixture status returned exit 0.

## Complete Reviewer command list and additional execution notes

The independent Reviewer’s full read-only exact-S2 command log is in [review.md](review.md). All listed Git/object/diff/fsck/show/grep/status commands exited 0 except `rg '^owned_worktree_path='` (exit 1, expected: no binding). Reviewer did not run fixtures.

Other test harness/setup errors retained in the record:

- The first combined V-14 helper shell exited 42 at the expected STOP; the six isolated reruns returned 42 per case and the enclosing loop exited 0.
- One wrong working-directory workflow extraction created an empty extracted file and apparent exit 0; excluded.
- A malformed initialization edit was rejected by an earlier identity guard; not counted for the intended case.
- A wrong base/path and absent marker-case directories prevented those attempted fixtures; excluded.
- Date-only source-marker mutations were no-ops; excluded.
- Native P2 follow-up’s wrong path and P1 parent lookups exited 128; successful later inspections used correct paths.
- An initial repository query was mistyped (`gh pr list --repo oley na80/agentic-sdlc-lite`) and returned exit 1 before network lookup; corrected exact GitHub queries above succeeded.

The exact native V-14 setup script remains at the listed temporary fixture path with recorded hash. The V-16…V-26 driver, stdout log, and hash manifest also remain in `/tmp` in this session; the evidence above preserves their hashes, command, driver case sequence and outputs. Do not rely on those temporary paths for future sessions; this committed report is the task checkpoint.

## Limitations and next authorized action

1. **S2 is not cleared.** The unbound `owned_worktree_path` makes FND-REV-001 / the corresponding FND-VER-001 condition fail. Reviewer is REWORK; Verifier is BLOCKED.
2. **No GitHub Actions PASS.** This read-only check found no PR for the task branch and no Actions runs on it. Required current-H CI is NOT_RUN.
3. **Partial verification remains.** V-03…V-08, V-10, V-13, V-14, V-18…V-25 are incomplete; V-15 and V-26 are synthetic limited cases. V-09 and V-20 have native fixture evidence, with the explicit limits above.
4. No source correction, merge, deploy, hooks/settings change, or publication was performed.

**Next authorized action:** separately authorize the bounded source correction of the missing absolute/verified cleanup destination in a new candidate; then run fresh independent Reviewer and Verifier on that same new exact SHA and verify actual applicable GitHub Actions on its authorized final evidence HEAD. Stop before merge/publication/deployment unless separately authorized.


## Durable reproduction appendix

This appendix stores the exact disposable setup/driver sources whose SHA-256 values were recorded above. The source candidate S2 and this repository's task source files are not inputs to fixture writes. The output logs below are copied from the `/tmp` artifacts after execution. The native agents were separate role actors; reproducing fixture data does not reproduce their independent verdicts.

### Native Orchestrator V-14 fixture setup

Executed command: `bash -n /tmp/wb-lite-002-v14-r2/setup.sh && bash /tmp/wb-lite-002-v14-r2/setup.sh`, exit 0. Setup source SHA-256: `68cebe77255862e43bf59358699399ab0e539b21199a3c2d44cd5641819cdc50`. This script initializes fixed paths and is not idempotent. Do not rerun against its existing fixture; replay only after choosing a new absent root and replacing `base=`.

```bash
#!/usr/bin/env bash
set -euo pipefail
base=/tmp/wb-lite-002-v14-r2
seed="$base/seed"
bare="$base/remote.git"
a="$base/A"
b="$base/B"
git init -q --bare "$bare"
git init -q -b main "$seed"
git -C "$seed" config user.name 'V14 Fixture'
git -C "$seed" config user.email v14@example.invalid
printf '%s\n' baseline > "$seed/tracked.txt"
printf '%s\n' copy-source > "$seed/source.txt"
git -C "$seed" add tracked.txt source.txt
git -C "$seed" commit -qm 'fixture: V14 clean baseline'
git -C "$seed" remote add origin "$bare"
git -C "$seed" push -q -u origin main
git clone -q "$bare" "$a"
git -C "$a" worktree add -q -b fixture-v14 "$b" origin/main
printf '%s\n' dirty > "$b/tracked.txt"
printf '%s\n' unexpected > "$b/untracked.txt"
for wt in "$a" "$b"; do
  printf 'root='; git -C "$wt" rev-parse --show-toplevel
  printf 'branch='; git -C "$wt" branch --show-current
  printf 'head='; git -C "$wt" rev-parse HEAD
  printf 'tree='; git -C "$wt" write-tree
  printf 'status:\n'; git -C "$wt" status --short --branch --untracked-files=all
  printf 'tracked-hash='; sha256sum "$wt/tracked.txt"
  printf 'source-hash='; sha256sum "$wt/source.txt"
done
```

### Synthetic V-16…V-26 lifecycle driver

Executed command: `bash -n /tmp/wb-lite-002-native-fixtures-r2/run.sh && bash /tmp/wb-lite-002-native-fixtures-r2/run.sh`, exit 0; stdout ended `fixture PASS`. Exact driver SHA-256: `ff52e8452601c0e5c377618d312995a234116915735549a064c01bc446a8ae12`. Its source begins with `rm -rf "$repo" "$bare" "$log"` under a fixed `/tmp` root. **Do not execute the recorded script at that existing path.** Replay only after confirming a new unique root is absent and updating the `base=` assignment; review the edited copy before execution.

```bash
#!/usr/bin/env bash
set -euo pipefail
base=/tmp/wb-lite-002-native-fixtures-r2
repo="$base/repo"
bare="$base/remote.git"
log="$base/execution.log"
rm -rf "$repo" "$bare" "$log"
mkdir -p "$repo"
git init -q "$repo"
git -C "$repo" config user.name 'Fixture Verifier'
git -C "$repo" config user.email fixture@example.invalid
printf '%s\n' base > "$repo/README.md"
git -C "$repo" add README.md
git -C "$repo" commit -qm 'fixture: base'
base_sha=$(git -C "$repo" rev-parse HEAD)
branch=$(git -C "$repo" branch --show-current)
git init -q --bare "$bare"
git -C "$repo" remote add origin "$bare"
stop() { printf 'STOP: %s\n' "$1" >> "$log"; return 42; }
snap() { printf '[%s] head=%s status=%s\n' "$1" "$(git -C "$repo" rev-parse HEAD)" "$(git -C "$repo" status --porcelain | tr '\n' ',')" >> "$log"; }

# V16: actual re-discovery ignores stale hints; this is synthetic fresh-context replay.
mkdir -p "$repo/docs/changes/R" "$repo/fixture"
printf '%s\n' "root=$repo" "branch=$branch" 'scope=fixture/routine.md' > "$repo/docs/changes/R/handoff.md"
git -C "$repo" add docs/changes/R/handoff.md
git -C "$repo" commit -qm 'fixture: recovery checkpoint'
checkpoint=$(git -C "$repo" rev-parse HEAD)
recover() {
  actual_root=$(git -C "$repo" rev-parse --show-toplevel)
  actual_branch=$(git -C "$repo" branch --show-current)
  actual_head=$(git -C "$repo" rev-parse HEAD)
  if [[ "$actual_root" != "$repo" || "$actual_branch" != "$branch" || "$actual_head" != "$checkpoint" ]]; then
    stop V16-context-mismatch
    return $?
  fi
  printf 'V16 recovered root=%s branch=%s head=%s; stale cwd/branch/head/tmp ignored\n' "$actual_root" "$actual_branch" "$actual_head" >> "$log"
}
snap V16-before
recover /stale/cwd stale deadbeef /missing/scratch
git -C "$repo" switch -q -c wrong-branch
if recover /stale/cwd stale deadbeef /missing/scratch; then exit 91; else test $? -eq 42; fi
git -C "$repo" switch -q "$branch"
snap V16-after

# V17: only temp/cache/chat claims, no task-record Git object, yields NOT_COMMITTED and STOP.
mkdir -p "$base/scratch" "$base/agent-memory"
printf '%s\n' 'READY commit=pretend checkpoint=pretend' > "$base/scratch/claim.txt"
printf '%s\n' 'READY committed' > "$base/agent-memory/MEMORY.md"
durable_gate() { git -C "$repo" rev-parse --verify pretend^{commit} >/dev/null 2>&1 && return 93; stop V17-NOT_COMMITTED; }
if durable_gate; then exit 92; else test $? -eq 42; fi
mv "$base/scratch/claim.txt" "$base/scratch/claim-moved.txt"
if durable_gate; then exit 92; else test $? -eq 42; fi
printf 'V17 scratch/cache changed and absent; durable Git evidence remains missing\n' >> "$log"

# V18: routine preflight once, stable bounded edit sequence, focused coverage; gates N/A.
[[ "$(git -C "$repo" rev-parse --show-toplevel)" == "$repo" ]]
[[ -z "$(git -C "$repo" status --porcelain)" ]]
printf '%s\n' one > "$repo/fixture/routine.md"
printf '%s\n' two >> "$repo/fixture/routine.md"
grep -Fx one "$repo/fixture/routine.md" >/dev/null
grep -Fx two "$repo/fixture/routine.md" >/dev/null
test "$(find "$repo/fixture" -type f | wc -l)" -eq 1
routine_hash=$(sha256sum "$repo/fixture/routine.md" | awk '{print $1}')
git -C "$repo" add fixture/routine.md
git -C "$repo" commit -qm 'fixture: bounded routine'
printf 'V18 PASS focused_hash=%s P/W/Critic/assurance=NOT_APPLICABLE uninterrupted bounded fixture\n' "$routine_hash" >> "$log"

# V20/V21/V22: actual immutable commits P1 defect -> P2 -> W1; every role/Owner datum is synthetic.
mkdir -p "$repo/planning" "$repo/docs/changes/W1" "$repo/reports"
printf '%s\n' 'scope=fixture' 'tests=MISSING' > "$repo/planning/plan.md"
git -C "$repo" add planning/plan.md && git -C "$repo" commit -qm 'fixture: P1 defect'
p1=$(git -C "$repo" rev-parse HEAD)
printf '%s\n' "SYNTHETIC Project Critic REWORK subject=$p1 finding=missing-tests" > "$repo/reports/p1-critic.txt"
printf '%s\n' 'scope=fixture' 'tests=explicit' > "$repo/planning/plan.md"
git -C "$repo" add planning/plan.md reports/p1-critic.txt && git -C "$repo" commit -qm 'fixture: P2 correction'
p2=$(git -C "$repo" rev-parse HEAD)
plan_blob=$(git -C "$repo" rev-parse "$p2:planning/plan.md")
printf '%s\n' "SYNTHETIC Project Critic READY subject=$p2" "SYNTHETIC Owner approval exact_P=$p2" > "$repo/reports/p2-evidence.txt"
printf '%s\n' "P=$p2" 'scope=fixture/source.md' 'post_review_mutation=forbidden' > "$repo/docs/changes/W1/work-block.md"
git -C "$repo" add reports/p2-evidence.txt docs/changes/W1/work-block.md && git -C "$repo" commit -qm 'fixture: W1 under P2'
w1=$(git -C "$repo" rev-parse HEAD)
w1_blob=$(git -C "$repo" rev-parse "$w1:docs/changes/W1/work-block.md")
printf '%s\n' "SYNTHETIC Stage Critic READY subject=$w1 conformance=P2" > "$repo/reports/w1-critic.txt"
git -C "$repo" add reports/w1-critic.txt && git -C "$repo" commit -qm 'fixture: retain W1 critic'
[[ "$(git -C "$repo" rev-parse "$p2:planning/plan.md")" == "$plan_blob" ]]
[[ "$(git -C "$repo" rev-parse "$w1:docs/changes/W1/work-block.md")" == "$w1_blob" ]]
missing_owner() { test -s "$repo/reports/no-owner.txt" || stop V21-project-ready-without-owner; }
if missing_owner; then exit 94; else test $? -eq 42; fi
printf 'V20 P1=%s REWORK P2=%s READY; V21 P/W blobs frozen; V22 material change requires P3+Critic+Owner, W REWORK requires new W+Critic: all synthetic role records\n' "$p1" "$p2" >> "$log"

# V23: actual local commits and non-force bare push; assurance/CI/Owner records deliberately synthetic.
printf '%s\n' S1 > "$repo/fixture/source.md"
git -C "$repo" add fixture/source.md && git -C "$repo" commit -qm 'fixture: S1'
s1=$(git -C "$repo" rev-parse HEAD)
printf '%s\n' "SYNTHETIC Reviewer REWORK source=$s1" > "$repo/reports/s1.txt"
printf '%s\n' S2 > "$repo/fixture/source.md"
git -C "$repo" add fixture/source.md reports/s1.txt && git -C "$repo" commit -qm 'fixture: S2'
s2=$(git -C "$repo" rev-parse HEAD)
printf '%s\n' "SYNTHETIC Reviewer READY source=$s2" "SYNTHETIC Verifier FAIL source=$s2" > "$repo/reports/s2.txt"
printf '%s\n' S3 > "$repo/fixture/source.md"
git -C "$repo" add fixture/source.md reports/s2.txt && git -C "$repo" commit -qm 'fixture: S3'
s3=$(git -C "$repo" rev-parse HEAD)
printf '%s\n' "SYNTHETIC Reviewer READY source=$s3" "SYNTHETIC Verifier PASS source=$s3" > "$repo/reports/s3.txt"
git -C "$repo" add reports/s3.txt && git -C "$repo" commit -qm 'fixture: retain same-S3 assurance'
git -C "$repo" push -q -u origin "$branch"
[[ "$(git --git-dir="$bare" rev-parse "refs/heads/$branch")" == "$(git -C "$repo" rev-parse HEAD)" ]]
if stop V23-merge-without-Owner-GO; then exit 95; else test $? -eq 42; fi
printf 'V23 actual commits S1=%s S2=%s S3=%s non-force-push=PASS; merge=STOP\n' "$s1" "$s2" "$s3" >> "$log"

# V24: next stage only after matching same-S3 synthetic completion evidence; CI PENDING STOP.
mkdir -p "$repo/docs/changes/W2"
printf '%s\n' "output=$s3" "assurance=$s3" 'ci=SYNTHETIC_PASS' > "$repo/reports/w1-completion.txt"
grep -Fx "output=$s3" "$repo/reports/w1-completion.txt" >/dev/null
grep -Fx "assurance=$s3" "$repo/reports/w1-completion.txt" >/dev/null
grep -Fx 'ci=SYNTHETIC_PASS' "$repo/reports/w1-completion.txt" >/dev/null
printf '%s\n' "P=$p2" "W1=$w1" "dependency=$s3" > "$repo/docs/changes/W2/work-block.md"
git -C "$repo" add reports/w1-completion.txt docs/changes/W2/work-block.md && git -C "$repo" commit -qm 'fixture: W2 progression'
w2=$(git -C "$repo" rev-parse HEAD)
printf '%s\n' 'ci=PENDING' > "$repo/reports/negative-ci.txt"
if grep -Fx 'ci=SYNTHETIC_PASS' "$repo/reports/negative-ci.txt" >/dev/null; then exit 96; else printf 'STOP: V24 CI PENDING blocks next stage\n' >> "$log"; fi
printf 'V24 W2=%s same-S3/output/assurance present; no main mutation\n' "$w2" >> "$log"

# V25/V26: bounded decision is recorded; material change STOP; alternate base retains P/W blobs and refs.
printf '%s\n' 'SYNTHETIC local choice=A within P2/W1; affected-check=fixture' > "$repo/reports/rationale.txt"
git -C "$repo" add reports/rationale.txt && git -C "$repo" commit -qm 'fixture: local rationale'
if stop V25-material-change-requires-Owner; then exit 97; else test $? -eq 42; fi
git -C "$repo" branch retained-p2 "$p2"
git -C "$repo" branch retained-w1 "$w1"
git -C "$repo" switch -q --orphan alternate-base
mkdir -p "$repo/planning" "$repo/docs/changes/W1"
git -C "$repo" show "$p2:planning/plan.md" > "$repo/planning/plan.md"
git -C "$repo" show "$w1:docs/changes/W1/work-block.md" > "$repo/docs/changes/W1/work-block.md"
printf '%s\n' 'SYNTHETIC authorized alternate-base provenance disposition' > "$repo/ALTERNATE.md"
git -C "$repo" add planning/plan.md docs/changes/W1/work-block.md ALTERNATE.md reports && git -C "$repo" commit -qm 'fixture: alternate base'
alternate=$(git -C "$repo" rev-parse HEAD)
[[ "$(git -C "$repo" rev-parse "$alternate:planning/plan.md")" == "$plan_blob" ]]
[[ "$(git -C "$repo" rev-parse "$alternate:docs/changes/W1/work-block.md")" == "$w1_blob" ]]
git -C "$repo" show-ref --verify --quiet refs/heads/retained-p2
git -C "$repo" show-ref --verify --quiet refs/heads/retained-w1
printf 'V25 bounded-choice=PASS synthetic material-change=STOP; V26 alternate=%s blob-equality+retained-refs=PASS\n' "$alternate" >> "$log"
printf 'base=%s\nP1=%s\nP2=%s\nW1=%s\nS1=%s\nS2=%s\nS3=%s\nW2=%s\nalternate=%s\n' "$base_sha" "$p1" "$p2" "$w1" "$s1" "$s2" "$s3" "$w2" "$alternate" >> "$log"
sha256sum "$log" "$repo/planning/plan.md" "$repo/docs/changes/W1/work-block.md" > "$base/hashes.txt"
git -C "$repo" show "$w2:docs/changes/W2/work-block.md" | sha256sum >> "$base/hashes.txt"
printf 'fixture PASS\n'
```

Captured execution log (SHA-256 `82b16e20c9eee39a660e5b335e6621d2e5edbc7fab692bec5092b03826c61ab4`):

```text
[V16-before] head=134a2879ebb3e4c2aa459ce3586c16297f5b2a76 status=
V16 recovered root=/tmp/wb-lite-002-native-fixtures-r2/repo branch=main head=134a2879ebb3e4c2aa459ce3586c16297f5b2a76; stale cwd/branch/head/tmp ignored
STOP: V16-context-mismatch
[V16-after] head=134a2879ebb3e4c2aa459ce3586c16297f5b2a76 status=
STOP: V17-NOT_COMMITTED
STOP: V17-NOT_COMMITTED
V17 scratch/cache changed and absent; durable Git evidence remains missing
V18 PASS focused_hash=c3f9c8c283a2b1f2f1896f27a01cbe3cddc0c9d93f752e4639035a0f5b36f6e8 P/W/Critic/assurance=NOT_APPLICABLE uninterrupted bounded fixture
STOP: V21-project-ready-without-owner
V20 P1=9c0441295634a7c39832509aae1462360ffba9e6 REWORK P2=b74607b20a2d54e63c711fe8b664649ff9461e48 READY; V21 P/W blobs frozen; V22 material change requires P3+Critic+Owner, W REWORK requires new W+Critic: all synthetic role records
STOP: V23-merge-without-Owner-GO
V23 actual commits S1=2201db31136e4a6a6b529dbff5f148a5ec647605 S2=49a8da59afe0de2a723b283a2d8926212d5dc0a7 S3=d8ba3f3c0a856f552787cbfcd95feb230ecd109f non-force-push=PASS; merge=STOP
STOP: V24 CI PENDING blocks next stage
V24 W2=33a925a6dfc384408bf80491382cc98f4906f725 same-S3/output/assurance present; no main mutation
STOP: V25-material-change-requires-Owner
V25 bounded-choice=PASS synthetic material-change=STOP; V26 alternate=a4e264854907e26e46675599fe1df047c13feebb blob-equality+retained-refs=PASS
base=04ccac974ac91a06d48cc3880a0520dbd281983e
P1=9c0441295634a7c39832509aae1462360ffba9e6
P2=b74607b20a2d54e63c711fe8b664649ff9461e48
W1=c7dfb9504465bf213dd7015e101bcc39fa58144a
S1=2201db31136e4a6a6b529dbff5f148a5ec647605
S2=49a8da59afe0de2a723b283a2d8926212d5dc0a7
S3=d8ba3f3c0a856f552787cbfcd95feb230ecd109f
W2=33a925a6dfc384408bf80491382cc98f4906f725
alternate=a4e264854907e26e46675599fe1df047c13feebb
```

Captured hash manifest (SHA-256 `b2d10afb6b65a36721d4b1d33e435c0c20bbc0b2f999b59ed3beb32dbfe4b398`):

```text
82b16e20c9eee39a660e5b335e6621d2e5edbc7fab692bec5092b03826c61ab4  /tmp/wb-lite-002-native-fixtures-r2/execution.log
180ee5d73956d14b196b50101303a88d0f8eca8627e18c112ed909b571891d9a  /tmp/wb-lite-002-native-fixtures-r2/repo/planning/plan.md
16aea51b73f44b6c9fb3a8062705084a2d6784a7f3c545b1d99b99b425014d9f  /tmp/wb-lite-002-native-fixtures-r2/repo/docs/changes/W1/work-block.md
99f962f694c103660c68335d3a49bc01a767485ed626f87c292bda5ef6fbe1cb  -
```

### Native Project Critic V-20 fixture inputs

The P1/P2 commits were disposable native-Critic fixtures, not project approvals. The exact committed inputs are reproduced below; SHA/tree/blob provenance and independent native verdicts are recorded in the V-20 section above. P1 Critic returned REWORK. P2 Critic returned READY for Owner review only. `reports/spec-acceptance.txt` is synthetic and is not real Owner approval.

P1 `plan.md` at `0a539703829214692fccfe4f24d28f59a83a6b9a`:

```text
# Synthetic Project Plan P1

Objective: demonstrate an implementation stage for one bounded documentation task.

Scope: update one documentation file.

Acceptance criterion AC-1: document the workflow.

Verification: tests to be determined after implementation.
```

P2 `specification.md` at `1030d7a393b1245e057f75360046fd2d698b12f2`:

```text
# Synthetic Project Specification SPEC-1

Status: synthetic accepted input for the V-20 disposable fixture only.

Audience: maintainers who need a compact example of how to describe a bounded documentation change.

Outcome: provide a reusable one-page workflow example that names the scope, the action, observable evidence, and the next handoff.

Acceptance: the page contains the exact sentence `Every example names an owner and an observable outcome.` and describes the four workflow elements above.

Boundary: documentation only. No code, policy, external systems, hooks, settings, shared memory, release, or deployment changes.
```

P2 `plan.md` at the same commit:

```text
# Synthetic Project Plan P2

Status: unapproved candidate; independent Project Critic review must precede Owner review.

## Objective and specification

Produce the documentation outcome in `specification.md` (SPEC-1). For this fixture only, the accepted-specification input is recorded in `reports/spec-acceptance.txt`; this does not approve P2.

## Scope

Create one file, `docs/workflow-example.md`, containing a compact workflow example for a bounded documentation change. The page must state the scope, the action, the observable evidence, the next handoff, and the exact acceptance sentence from SPEC-1.

Out of scope: source code, policy changes, other documentation files, hooks, settings, CI configuration, external services, shared memory, publication, merge, deployment, and changes to SPEC-1.

## Observable acceptance criteria

- AC-1: `docs/workflow-example.md` contains the exact line `Every example names an owner and an observable outcome.`
- AC-2: the page names scope, action, evidence, and handoff as four distinct workflow elements.
- AC-3: the complete candidate diff changes only `docs/workflow-example.md` and `git diff --check` reports no whitespace errors.

## Milestone and dependencies

One stage: after exact P2 receives Project Critic READY and the Owner accepts that exact P2, the Orchestrator prepares and commits a bounded W, obtains Stage Critic READY and conformance, then the Coder creates the page and verifies AC-1..AC-3. No implementation begins before these gates. No external dependency or network access is required.

## Verification plan

- `grep -Fxq 'Every example names an owner and an observable outcome.' docs/workflow-example.md` must exit 0.
- Check all four required terms with exact, case-sensitive matches; each command must exit 0.
- `git diff --check` must exit 0.
- Inspect `git status --short --untracked-files=all` and the full diff; only `docs/workflow-example.md` may change in the implementation stage.

## Risks and STOP conditions

A request to change policy, add another file, or use an external service is outside this plan and stops implementation pending a new project plan and affected approvals. Missing exact P2 Critic READY, Owner approval, Stage Critic READY, W conformance, required permissions, or failed acceptance checks stops before the affected write or progression.

## Delivery and final integration

The task ends with a committed candidate, the independent same-SHA assurance required by its W, durable task evidence, and applicable checks. Any merge or publication remains separately Owner-controlled. No CI PASS is assumed for this documentation fixture.
```

P2 synthetic acceptance record:

```text
SYNTHETIC FIXTURE DATA ONLY
Spec SPEC-1 is treated as accepted before P2 for the V-20 fixture. This is not a real Owner approval or project authorization.
```

Read-only fixture command used to recover these exact inputs: `git -C /tmp/wb-lite-002-v20.JD4A8I/repo show <commit>:<path>`. The initial attempt to read `SPEC.md` (instead of `specification.md`) exited 128; the correct-path inspection succeeded. The P2 setup's initial overwrite attempt exited 1; native follow-up inspection of the committed P2 succeeded. These errors are disclosed and are not credited as passes.
