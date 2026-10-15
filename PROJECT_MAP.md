# Project Map — Navigation Only

This index identifies canonical destinations. It grants no permissions and defines no additional process.

| Need | Canonical file / location |
| --- | --- |
| Project purpose and scope | `PROJECT_BRIEF.md` |
| Shared agent behavior and precedence | `AGENTS.md` |
| Development, review, delivery procedure | `docs/workflow/development.md` |
| Operational memory lifecycle and source-of-truth rules | `docs/workflow/memory.md` |
| Git branches/worktrees and safe cleanup | `docs/workflow/workspaces.md` |
| Security boundaries | `docs/security/boundaries.md` |
| Agent/subagent responsibility definitions | `.agents/roles/` |
| Agent roster/navigation | `docs/workflow/agent-roles.md` |
| Architecture and relationships | `docs/architecture/overview.md` |
| Accepted durable design decisions | `docs/decisions/` |
| Active session handoff | `memory_bank/context.md` |
| Recent work and checkpoints | `memory_bank/progress.md` |
| Index of decisions affecting current work | `memory_bank/decisions.md` |
| Key orchestrator actions and delegated outcomes | `memory_bank/orchestrator-log.md` |
| Task-specific intent/spec/plan/reports | `docs/changes/<task>/` (as needed) |
| Copy-on-use non-authoritative forms | `docs/templates/` |
| Local cooperative Git checks | `.githooks/` |
| GitHub CI | `.github/workflows/` |

## Adaptation to a new software project

When this kit is used as a repository template, update `PROJECT_BRIEF.md` and this map with: application source roots, supported environments, test/build commands, deployment constraints, data classifications and relevant interfaces. Do not put those facts into generic agent/role prompts.

## Source of truth

For actual program behavior inspect source and tests; for why a design exists inspect `docs/decisions/`; for a specific task inspect its approved spec/plan and exact Git diff; for what to do next inspect `memory_bank/context.md` and verify it. When information conflicts, resolve against the authoritative source and correct stale memory. Do not rely on chat summaries.
