# Owner decisions — workspace-creation

## OD-WC-001 — Spec acceptance and planning instruction

- Source: authenticated Owner message in the current architecture conversation, following presentation of the complete local Spec: “принимаю. фиксируем и переходим к плану”. Recorded by the Orchestrator; this record is not an independent signature or a new Owner decision.
- Repository: `oleyna80/agentic-sdlc-lite`; project/task: `workspace-creation`.
- Accepted subject: `docs/projects/workspace-creation/spec.md`, committed without changing the accepted bytes at `d1e75d7e8d31b37cfb7be68416919e28ebfedf04`.
- Git blob: `12d01f34ae18d97c767ceabd90d733fd2f1e180e`.
- Accepted file SHA-256: `e177fcf2b3a13dc6ff419bbf5cd1a0a7cbec482e2523d07496f322ec9f4343f5`.
- Authority: fix the accepted Spec in local Git and proceed to formal project planning. The repository lifecycle requires a committed candidate P and independent Project Critic before separate Owner approval of exact P; preparation includes those local planning commits and review.
- Boundaries: no approval of an unseen P, no executable W or implementation authority yet; no push, PR, merge, deployment, hook activation, cleanup or inclusion of the earlier hook-task changes in these planning commits.

Any later P approval must name its exact reviewed commit/path/blob and original Project Critic report separately. This Spec acceptance does not transfer to a different revision.

## OD-WC-002 — Exact Project P acceptance

- Source: authenticated Owner message in the current architecture conversation, after the exact P and original Project Critic READY report were presented: “посмотрел спек и план. можем начинать”. Recorded by the Orchestrator; not an independent signature or a replacement for the message.
- Repository/project/task: `oleyna80/agentic-sdlc-lite` / `workspace-creation` / `workspace-creation`.
- Accepted P: commit `3161c40a74a55fd2f44e0f1ab1591b353b9aca5e`, `docs/projects/workspace-creation/plan.md`, Git blob `938bc3a27542dd9dae241bcded6068a3ba0cfa75`.
- Original independent Project Critic READY: commit `3cbe8f473d9d8b3205d33704b70c3952d78e9a89`, `docs/changes/workspace-creation/project-critic.md`, Git blob `1be11b2182a2bfd2637f2f36775aa8890b2b15db`.
- Accepted Spec remains the exact subject in OD-WC-001. Neither frozen Spec/P nor the original Critic report is edited by this decision.
- Authority: proceed within the accepted P, including its bounded local task branch, W and independent stage/source assurance, fixture tests, conforming rework and specified non-force task-branch push/PR/actual CI. Actual permissions and all entry conditions still apply; no additional Owner approval per conforming W is required.
- Dependency: P §3 requires a separately authorized committed hook-task checkpoint and settled writer ownership before W. This P acceptance does not grant that excluded task's commit/publication authority. Its current four draft files remain preserved while that separate authority is resolved.
- Exclusions remain as in P: no merge, deployment, cleanup, real worktree creation/deletion, hook activation/configuration changes or broader source changes.
