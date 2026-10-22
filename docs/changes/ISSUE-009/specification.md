# ISSUE-009 — Specification proposal

## Objective and authority boundary

For users of `oleyna80/agentic-sdlc-lite`, make the mandatory introduced-whitespace CI gate fail closed when Git parentage cannot be established. This is a significant CI correction, independent of WB-LITE-002. This document proposes the exact specification for Owner acceptance; acceptance is recorded separately, never inferred from architecture approval or an earlier project's verdict.

Sources: [Issue #9](https://github.com/oleyna80/agentic-sdlc-lite/issues/9), the Owner's planning assignment and stacked architecture disposition, summarized with explicit limits in [owner-decisions.md](owner-decisions.md). The canonical lifecycle remains [development.md](../../workflow/development.md).

## Functional acceptance criteria

- **AC-1 — Genuine root:** establish a valid HEAD commit and its actual lack of parent headers; run `git diff-tree --check --root --no-commit-id -r HEAD` (or the pinned identical HEAD object). Clean root returns 0; root whitespace defect returns nonzero.
- **AC-2 — Parent:** when actual commit metadata records a parent, verify the first parent's commit object is available and check its tree against HEAD using `git diff --check`. This is the same first-parent comparison as `HEAD^ HEAD`, including merge commits. Explicit validated object IDs may be used to avoid shallow traversal ambiguity. Clean changes return 0; introduced whitespace returns nonzero.
- **AC-3 — Inspection errors:** every required Git inspection's exit status is checked explicitly. Nonzero, including 74 with plausible stdout, emits a clear STOP diagnostic and returns nonzero before any whitespace checker. No root fallback. Preserve the inspection code in the diagnostic or exit status.
- **AC-4 — Invalid output:** successful inspection with empty, malformed, truncated or ambiguous output must STOP. A genuine root needs positive valid commit metadata and an unambiguous zero-parent representation; empty stdout alone is never proof. Commit-message text resembling parent headers must not affect classification.
- **AC-5 — Shallow/missing history:** shallow boundaries never prove root status. A shallow checkout with an available first parent must take the parent diff path; an unavailable/non-commit first parent must STOP. Complete older history is unnecessary when the actual first parent and both trees are available. A valid true root may pass even if the repository is shallow.
- **AC-6 — Checker errors:** propagate the selected whitespace checker's own nonzero exit status, including an injected 74; never hide it behind successful logging or cleanup. No success after a failed check.
- **AC-7 — Scope:** change only the run body of `Check introduced whitespace errors` in `.github/workflows/lite-checks.yml`. Keep step identity, shell, all other steps, checkout `actions/checkout@v4`, `fetch-depth: 2`, triggers and workflow/job permissions byte-identical. Planning/evidence are separate paths in P. No hooks, dependencies or new runtime/framework.
- **AC-8 — Assurance:** reproducible disposable fixtures execute the actual extracted run body from exact source S. Independent Reviewer READY and Verifier PASS bind that same S; actual applicable GitHub Actions must finish successfully on exact delivery H before delivery readiness is claimed. Synthetic fixtures do not establish actual CI or Owner approval.
- **AC-9 — Preservation/integration:** preserve Option A, Issue #9 and WB-LITE-002 exact approvals/verdicts. Initially deliver a separate stacked PR targeting `docs/wb-lite-002-implementation`; retargeting/integration into main requires live base/ancestry/content/CI evaluation and separate Owner merge authorization. Never transfer old assurance to a changed tree.

## Technical evaluation and bounded choice

Historical S10 `befb08ca9f5743a45d84c6a7b470d3b60bb9186d` checks the status and positive-integer output of `git rev-list --count HEAD`, improving error handling. It still cannot prove parentlessness: a depth-1 checkout of an ordinary commit has visible count 1. Do not adopt it solely because it appeared in history.

Preferred design direction: inspect actual commit-object metadata, validate its complete header structure and parent representation, then verify the selected parent object and run the existing whitespace operation. `git cat-file` is a candidate for reading commit headers without equating truncated traversal with root status. Do not parse parent-like lines from a commit message. A formatted metadata command is acceptable only if tests demonstrate it preserves true parents at shallow boundaries; `rev-list --parents` or an empty `%P` result alone is insufficient proof. Validate status before using stdout. Keep all required operations in the existing Bash body; W selects the smallest proven solution.

In Bash, use explicit status checks around assignments/command substitutions and any pipeline. Do not rely on `set -e` alone, particularly in conditional/function contexts, or on the last successful command of a substitution. Test plausible stdout plus nonzero for every inspection command, not just the first one. No unconditional rejection of all shallow repositories: ordinary `fetch-depth: 2` with a usable parent must work.

Git describes shallow commits as having real parents while traversal treats them as roots: [Git shallow](https://git-scm.com/docs/shallow). Object inspection reference: [git-cat-file](https://git-scm.com/docs/git-cat-file). These explain the design direction; the candidate still needs executed fixtures.

## Reproducible fixture design (mandatory after implementation authorization)

Create only disposable repositories under a new `mktemp -d` directory; record its absolute path. Use local identities and fixed dates, never production data or credentials. No reset/clean/deletion of existing worktrees. Run the harness against a clean checkout of the exact committed S; the Verifier reruns independently against the same S.

1. Read `.github/workflows/lite-checks.yml` from `git show S:<path>`. Locate exactly one named whitespace step and its literal `run: |` body, validate its boundaries/indentation, remove only YAML indentation, and save exact extracted bytes plus checksum. Missing/duplicate/malformed step is a harness failure. Run `bash -n` on this extraction. No hand-copied algorithm is a test subject.
2. Build separate root-clean and root-bad repositories with `git init`, configured fixture identity, a committed file containing respectively `clean\n` or `bad \n`. Build ordinary-clean and ordinary-bad children from a clean root using clean/new trailing-space additions. Record every exact SHA, raw commit headers and trees; use fixed author/committer dates for reproducibility. Create a longer linear history and a two-parent merge fixture.
3. Use a `file://` URL (not a local clone that ignores depth) with `git clone --no-local --depth 2` for realistic checkout depth; also use `git init`, remote add, and `git fetch --no-tags --depth=2 origin <exact-tip>` followed by detached checkout of `FETCH_HEAD`. Fetch a locally generated merge commit to model the PR merge checkout. Confirm `.git/shallow`, `rev-parse --is-shallow-repository`, actual HEAD/parent availability, not merely the requested depth. Use depth 1 for missing-parent cases and a genuine single-root upstream for root-boundary coverage.
4. Add a fixture-local PATH Git wrapper that logs arguments and delegates to the captured real Git executable. Inject faults only after fixture setup, matching each actual inspection/checker invocation in the extracted body. Never modify repository hooks or global Git config. Combine wrapper logs with `GIT_TRACE`/Bash tracing where needed to prove branch choice and that no checker follows an inspection STOP.
5. Capture numeric process status outside the body (`if bash ...; then rc=0; else rc=$?; fi`), stdout, stderr, invocation log and before/after fixture manifest. Do not run the body in a conditional/function context that changes its `errexit` semantics. Compare required diagnostics, branch and exact checker arguments, not nonzero alone. Never use `|| true` to claim a test passed.

| ID | Input / injected behavior | Required outcome |
| --- | --- | --- |
| T01 | Genuine clean root | 0; only root checker |
| T02 | Genuine root with trailing whitespace | nonzero from root checker; diagnostic |
| T03 | Clean ordinary commit | 0; only actual first-parent diff |
| T04 | Ordinary commit introducing trailing whitespace | nonzero from diff checker; diagnostic |
| T05 | Each required history/parent inspection returns 74 | STOP, nonzero; no checker |
| T06 | Each inspection emits valid-looking output but returns 74 | STOP, nonzero; no checker |
| T07 | Inspection succeeds with empty/invalid/truncated output, malformed parent ID or invalid HEAD/type | STOP, nonzero; no checker; valid root representation remains distinct |
| T08 | Linear depth-2 clone and fetch/detached checkout; parent available, older ancestor unavailable | correct parent path, clean PASS / whitespace FAIL; no full-history requirement |
| T09 | Depth-1 ordinary checkout; real parent recorded but unavailable | STOP; never root checker |
| T10 | Shallow boundary with parent object independently fetched and available | correct non-root behavior; no false root or blanket shallow rejection |
| T11 | Each selected whitespace checker returns 74 | overall exit 74; no later success masks it |
| T12 | Two-parent merge and depth-2 PR-merge-like checkout | first-parent comparison, clean PASS / whitespace FAIL |
| T13 | Genuine root at shallow boundary; parent-like text in commit message | correct true-root check; message does not fabricate parentage |
| T14 | Available HEAD with missing/non-commit parent outside ordinary shallow traversal | STOP, never root; use isolated object fixture, not shared object deletion |

For T14, use an isolated repository and `git hash-object -t commit -w --stdin` to construct a commit header referencing an absent or blob object; point only that fixture's HEAD to it. Never remove an object from the real repository. T10 fetches the parent as a separate depth-1 tip so the original HEAD may remain a shallow boundary; record the actual resulting shallow file.

Per-case evidence: Git/Bash versions, source S/workflow blob/body hash, exact commits and raw parent headers, setup commands, `.git/shallow` bytes, available object types, actual invoked Git arguments, stdout/stderr, numeric rc, expected/actual branch and result. Before/after manifests include HEAD/ref, tracked/index/untracked status, refs, shallow file and object inventory; body execution must not mutate these. Keep evidence bounded and redacted. Verifier checks the actual base-to-S diff and byte equality of all workflow text outside the permitted body.

If any realistic depth-2 case requires checkout changes, STOP and report the exact failure and smallest scope/Owner decision before editing checkout configuration. This specification does not authorize such an edit.
