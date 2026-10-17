# Project Map — Navigation Only

This index provides paths, not process authority, current task registry, permission or real sandbox isolation.

| Need | Canonical path |
| --- | --- |
| Project identity and source-template warning | `PROJECT_BRIEF.md` |
| Root behavior and precedence | `AGENTS.md` |
| **Two-level lifecycle**, classification/assurance/Owner merge | `docs/workflow/development.md` |
| **First-use initialization** | `docs/workflow/initialization.md` |
| **Project contract P** for significant projects | Root `plan.md`, reviewed exact P plus separate Critic/Owner records |
| **Autonomous stage W** for new significant stages | `docs/changes/<task>/work-block.md` and independent Stage Critic |
| Legacy approved task plan, original provenance retained | `docs/changes/<task>/plan.md` |
| Canonical conditional checkpoint / recovery | `docs/workflow/memory.md` |
| Safe Git/non-Git targets and worktree cleanup | `docs/workflow/workspaces.md` |
| Role navigation / actual briefs | `docs/workflow/agent-roles.md`, `.agents/roles/` |
| Architecture diagram | `docs/architecture/overview.md` |
| Security details | `docs/security/boundaries.md` |
| Accepted durable design rationale | `docs/decisions/` |
| Task-local progress/independent reports | `docs/changes/<task>/handoff.md`, linked reports |
| Last reconciled integrated project context | `memory_bank/context.md`, `progress.md`, `decisions.md`, `orchestrator-log.md` |
| Optional non-authoritative forms | `docs/templates/` |
| Optional Git hooks / structural CI | `.githooks/`, `.github/workflows/` |

## Adaptation and recovery

In a derived repo, initialize identity, map, memory and source-only historical references **before** feature work. For significant work instantiate root P only after specification acceptance and review it before Owner plan approval; routine tasks do not need P/W. Record actual source roots, tests, deployment constraints and task-specific runbooks in the derived map.

After session interruption/compaction verify actual Git target/branch/HEAD, supported checkpoint and Owner permissions; load the current task's handoff and independent evidence. Scratch/agent MEMORY and one branch's unmerged summary do not supersede verified state.
