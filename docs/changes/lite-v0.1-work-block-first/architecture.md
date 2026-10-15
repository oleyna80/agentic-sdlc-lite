# Target Architecture — Native Harness + Project Documents

**Proposal, not an additional canonical policy.** After acceptance, concise rules will be integrated into the current `AGENTS.md` and `docs/workflow/development.md`; this document remains planning evidence only.

## Product boundary

SDLC Lite is a **versioned documentation and template kit**. It does not start, dispatch, sandbox or police AI agents. The selected harness (Codex, Claude Code or equivalent) supplies the actual agent runtime and tools. `.agents/roles/` are role instructions; `subagent-mission.md` communicates concrete task inputs and boundaries. Native hook installation, tool profiles and skills are separate choices.

Existing local `.githooks` remain optional conventional Git safeguards, not high-authority controls. GitHub authorization and OS/sandbox permissions take precedence over aspirational document rules.

## Project hierarchy and ownership

- **Project**: `PROJECT_BRIEF.md` is product identity, `PROJECT_MAP.md` is code/navigation reference, an optional project-level `plan.md` is the roadmap.
- **Plan**: stage IDs, order/dependencies, expected stage outputs, MVP target, explicit Owner promotion milestones. Stage definitions are intentionally coarse.
- **Spec / ADR**: stable requirements and design decisions. The WB cites them, never silently replaces them.
- **Work Block**: one bounded delivery stage; Orchestrator instantiates it **when that stage is ready** (not necessarily when the plan is first written). Each WB is validated and closed independently.
- **Task handoff**: current branch's recoverable work and next action. Reports/evidence remain tied to the relevant WB and candidate commit.
- **Project memory**: integrated facts, recent progress, ADR links and meaningful coordination log. A single designated integration writer updates shared memory; unmerged concurrent branches rely on task-local handoffs/PRs.

## Execution routes

### Simple route (no substantial source implementation)

Owner request → Orchestrator checks relevant context and Git facts → analysis or bounded docs/memory update → appropriate minimal check/commit/PR if applicable → concise handoff. Separate WB, Architect, Critic, Coder, Reviewer and Verifier are not mandatory absent higher risk or Owner request.

### Work Block route

1. Owner and Orchestrator clarify the stage goal. Orchestrator saves accepted decisions and may ask Architect for research/design evidence.
2. Draft/link `intent`, `spec` and project `plan` only if they add value. Freeze a concrete `work-block.md` defining exact outcome, acceptance and bounded work.
3. Owner accepts material design/scope, where relevant. Independent Critic checks the exact WB/planning revision: READY or REWORK. Critic cannot grant Owner authority.
4. Coder executes within the approved scope on a dedicated branch/worktree, runs focused tests, inspects changes and provides a committed source candidate and evidence.
5. Independent Reviewer examines exact candidate, code/scope/design drift and test gaps: READY or REWORK; rework returns to Coder.
6. Independent Verifier checks acceptance with applicable executable tests and truthful evidence **on the same source candidate SHA**: PASS/FAIL/BLOCKED. Failure returns to Coder; inability/authority questions return to Owner.
7. Orchestrator consolidates result and handoff, proposes DELIVERY_READY (not automatically merged). Optionally the Owner commissions a holistic architectural review outside the harness.
8. Push approved subject branch, PR and current-head CI; Owner authorizes merge. Deployment and release need separate Owner GO. Confirm actual merge before calling integration complete.
9. Reconcile task/project memory with real merged evidence in an authorized PR/checkpoint; do not mutate protected `main` directly. Advance the plan to the next eligible stage, or evaluate MVP readiness once planned delivery WBs are complete.

If late evidence-only files change PR HEAD, label source candidate SHA separately from final PR HEAD and check actual diff/CI. Normative instructions/spec/code changes trigger affected re-review. Claims of independent isolation must match the actual tool/runtime environment.

## Status vocabulary (document labels, not executable state machine)

- Draft WB: DRAFT → CRITIC_READY → IN_PROGRESS → DELIVERY_READY → COMPLETE, with BLOCKED/CANCELLED when needed.
- `DELIVERY_READY` = source passed required assurance and is ready for integration.
- `COMPLETE` for a WB = deliverable accepted with Git/PR integration disposition verified and memory reconciled or explicitly pending without false merge claims. Final closeout must state whether PR actually merged. A task can be technically finished before merging, but **plan stage is not assumed integrated** until the agreed stage acceptance criterion is satisfied.
- Plan stage statuses: PLANNED, IN_PROGRESS, COMPLETE, BLOCKED, CANCELLED; roadmap updated from evidence, not self-declared progress.
- MVP_DEPLOYED, MVP_VALIDATED and PRODUCTION_RELEASED are separate product milestones with distinct evidence and authorization.

## Skills

A mission can reference an optional approved skill with its source/version. The Orchestrator may consult a future separate GitHub skill library when useful; each installed harness uses its supported native skill mechanism. No fetcher, installer, pinning daemon or skill files are required by the Lite core.

## Two important boundaries

1. A role brief never becomes an independent policy or OS authorization.
2. Current Lite source development history must not be inherited as a new project's operational memory; first-use initialization remains until neutral template packaging makes it unnecessary.

## Antirequirements

Never import active WB controllers, `.agent/active-work-block.json`, SQLite/admissions, native hook wiring, registry or adapter code from `azursystech-site` / full framework. Use their concise **document fields** only.
