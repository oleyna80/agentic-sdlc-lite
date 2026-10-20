# W1 — Fail-closed Git history inspection

**State:** actionable candidate, pending independent Stage Critic READY. No implementation may begin before that verdict.
**Project:** ISSUE-009, exact approved P `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74` (tree `b100e709d9472a4e617e67dfa42fd46bbb734fc9`).
**Specification:** blob `688ab2744f19307dc8e15b85d0678930aa02ec92`, SHA-256 `1b4c9900b3e73501b7d201a8a785f7422452e83af1ad2592bab69100a021e4c4`.
**Owner approval:** D3 in `owner-decisions.md`, exact P above.
**Project Critic:** `project-critic.md`, READY (Owner review), bound to exact P/spec; its captured text/hash and whitespace normalization note are in that evidence file.
**Task branch:** `docs/issue-009-fail-closed-history`, stacked from `69246782c99423721fdb4a6adefc693ee6f57613`.
**W parent checkpoint commit:** `f884cb28ae06d3792d1ba7b4111e594162af4087` (P and accepted evidence remain ancestors).
**Classification:** one significant, bounded stage because it changes a mandatory CI gate.

## 1. Outcome and entry conditions

Correct the existing `Check introduced whitespace errors` step so only a positively established genuine root uses the root checker; commits with an available first parent use the parent-to-HEAD checker; missing/unavailable parent history and every inspection/parse failure STOP explicitly; and either selected whitespace checker’s own failure propagates. Satisfy AC-1…AC-9 and T01…T14 in the accepted specification.

Entry conditions are satisfied by the approved exact P/spec and D3. This W is committed before review. Coder entry additionally requires independent Stage Critic READY on this exact W commit/blob, conformance confirmation, and rechecked worktree/ref/permission state. No implementation is authorized before that gate.

## 2. Exact write-sets and role ownership

**Coder source path:** `.github/workflows/lite-checks.yml`, with a full-file diff proving that only the existing `run: |` body for `Check introduced whitespace errors` changes. Preserve byte-for-byte the step name, shell, all other steps and workflow content, including `actions/checkout@v4`, `fetch-depth: 2`, triggers and permissions.

**Coder fixture/evidence paths:**

- `docs/changes/ISSUE-009/fixtures.sh`
- `docs/changes/ISSUE-009/test-evidence.md`

The harness may create disposable repositories and logs only below a fresh `mktemp -d` directory; it must report the absolute directory and preserve its before/after inventory. It must not write to other worktrees, production remotes, shared memory, hooks, global Git configuration or real repository objects/refs.

**Orchestrator evidence paths:**

- `docs/changes/ISSUE-009/stage-critic.md` — exact independent Stage Critic report.
- `docs/changes/ISSUE-009/handoff.md` — recoverable task checkpoint, appended only after a verified milestone.

**Independent assurance paths:**

- Reviewer owns `docs/changes/ISSUE-009/review.md`.
- Verifier owns `docs/changes/ISSUE-009/verification.md`.

These reports must preserve original verdicts; later source candidates require new reports or clearly versioned appended findings, never overwrite or relabel prior evidence. Other paths are outside W. In particular, do not modify `plan.md`, `specification.md`, prior P/W2/S12, PR #11, `main`, checkout configuration, another step, hooks, dependencies, triggers or permissions.

## 3. Technical requirements and permitted local choice

The implementation must inspect the actual HEAD commit object and distinguish its parent headers from message text. Shallow traversal/count results alone cannot prove root status. Validate HEAD as a commit, require well-formed commit headers and an unambiguous header/message separator, and parse parent metadata only from the header section. A genuine zero-parent commit alone selects `git diff-tree --check --root --no-commit-id -r <validated-head>` (or the exact equivalent already approved by the specification). If one or more parents are recorded, select the first parent, verify that its object exists and is a commit, then run `git diff --check <validated-first-parent> <validated-head>`. A parent named by commit metadata but absent, unreadable, non-commit, or unusable must STOP; it must never fall back to root.

For every required inspection, explicitly capture and check its numeric exit status before consuming stdout. A valid-looking stdout with nonzero status is failure. Empty, malformed, truncated or ambiguous output is failure. Emit a clear STOP diagnostic and return nonzero on inspection failure. Do not rely on `set -e` alone, a pipeline’s last command, or a command substitution whose status is hidden. Preserve the final selected whitespace checker’s exact nonzero status, including 74. Use only Bash and Git already present in the workflow; no new dependency/framework. The specific smallest implementation is a bounded engineering choice for the Coder, subject to these invariants and fixtures.

If any depth-2 linear or PR-merge-like test fails because `fetch-depth: 2` is insufficient, stop and report the exact evidence. Checkout configuration remains out of scope; seek a new Owner scope decision before touching it.

## 4. Required executable matrix

`fixtures.sh` must extract the actual literal run body from the exact committed candidate workflow (`git show <S>:.github/workflows/lite-checks.yml`), locate exactly one named step, validate YAML/block indentation and boundaries, save the extracted bytes/checksum, and run `bash -n` on them. Do not test a manually copied algorithm. Harness extraction failure, duplicate/missing step, changed source SHA or checksum inconsistency is a test failure.

Implement and execute the complete accepted T01–T14 matrix:

| ID | Required fixture / fault | Expected result |
|---|---|---|
| T01 | genuine clean root | rc 0, root checker only |
| T02 | genuine root with trailing whitespace | nonzero from root checker |
| T03 | clean ordinary commit | rc 0, actual first-parent diff only |
| T04 | ordinary commit introducing trailing whitespace | nonzero from parent diff checker |
| T05 | each required history/parent inspection faulted to rc 74 | explicit STOP, nonzero, no checker |
| T06 | each such inspection emits valid-looking stdout but rc 74 | explicit STOP, nonzero, no checker |
| T07 | empty/invalid/truncated output, malformed parent ID, invalid HEAD/type | explicit STOP, nonzero, no checker |
| T08 | realistic `file://` depth-2 linear clone and fetch/detached checkout | available first-parent path; clean PASS and whitespace FAIL; older ancestor may be absent |
| T09 | depth-1 ordinary commit with real but unavailable parent | explicit STOP, never root checker |
| T10 | shallow boundary with the first-parent commit independently fetched and available | correct non-root path; no blanket shallow rejection |
| T11 | root and parent whitespace checker each faulted to rc 74 | overall rc 74, no later success masks it |
| T12 | two-parent merge and depth-2 PR-merge-like checkout | first-parent comparison; clean PASS and whitespace FAIL |
| T13 | genuine shallow root with parent-like commit-message text | true root path; message cannot create parentage |
| T14 | isolated commit with missing or non-commit parent object | explicit STOP, never root |

Use separate disposable repositories, local fixture identities, fixed dates, and a `file://` URL for shallow fetches. Do not alter the real checkout’s refs, objects, hooks or configuration. For T14 use an isolated object database and locally constructed commit object that names an absent/blob parent; never delete a real object.

Use a fixture-local PATH `git` wrapper delegating to the captured real Git and logging exact argument vectors. Inject each fault only when the extracted body invokes that inspection/checker. For each operational case capture: exact source S, workflow blob and extracted-body hash; fixture HEAD and parent IDs/raw headers/tree IDs; setup commands; actual `.git/shallow` bytes and available object types; actual invoked Git commands; stdout/stderr; numeric process rc; expected/observed branch and result; and before/after HEAD, refs, index/tracked/untracked status, shallow file and object inventory. Show no unexpected body-side mutation. Record Git/Bash versions and every failed attempt without replacing the original verdict. No `|| true` as evidence of success.

## 5. Implementation, checks and assurance sequence

1. After Stage Critic READY, recheck exact W, clean target worktree, current branch/HEAD, approved-base ancestry, live stacked base, available permissions and absence of unowned changes.
2. Coder makes only the source and fixture/evidence path changes above; runs the complete matrix against the exact committed candidate S, checks Bash syntax, full workflow diff and `git diff --check`, and commits S. Preserve logs/evidence in the specified task paths, excluding secrets.
3. Independent Reviewer examines the full approved-base-to-S diff, exact-body boundary and byte equality of all workflow text outside the allowed body; assesses correctness, failure propagation, test reproducibility, regressions and authority/scope. Report READY/REWORK against exact S in `review.md`.
4. Separate independent Verifier checks the same exact S and independently executes all T01–T14 plus syntax/workflow invariants; report PASS/FAIL against exact S in `verification.md`. Reviewer and Verifier must not rely on each other’s verdict as a substitute for their own work.
5. Any REWORK/FAIL requires a new committed source SHA and renewed affected independent assurance. Never transfer a verdict across SHAs. If agent independence, fixture capability or mandatory acceptance cannot be established, record BLOCKED/NOT_RUN and stop; do not claim delivery readiness.
6. Only after same-S Reviewer READY and Verifier PASS may authorized publication proceed: non-force push only to `docs/issue-009-fail-closed-history`, separate draft stacked PR targeting `docs/wb-lite-002-implementation`, then observe actual required GitHub Actions to completion on exact delivery HEAD H. Recheck live PR #11/main/base and ancestry before PR creation or any integration mapping. Current-head CI, final merge and any later retarget/main integration remain separate facts/Owner gates. No push of other refs, PR #11 edits, main changes, merge or deployment is allowed here.

## 6. Stop conditions

Stop the affected action and record exact evidence if any of the following occurs:

- W differs materially from P/spec, or a test cannot be executed with the allowed source/configuration scope.
- Task branch, exact P/spec blob, expected stacked ancestry, or target worktree changes unexpectedly; any unrelated/ignored/untracked work appears.
- Actual write/commit/push capability is missing or requires broader permissions than the Owner delegated.
- A solution needs checkout/config, another workflow path, permissions, trigger, hook, dependency or security-boundary changes.
- History inspection can still be confused with a root, any injected failure is hidden, or a selected checker failure is masked.
- Required depth-2 or first-parent merge behavior cannot pass without an out-of-scope change.
- Independent Reviewer/Verifier or actual required GitHub Actions cannot complete.

Do not reset, clean, stash, rewrite history, bypass hooks, force-push, change shared memory, merge, deploy, or claim unexecuted outcomes. Scope expansion and final merge require separate Owner disposition.
