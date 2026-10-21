# Agent Operating Contract — SDLC Lite

**One root contract.** Other documents, role briefs, templates, memory, reports and Skills do not grant permissions or create a competing lifecycle. Actual OS/sandbox/platform/security controls remain binding.

## Source precedence

1. Current explicit Owner instructions, actual permissions and applicable security boundaries.
2. This root `AGENTS.md` (shared behavior).
3. Approved project specification/plan, task requirements and Owner decisions within those boundaries; adopted ADRs in `docs/decisions/`.
4. Canonical procedures: `docs/workflow/development.md` (the **only** lifecycle), `docs/workflow/memory.md`, `docs/workflow/initialization.md`, `docs/workflow/workspaces.md` and `docs/security/boundaries.md`.
5. Subordinate `.agents/roles/`, templates and optional Skills (techniques, not authority).
6. `memory_bank/`, task handoffs, reports and local caches (observations; verify against Git).

Resolve ambiguity or incompatible requirements before the affected action; do not invent approval or let task notes override security controls.

## Session entry / recovery

1. Read `PROJECT_BRIEF.md`, `PROJECT_MAP.md` and applicable parent instructions. Verify actual repository identity, absolute worktree, branch, HEAD, tracked/staged/untracked state and authorized target.
2. For a derived repository, follow `docs/workflow/initialization.md` before feature work; source-template memory is not the derived project's authority.
3. Read last-integrated `memory_bank/context.md` and `progress.md`; locate the **current task's** branch-local handoff/PR/issue and verify its facts against Git. Another branch's unmerged memory is not current authority.
4. For significant new project work, read the accepted exact specification, frozen reviewed root `plan.md` (P), separate Owner approval and current stage `docs/changes/<task>/work-block.md` (W) with its independent Critic verdict/conformance. For routine work these gates may be NOT_APPLICABLE. Preserve previously accepted legacy task-plan provenance.
5. Restore objective, constraints, dependencies, write-set, required tests, actual privileges and next action. After resume/compaction or a target/ref change repeat affected preflight **before any write**; do not trust inherited cwd, scratch or an agent summary as authoritative.

## Operating rules

- Classify **routine vs significant by risk/impact**, not by code versus Markdown. A tiny reversible safe code fix may be routine; normative policy/security changes may be significant. The route and gates are specified **only** in `docs/workflow/development.md`.
- **Significant project:** Owner accepts exact specification; Orchestrator/Architect prepares committed project plan P; independent **Project Critic READY precedes Owner approval of exact P**. Approved P stays byte-frozen; progress/decisions/verdicts live elsewhere.
- **Autonomous stage:** within approved P, Orchestrator commits actionable W and verifies conformance; independent **Stage Critic READY on exact W** precedes Coder. No new Owner approval per conforming W. Stage READY alone does not grant OS/tool permissions. Scope changes outside P require Owner.
- Coder implements within the approved write-set; independent Reviewer READY and Verifier PASS must bind the same exact source candidate S. Subsequent evidence-only delivery HEAD H requires checked S..H diff and applicable CI at H. No invented PASS, READY or merge status.
- Keep `main` unchanged without separate Owner GO. Covered task commits, non-force push, CI, ordinary REWORK and bounded engineering decisions can be autonomous under approved P and actual permissions. Final acceptance/merge, deployment, privileged/sensitive external actions and material exceptions remain Owner-controlled.
- Before filesystem mutation confirm the actual destination, current repository/worktree scope and unrelated dirty/untracked state. For Git mutations use `git -C <verified-absolute-worktree>`; it is **not isolation**. One writer per overlapping paths; preserve other worktrees.
- Run targeted checks with truthful tracked/untracked/cached content coverage; inspect full diff. Prevent secrets or credentials from entering evidence. Never bypass hooks, force-push, delete unrelated work or expand scope without authority.
- Keep durable task checkpoints and separate independent reports in Git. `memory_bank/` describes last integrated work, **not** live parallel task state. Chat, scratch and agent-local MEMORY are lookup hints only.

## End-of-task / handoff

Use the conditional checkpoint matrix in `docs/workflow/memory.md`. Record exact observed Git SHA, task, scope, verified checks, blockers and next action where required. Working `DELIVERY_READY`, task `COMPLETE/BLOCKED/CANCELLED`, roadmap-stage acceptance, PR merge and deployment are **different facts**; preserve their evidence separately. Only separately authorized integration reconciles shared memory.

**No Controller:** Lite has no admission service, SQLite registry, dispatcher, runtime privilege gate, skill installer or automatic merger.
