# Agent Operating Contract — SDLC Lite

**One root contract.** No other document, agent role, memory file, template or README may create independent authority or override it. This is a working convention, not an OS/remote permission system.

## Source precedence

1. Explicit current Owner instructions, applicable platform security and externally enforced permissions.
2. This root `AGENTS.md` (project-wide agent behavior).
3. The approved task specification and current Owner decisions, then the recorded architecture decisions in `docs/decisions/`.
4. Domain-specific canonical procedures: `docs/workflow/development.md` (workflow/assurance), `docs/workflow/memory.md` (knowledge retention), `docs/workflow/workspaces.md` (Git/worktree procedure) and `docs/security/boundaries.md` (security).
5. Role prompts in `.agents/roles/` (task responsibilities only), templates and reports (evidence only).
6. `memory_bank/` and session logs (current orientation, never permission or normative policy).

If two authoritative sources conflict, or an entry is stale, do not guess: report the conflict to the Owner and use verified current project/Git facts.

## Mandatory session entry

1. Read `PROJECT_BRIEF.md`, `PROJECT_MAP.md`, `memory_bank/context.md`, and `memory_bank/progress.md`.
2. Inspect Git remote, branch, HEAD, status, and applicable task/specification; verify memory against actual repository state.
3. Read relevant decisions from `docs/decisions/` and applicable domain procedures only. Do not load every template/agent file automatically.
4. Identify the objective, scope, acceptance criteria, source write paths, test strategy, and any security constraints.
5. Preserve unrelated changes, untracked files, user worktrees and other tasks.

## Core operating rules

- `main` is stable; make implementation changes only on a task branch, never directly on `main`.
- Use the appropriate **routine** or **significant** path from `docs/workflow/development.md`; that is the single canonical definition of process and review gates.
- One write-capable agent per overlapping write-set. Subagents are bounded by explicit mission briefs and do not gain independent authority.
- Relevant tests, scope/diff inspection and truthful reporting are required. No pretending that source review is an executed test or that self-review is independent.
- Never merge to `main`, deploy, expose client data or perform destructive/external privileged actions without their separate Owner approval and actual platform permissions.
- Preserve all material changes in project files/Git per `docs/workflow/memory.md`; **chat history is not project memory**.
- Do not bypass hooks, force-push, discard files, change credential stores, or silently widen scope.

## End-of-task handoff

Before returning a task for review or ending a substantive session, follow the memory synchronization procedure and report: task/branch, exact SHA, changed files, performed checks, unresolved issues, next step and PR link (if any). Do not mark completion when acceptance evidence is missing.

**No controller:** No admission, active-state machine, SQLite registry, privilege gate or orchestration runtime exists in Lite. Keep it that way unless the Owner explicitly authorizes a separate redesign.
