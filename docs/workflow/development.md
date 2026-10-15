# Development Protocol — SDLC Lite

**Single canonical definition** of task paths, review/verification gates, exact revisions, and Owner integration decisions. There is no separate SDD protocol, lifecycle authority file, or controller state machine.

## 1. Intake and classification

Owner specifies a goal and constraints. Follow the session preflight in `AGENTS.md`, inspect current Git facts, and record acceptance criteria and scope in the task record or PR.

- **Routine:** small, reversible, well-bounded change. Scope → implementation → focused checks and self-review → task-branch commit → PR/CI → Owner merge decision. A separate Critic, independent Reviewer/Verifier, and new task documents are optional unless the Owner requires them.
- **Significant:** architecture/interface decisions, risky refactor, credentials/security, data or schema changes, production side effects, broad integration, or difficult-to-reverse behavior. Document intent, spec and plan → **Owner acceptance of design/scope** when material architecture/scope decisions are involved → independent **Critic READY** for the exact plan revision → bounded implementation → tests and committed candidate → **Reviewer READY + Verifier PASS for the same exact candidate** → PR and current CI → Owner merge decision.

**Owner acceptance and Critic READY are distinct.** A Critic does not approve product scope, architecture, exceptions, or release. Record Owner design/scope approval in the task, planning artifact before it is frozen for Critic, or an immutable linked Owner/PR decision. If Critic requires a material redesign, obtain renewed Owner acceptance and re-review the revised plan before implementation. Do not begin significant implementation with missing approval or missing Critic READY.

The required independent gates cannot be silently skipped by switching to a routine path. When a reviewer/verifier cannot operate independently or required tests cannot run, report **BLOCKED** and escalate to the Owner. An explicit, recorded Owner risk/exception disposition may allow a separately authorized action, but must never be presented as Reviewer READY, Verifier PASS, or normal assurance clearance.

## 2. Planning, implementation and subagents

1. For significant tasks, retain accepted spec/plan under `docs/changes/<task>/`. For routine tasks, a clear PR or short task record can suffice.
2. Keep Critic's verdict in **a separate report or PR review**, citing the exact reviewed plan commit SHA. Do **not** fill a Critic-result field in the reviewed plan after READY.
3. Create a task branch from the approved base. Worktrees are optional; their procedure is in `docs/workflow/workspaces.md`.
4. One writer at a time for overlapping paths. Delegated agents receive `docs/templates/subagent-mission.md`, including exact scope, revision, output and actual isolation.
5. Change only approved paths. Material discoveries that change plan/scope/risk require a revised Owner decision (where applicable) and renewed affected Critic review.
6. Run applicable tests and inspect the intended staged diff. Report real PASS/FAIL/NOT_RUN and commit only task-owned changes.

## 3. Assurance semantics and exact candidate identity

- Freeze one **exact source candidate SHA** for significant-task review. Independent Reviewer must return **READY** and independent Verifier **PASS** against that same SHA. Reviewer `REWORK` or Verifier `FAIL` requires correction and renewed affected checks. Verifier `BLOCKED`, missing required independence or unavailable tests prevents normal clearance; escalate to Owner.
- Any subsequent edit to **agent instructions, procedures, security rules, accepted specifications, architecture, decisions, role boundaries, application code, or review requirements** is substantive, even when the commit only changes Markdown. It invalidates relevant earlier assurance; request a fresh exact-candidate review and applicable verification.
- A narrow **evidence-only** addition (e.g., a dated test log or review report) may follow a reviewed SHA without rerunning unrelated source review **only when** it cannot change requirements, scope, behavior, responsibilities or a gate. Identify reviewed SHA and final PR HEAD separately; inspect the diff between them and rerun applicable CI on final PR HEAD. When unsure, treat the change as substantive and re-review.
- `docs/architecture/overview.md` visualizes this protocol and does not introduce additional gates. A changed diagram that alters the described process is substantive documentation and must be reviewed.

## 4. Publication, memory and closeout

1. **Before PR or substantive handoff:** commit a recoverable checkpoint: exact task branch/HEAD, checks, risks and next step. For parallel tasks, use `docs/changes/<task>/handoff.md` rather than overwriting the shared `memory_bank/context.md`. Canonical ownership and synchronization: `docs/workflow/memory.md`.
2. Push the task branch and open PR. Required CI must cover the current PR head. A passing check is not Owner approval.
3. The Owner decides whether to merge into protected `main`. Deployment or other consequential actions require separate approval.
4. **After merge/cancellation:** record final PR/merge/disposition evidence using an authorized new documentation branch/PR or the next already approved integration checkpoint, **never by writing directly to `main`**. Until that reconciles, current Git/GitHub facts take precedence over stale shared memory. Do not delete task handoffs before the final disposition is recoverable.
5. Remove worktrees only after the safe checks in `docs/workflow/workspaces.md`.

Final **task closeout statuses** are `COMPLETE`, `BLOCKED`, and `CANCELLED`. `IN_PROGRESS` is only a working-session descriptor, not final closeout. A task may be `COMPLETE` with its PR not yet merged. Record merge, deployment and rollback as **separate facts** supported by exact evidence.

A closeout/handoff records scope, branch/candidate SHA, actual test results, relevant gate reports, pending review/PR/Owner decisions, unresolved risks and next action.
