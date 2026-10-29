# Git hook connection — recorded CLI validation

## Provenance and scope

- Run date: 2026-10-29; Git version reported by the CLI session: `2.53.0`.
- Codex CLI session: `01a1875f-50e8-7e50-b786-18b81f776120`.
- Local source transcript: `/home/azur/.codex/sessions/2026/10/29/rollout-2026-10-29T12-15-33-01a1875f-50e8-7e50-b786-18b81f776120.jsonl`.
- Session root: `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/git-hook-connection`; branch: `docs/git-hook-connection`; observed predecessor HEAD: `55ebee6cf26db99d708f089f297344ef0341f698`.
- Subject: the uncommitted hook-connection documentation before the corrections recorded below. HEAD identifies the base, not those uncommitted document bytes.
- This is an architect-authored summary checked against recorded tool outputs and the CLI report, not a replacement for the original transcript or an independent Reviewer/Verifier verdict. Runtime tests were not rerun in this documentation-editing session. The original transcript and pasted report were left unchanged.

The CLI used disposable repositories, separate Git configuration and synthetic executable `pre-commit` hooks. Fixture commits exercised actual hook execution. The completed fixture was `/tmp/lite-hook-check.F1cTmyTr`; temporary artifacts may not remain available. The local transcript reference is not an archived copy in this repository.

## Expected and observed behavior

| Scenario | Expected behavior | Recorded observation |
| --- | --- | --- |
| 1. Unset setting | Distinguish unset from command failure and identify the default hooks path. | Unset query: exit 1, empty output; invalid repository path: exit 128; default hooks path: `.git/hooks`. |
| 2. Existing hook | Keep existing routing until replacement is selected. | The existing `.git/hooks` hook executed and recorded `default`. |
| 3. Common `--local` | Both worktrees use the selected common hook source. | Main and linked worktrees resolved to `main/.githooks`; both hook executions recorded `common`. |
| 4. Missing/disabled extension | Guard stops before writing; the original assignment incorrectly expected raw fallback in all repository states. | Guard exited 1 for absent and false values, with unchanged common-config hashes. Raw writes with multiple worktrees exited 128 for absent and false values. A raw write in a separate single-worktree repository reached common/local config. |
| 5. Enabled extension | Only the target worktree receives its setting; Git booleans normalize. | `yes` normalized to `true`; main retained the common path and recorded `common`, while the linked worktree selected its own `.githooks` and recorded `linked`. |
| 6. Command override | Inspection and execution with the same override agree; ordinary routing remains separate. | With matching `-c core.hooksPath=...`, inspection selected the override directory and execution recorded `override`. The next ordinary operation recorded `linked`. |

These observations establish routing in the tested fixtures on Git 2.53.0. They do not establish identical raw `--worktree` behavior on other Git versions.

## Failed attempts and documentation correction

The first fixture script failed because it resolved a relative `git rev-parse --git-common-dir` result from the caller's directory instead of the fixture root. That was a test-harness error. A subsequent attempt exposed the incorrect unconditional-fallback expectation when Git rejected the raw write in a multiple-worktree repository. The CLI then separated single- and multiple-worktree cases and completed all six scenarios; an additional raw-write check confirmed rejection with the extension explicitly false.

Corrections in this documentation follow-up:

1. Replace the unconditional fallback claim in `workspaces.md` with a warning that raw writes may use common config or be rejected; do not infer isolated scope without the extension. Keep the tested guarded write block unchanged.
2. Revise handoff scenario 4 to observe single- and multiple-worktree behavior and record version/state, rather than prescribe a universal raw result. Preserve the original assignment in the source transcript.
3. Show the same command-scoped `-c` override on path inspection and direct hook invocation in a disposable fixture. The new example is syntax-checked, not runtime-tested here; the CLI run demonstrated matching overrides with fixture commits.

## Process observations

The bounded handoff, disposable-fixture permissions, six concrete scenarios and distinction between configuration inspection and hook execution helped the agent find a real documentation defect without changing project hook configuration. Risk-based routine classification kept this bounded test from requiring a significant-project Spec/P/W cycle.

The CLI reported friction from loading broad project history/procedures for a narrow test. The assignment also embedded an incorrect expected result, which initially biased the fixture assertion. Prefer stated safety properties and separately observed version-dependent behavior in future assignments. Workspace setup/recovery proportionality is a separate architectural follow-up; these observations do not approve a lifecycle or permission change.

## Coverage and delivery limits

- Executed in the recorded CLI session: six routing/configuration scenarios with synthetic hooks and fixture Git operations, including the additional disabled-extension raw-write check.
- Checked in this follow-up: document whitespace, Bash-block syntax, local links, unchanged guarded write block and byte-for-byte preservation of workspace creation/cleanup text outside the new hook-connection section.
- NOT_RUN: bundled `.githooks` policy, native agent hooks, hosted CI, HardwareLab pilot, other Git versions and runtime execution of the newly added direct-invocation example.
- The CLI reported no real-project file/configuration writes, commit, push, merge or deployment. Its closing branch/HEAD, dirty-file list and empty index matched the opening state. These are recorded-session observations, not a forensic proof that all external state was unchanged.
- Current documentation and this summary remain local and NOT_COMMITTED. No independent READY/PASS, Owner acceptance, publication or Git-backed durable checkpoint is claimed.
