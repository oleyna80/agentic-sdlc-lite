# Target Architecture — Native Harness + Project Documents

**Proposal, not an additional canonical policy.** After acceptance, concise rules will be integrated into the current `AGENTS.md` and `docs/workflow/development.md`; this document remains planning evidence only.

## Product boundary

SDLC Lite is a **versioned documentation and template kit**. It does not start, dispatch, sandbox or police AI agents. The selected harness (Codex, Claude Code or equivalent) supplies the actual agent runtime and tools. `.agents/roles/` are role instructions; `subagent-mission.md` communicates concrete task inputs and boundaries. Native hook installation, tool profiles and skills are separate choices.

Existing local `.githooks` remain optional conventional Git safeguards, not high-authority controls. GitHub authorization and OS/sandbox permissions take precedence over aspirational document rules.

## Project hierarchy and ownership

- **Project**: `PROJECT_BRIEF.md` is product identity, `PROJECT_MAP.md` is code/navigation reference, optional **root `plan.md`** is the sole project roadmap.
- **Plan**: stage IDs, order/dependencies, expected stage outputs, MVP target, explicit Owner promotion milestones. Stage definitions are intentionally coarse.
- **Spec / ADR**: stable requirements and design decisions. The WB cites them, never silently replaces them.
- **Work Block**: one bounded delivery stage; Orchestrator freezes `docs/changes/<task>/work-block.md` **when that stage is ready**, not when the whole roadmap is written. Later phase/verdicts live outside the reviewed WB.
- **Task handoff**: current branch's recoverable phase, verdicts, exact frozen WB and candidate SHAs, PR disposition and next action. Critic/review/verification evidence remains in separate reports or PR records.
- **Project memory**: integrated facts, recent progress, ADR links and meaningful coordination log. A single designated integration writer updates shared memory; unmerged concurrent branches rely on task-local handoffs/PRs.

## Execution routes

### Routine / simple route (low-risk, bounded and reversible)

Owner request → Orchestrator checks context and actual Git state → bounded analysis, docs/memory update **or small safe code fix** → focused checks/self-review → task-branch commit/PR and Owner merge decision where applicable → truthful handoff. Independent roles/WB are optional unless risk or Owner requires them.

Classification depends on **risk, scope, reversibility, and impact on architecture, public interfaces, data, security or authority**, not Markdown-vs-code. For example, a localized conditional bug fix with a regression test and no contract changes is routine. An authentication boundary change is significant even if one line; normative governance Markdown can also be significant.

### Work Block route

1. Owner and Orchestrator clarify the stage goal. Orchestrator saves accepted decisions and may ask Architect for research/design evidence.
2. Draft/link `intent`, `spec` and optional **root `plan.md`** only if useful. Freeze `docs/changes/<task>/work-block.md` defining outcome, acceptance and scope. Existing reviewed `docs/changes/<task>/plan.md` remains a legacy task plan with its own Critic provenance; any WB derived from it explicitly cites the original plan and affected approvals.
3. Owner accepts material design/scope, where relevant. Independent Critic checks the exact WB/planning revision: READY or REWORK. Critic cannot grant Owner authority.
4. Coder executes within the approved scope on a dedicated branch/worktree, runs focused tests, inspects changes and provides a committed source candidate and evidence.
5. Independent Reviewer examines exact candidate, code/scope/design drift and test gaps: READY or REWORK; rework returns to Coder.
6. Independent Verifier checks acceptance with applicable executable tests and truthful evidence **on the same source candidate SHA**: PASS/FAIL/BLOCKED. Failure returns to Coder; inability/authority questions return to Owner.
7. Orchestrator consolidates result and handoff; `DELIVERY_READY` may be an interim **working phase** only. Final task closeout is `COMPLETE / BLOCKED / CANCELLED` even before merge. Owner may request a separate holistic architectural review.
8. Push approved subject branch, PR and current-head CI; Owner authorizes merge. Deployment and release need separate Owner GO. Confirm actual merge before calling integration complete.
9. Reconcile task/project memory against actual Git/PR evidence in an authorized PR/checkpoint, not by direct unapproved `main` writes. **Independently** assess the project roadmap stage's own acceptance criteria before advancing to the next WB or MVP milestone.

If late evidence-only files change PR HEAD, label source candidate SHA separately from final PR HEAD and check actual diff/CI. Normative instructions/spec/code changes trigger affected re-review. Claims of independent isolation must match the actual tool/runtime environment.

## Status and assurance semantics (document labels, not an executable state machine)

- **Frozen WB contract:** scope, acceptance and Owner decision are established before Critic. Do not write verdicts or progress back into the Critic-reviewed WB; separate reports and task-local handoff reference the exact frozen WB SHA.
- **Working task phase (handoff only):** DRAFT / CRITIC_PENDING / IN_PROGRESS / DELIVERY_READY. `DELIVERY_READY` means ready for an Owner integration decision, **not** final task closeout.
- **Final task closeout:** `COMPLETE / BLOCKED / CANCELLED` exactly as in the existing canonical Lite protocol. `COMPLETE` can occur **before PR merge**.
- **PR/integration/deployment:** independent observed facts, not implied by task completion.
- **Project roadmap stage:** PLANNED / IN_PROGRESS / COMPLETE / BLOCKED / CANCELLED. Stage acceptance uses its own criteria/evidence, including integration only when the stage explicitly requires it. Do not derive stage `COMPLETE` mechanically from task `COMPLETE`.
- **Product milestones:** MVP_DEPLOYED, MVP_VALIDATED and PRODUCTION_RELEASED require separate evidence and explicit Owner authorization.

## Canonical paths and legacy task plans

- Optional **root `plan.md`** is the single instantiated **project roadmap**, copied from `docs/templates/plan.md`. No separate active roadmap lives in `docs/changes/`.
- Each new Work Block is a **frozen** `docs/changes/<task>/work-block.md`, with stage status, Critic verdict and candidate SHA recorded in separate handoff/reports.
- Existing `docs/changes/<task>/plan.md` files remain **legacy per-task implementation plans** with their accepted meaning and original Critic provenance. Do not silently rename, reinterpret or discard them. New WB migration references the old plan and review; material contract changes require renewed Owner/Critic approval.
- The later canonical implementation must align the **existing** `docs/workflow/development.md`, `PROJECT_MAP.md`, `docs/changes/README.md` and `docs/workflow/memory.md` to this single mapping; create no competing protocol.

## Skills

A mission can reference an optional approved skill with its source/version. The Orchestrator may consult a future separate GitHub skill library when useful; each installed harness uses its supported native skill mechanism. No fetcher, installer, pinning daemon or skill files are required by the Lite core.

## Two important boundaries

1. A role brief never becomes an independent policy or OS authorization.
2. Current Lite source development history must not be inherited as a new project's operational memory; first-use initialization remains until neutral template packaging makes it unnecessary.

## Antirequirements

Never import active WB controllers, `.agent/active-work-block.json`, SQLite/admissions, native hook wiring, registry or adapter code from `azursystech-site` / full framework. Use their concise **document fields** only.
