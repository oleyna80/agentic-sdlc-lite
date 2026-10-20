# ISSUE-009 — Planning handoff

## Checkpoint: 2026-10-20

Objective: independently correct fail-closed Git history inspection in the mandatory whitespace CI gate. Classification: significant. Working phase: specification/P proposal; implementation BLOCKED pending mandatory approvals/gates. No W, source candidate, independent verdict or CI PASS is claimed.

Authority: [D1](owner-decisions.md) permits stacked planning only. [Specification](specification.md), SHA-256 `1b4c9900b3e73501b7d201a8a785f7422452e83af1ad2592bab69100a021e4c4`, is proposed for exact Owner acceptance. [Root P](../../../plan.md) is a complete draft candidate; formal Project Critic remains blocked until that acceptance. P approval is a later, separate gate.

## Verified target and preservation

- Repository: `https://github.com/oleyna80/agentic-sdlc-lite.git`.
- Task worktree: `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/issue-009-planning`.
- Task branch: `docs/issue-009-fail-closed-history`.
- Observed predecessor HEAD / creation base: `69246782c99423721fdb4a6adefc693ee6f57613`.
- Live main at preflight: `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`.
- Live PR #11: OPEN, DRAFT, unmerged; branch `docs/wb-lite-002-implementation`, head `69246782c99423721fdb4a6adefc693ee6f57613`; Issue #9 OPEN.
- Existing PR #11 local checkout remains `bceaa971589f3485b417978127b7a3a4a1c01917`, clean including ignored/untracked state; it was not switched or advanced. Its difference to remote head is only WB-LITE-002 handoff evidence.
- New worktree initially clean. No pre-existing task directory or branch collision. New branch created from the exact already-present object; no fetch/merge/rebase needed.
- Old P `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`, W2 `63ed889d8991a5d2187bb82709f4cbb5773db1cc` and S12 `5e42d2b1239f26962ee5f5942cd318997b51501c` verified ancestors of base (all `merge-base --is-ancestor` exit 0).
- Old P/base plan blob both `fcfda1f6dfa011a5688c5f04111d918d6bbce707`; W2 blob `19beb072f321a7c9730ea86630112ce8c1b90dbb`; inherited workflow blob `c60e726dd03b72168c4483972e9f11c0ff05453d`.

Planning writes in this checkpoint are exactly `plan.md`, `docs/changes/ISSUE-009/specification.md`, `owner-decisions.md`, `handoff.md` (the latter three under that task directory). Workflow, old task artifacts and shared memory are preserved. Future path envelope is a proposal in P; no implementation/report content is fabricated.

## Technical readiness and test design

S10 was directly inspected at its exact Git object: checked count/status is insufficient root proof in shallow history. Preferred evaluation direction is validated actual commit headers plus available first parent, with explicit status checks. [Spec](specification.md) defines AC-1…AC-9, T01…T14, actual-body extraction, Bash syntax, shallow depth-2 linear/merge/fetch fixtures, depth-1 missing parent, plausible stdout with exit 74, invalid output, checker-status propagation and before/after evidence. These candidate implementation tests are designed, **NOT_RUN** in this planning mission. No workflow change has been made.

## Executed planning checks

- `git diff --check`: exit 0 for tracked changes; new files additionally read in full and checked for trailing whitespace/final newline by Python (exit 0).
- Four-document local Markdown links and specification SHA-256 cross-reference: Python assertions exit 0.
- Direct byte comparison to base for the workflow and frozen W2: exit 0, unchanged.
- Root P and all three new documents inspected; scope contains only these four planning paths. No candidate implementation tests or actual CI were run.

## Permissions and remaining gates

Initial session writable roots are the WB-LITE-002 worktree and `/tmp`; that does not authorize writing ISSUE-009 through the wrong checkout. Creating this sibling task worktree/common Git refs required a separately reviewed sandbox escalation under D1. Future writes here/common Git metadata likewise require actual available permission or a fresh appropriately rooted session. Escalation access is not P approval or OS isolation.

Next steps:

1. Obtain Owner acceptance of exact proposed specification bytes/commit/blob, separately from architecture D1; record only the actual decision.
2. Assign independent Project Critic to committed root P/spec, with D1, live refs and actual permission limits. Critic checks exact spec acceptance, one-stage scope, shallow/fault coverage, stacked CI feasibility and preserved old ancestry. It must not edit P, workflow or old reports. No R8/R2 reuse.
3. After Critic READY, request separate Owner approval of that exact P and delegated bounds. Only then draft/commit conforming W and obtain independent Stage Critic READY.
4. Coder remains blocked until all entries and real permissions hold. Later Reviewer/Verifier must bind same S; actual Actions on H, publication and Owner merge remain distinct. No PR created or push performed in this planning mission.

Formal Project Critic, Stage Critic, Reviewer, Verifier, current-head Actions: **NOT_RUN**. Exact post-checkpoint commit/blob IDs and planning checks are reported after commit, not invented as this file's self-reference. Resume by inspecting Git/status and these paths; do not trust this dated snapshot over live refs.

## Checkpoint: Project P approved; W preparation (2026-10-20)

Exact P `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74` remains byte-frozen (tree `b100e709d9472a4e617e67dfa42fd46bbb734fc9`, plan blob `399b3bb96c6482d35fed93411104d04d3d191482`, specification blob `688ab2744f19307dc8e15b85d0678930aa02ec92`, specification SHA-256 `1b4c9900b3e73501b7d201a8a785f7422452e83af1ad2592bab69100a021e4c4`). Owner accepted the exact P after independent Project Critic READY; see D3 in [owner-decisions.md](owner-decisions.md) and preserved report [project-critic.md](project-critic.md). This is not authorization to merge.

Live pre-write observation: task branch `docs/issue-009-fail-closed-history`, HEAD P above, direct parent `69246782c99423721fdb4a6adefc693ee6f57613`, clean staged/tracked/untracked/ignored state. Remote stacked branch remains at `69246782c99423721fdb4a6adefc693ee6f57613`; `main` remains `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`. PR #11 remains OPEN/DRAFT on `main` at `69246782c99423721fdb4a6adefc693ee6f57613`, with prior observed validate run `39292507255` PASS; Issue #9 remains OPEN. Recheck live before publication or integration.

Current sandbox lacks write permission to this task worktree and shared Git metadata; the authorized narrow escalation is required for task-local records and task-branch commits. No W, workflow change, fixture, Reviewer/Verifier verdict or Issue #9 CI result exists yet.

Next: preserve this approval/report evidence in a separate task commit, prepare one actionable W bound to exact P and D3, commit W, then obtain independent Stage Critic READY before any Coder edit. Keep PR #11, its S12/P/W2 and `main` unchanged.
