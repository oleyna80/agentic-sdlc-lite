# Project Map — Navigation Only

This index provides paths, not process authority, current task registry, permission or real sandbox isolation.

| Need | Canonical path |
| --- | --- |
| Product identity, intent and source-template warning | `PROJECT_BRIEF.md` |
| Human project journey: origin, current verified maturity, proposed future direction | Optional `ROADMAP.md` (non-authoritative) |
| Initiative intent and accepted Requirements + Design | `docs/projects/<project-id>/spec.md`; optional `intent.md` or authenticated Owner request/Issue |
| Root behavior and precedence | `AGENTS.md` |
| **Two-level lifecycle**, classification/assurance/Owner merge | `docs/workflow/development.md` |
| **First-use initialization** | `docs/workflow/initialization.md` |
| **Project contract P** for new significant initiatives | `docs/projects/<project-id>/plan.md`, exact reviewed revision plus independent Project Critic and separate Owner records |
| **Autonomous stage W** for new significant stages | `docs/changes/<task>/work-block.md` and independent Stage Critic |
| Historical approved root P and per-task legacy plans | Original `plan.md` at exact historical commit; original `docs/changes/<task>/plan.md` when applicable |
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

In a derived repo, initialize identity, map, memory and source-only Spec/P/approval/ROADMAP records **before** feature work. A new significant initiative receives its own stable repository-scoped project ID, exact accepted project-local Spec and subsequently committed project-local P; independent Project Critic precedes separate Owner exact-P approval. A conforming committed W and Stage Critic precede Coder. Routine tasks need no Spec/P/W/ROADMAP. Record real source roots, tests and deployment constraints in this derived map.

After session interruption/compaction verify actual Git target/branch/HEAD, authenticated task identity, exact W → repository/project/P → Spec/intent with separate Critic/Owner evidence and actual permissions; load the current task's handoff. If the binding is missing or stale, STOP: never auto-select root/latest P or a ROADMAP milestone. Scratch/agent MEMORY and unmerged branch summaries are non-authoritative.
