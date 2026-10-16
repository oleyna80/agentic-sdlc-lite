# Project Map — Navigation Only

This index points to canonical files. It grants no runtime permission, process gate or independent project state.

| Need | Single source / path |
| --- | --- |
| Purpose and repo identity | `PROJECT_BRIEF.md` |
| Shared agent behavior | `AGENTS.md` |
| First use in a derived project | `docs/workflow/initialization.md` |
| Routine/significant Work Block procedure and review gates | `docs/workflow/development.md` |
| Optional one-project roadmap | Root `plan.md`, when instantiated from `docs/templates/plan.md` |
| Memory retention, concurrent tasks and synchronization | `docs/workflow/memory.md` |
| Worktree/branch and safe cleanup | `docs/workflow/workspaces.md` |
| Safety details | `docs/security/boundaries.md` |
| Role briefs | `.agents/roles/` |
| Role links | `docs/workflow/agent-roles.md` |
| Architecture diagram | `docs/architecture/overview.md` |
| Durable accepted engineering decisions | `docs/decisions/` |
| Integrated project context | `memory_bank/context.md` |
| Recent integrated progress | `memory_bank/progress.md` |
| Accepted decision index | `memory_bank/decisions.md` |
| Material coordination log | `memory_bank/orchestrator-log.md` |
| Task-local handoff for unmerged/parallel branches | `docs/changes/<task>/handoff.md` |
| Frozen Work Block per new significant stage | `docs/changes/<task>/work-block.md` |
| Previously approved legacy per-task plan | `docs/changes/<task>/plan.md` with original Critic provenance |
| Task specification/evidence | `docs/changes/<task>/` or exact PR |
| Optional forms | `docs/templates/` |
| Git hooks | `.githooks/` |
| GitHub checks | `.github/workflows/` |

## Adaptation

For a new project, first use `docs/workflow/initialization.md`. For multi-stage work, optionally create root `plan.md` (never reclassify a legacy task `plan.md` as this roadmap). Then record real source roots, test/build commands, accepted dependencies, interfaces, environments and deployment constraints here. Keep business/product details in `PROJECT_BRIEF.md`.

## Recovery

For actual program behavior inspect source/tests; for why a design exists inspect `docs/decisions/`; for planned stages consult root `plan.md` if present; for current work inspect its frozen WB and *the task's own branch/handoff or PR* and live Git/GitHub state; for integrated context inspect `memory_bank/`. If inconsistent, the verified current Git/source facts prevail over a stale operational snapshot.
