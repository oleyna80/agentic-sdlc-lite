# Specification — Work-Block-First Lite v0.1

**Status:** Proposed for independent Critic. Applies to WB-LITE-001 only after explicit post-review adoption. Existing Lite policies remain authoritative until then.

## Functional contracts

- **REQ-01 — Portable core.** Maintain one root `AGENTS.md` and canonical `docs/workflow/development.md`. Role briefs, templates, memory and diagrams may not create competing policy or authority.
- **REQ-02 — Native execution.** Rely on installed harness subagent/delegation, tests and permission systems; logical roles in `.agents/roles/` can be supplied as instructions. Do not require native agent installation or runtime-specific adapter.
- **REQ-03 — Optional project plan.** Instantiate a single optional project roadmap at **root `plan.md`** from `docs/templates/plan.md`. New stage contracts use `docs/changes/<task>/work-block.md`. Existing `docs/changes/<task>/plan.md` remain legacy *task implementation plans* with original Critic evidence, not alternate roadmaps. Later align Development, Project Map, changes README and Memory documentation to these paths; do not silently rename/erase old plans.
- **REQ-04 — Frozen Work Block identity.** Add `docs/templates/work-block.md`. Each WB has ID, parent stage (or standalone), **initial Git baseline**, objective, expected result, spec/ADR, scope/out-of-scope, roles, acceptance, checks, risks/stops, rollback and deliverables. Freeze WB scope/acceptance and Owner decision before Critic. Later Critic verdict, working phase, source SHA, Reviewer/Verifier and PR disposition live in **separate handoff/reports**, each citing frozen WB SHA; substantive WB changes require renewed applicable Owner/Critic review.
- **REQ-05 — Risk-based routine work.** No plan/WB or separate `intent.md`/`spec.md` required for small reversible, low-risk documentation, analysis, memory edits **or code fixes** managed directly by Orchestrator with focused tests/self-review and applicable branch/PR. Classify by risk, scope, reversibility and architecture/interface/data/security/authority impact, **not file extension**. Example: localized conditional bug fix is routine; changing authentication boundary is significant even in one line. Normative Markdown changes can also be significant.
- **REQ-06 — Discuss first, preserve decisions.** Orchestrator records accepted decisions, progress and next action in tracked project memory; chat transcripts and agent caches are not SSOT. An Architect is optional, invoked for research/design uncertainty; research outcome becomes an artifact when material.
- **REQ-07 — Mandatory significant-WB cycle.** For significant implementation or formally scoped roadmap stage: Orchestrator drafts WB; Owner accepts material design/scope as applicable; **independent Critic READY** on precise plan/WB revision; Coder; **Reviewer READY**; **Verifier PASS** on same reviewable source candidate; Orchestrator summarizes; integration via PR and Owner merge decision.
- **REQ-08 — Rework and escalation.** Critic REWORK returns to planning; Reviewer REWORK or Verifier FAIL returns to Coder/new reviewable source; BLOCKED or changed architecture/scope escalates to Owner and Architect if useful. No auto-approval or silent role bypass.
- **REQ-09 — Handoff templates.** Existing `subagent-mission.md` and `closeout.md` remain, with short mandatory fields for input contracts, role, access/write boundaries, output/evidence, verdict, residual risk and next authorized action; no excessive integration inventory.
- **REQ-10 — Git discipline.** Task branches or worktrees, no feature development on `main`; preserve unrelated/uncommitted user work; one writer per overlapping write-set; non-force push only to approved subject branch; PR before Owner-authorized merge; deploy separately approved.
- **REQ-11 — Exact candidate.** Review/verification identify exact SHA and scope, differentiate documentation-only evidence updates from substantive changes, and never label unexecuted tests PASS. A source change requiring review invalidates the relevant previous evidence.
- **REQ-12 — Parallel memory.** Keep four committed `memory_bank/` files: `context.md`, `progress.md`, `decisions.md`, `orchestrator-log.md`. Long/concurrent WBs use task-branch `docs/changes/<task>/handoff.md`; shared memory reflects only reconciled integrated facts and is updated by one designated writer/PR.
- **REQ-13 — New-project isolation.** A fresh project created from Lite must initialize project identity, roadmap, ADR selection and memory rather than inheriting the Lite source project's active PR/SHA/task history. Prefer neutral reusable content, do not require a bootstrap program.
- **REQ-14 — Skills.** A mission may reference skills from a **separate GitHub library** for optional manual/native selection. No automatic download/install, network assumptions or library dependency for ordinary tasks.
- **REQ-15 — Hooks.** Retain existing standard Git hooks only. No Codex/Claude native hooks in this scope; explicitly acknowledge cooperative hook limits and GitHub protection/permission reality.
- **REQ-16 — Independent lifecycle facts.** Final **task** closeout is `COMPLETE / BLOCKED / CANCELLED` even before merge; `DELIVERY_READY` is only an active handoff phase. Actual PR/merge and project-roadmap stage acceptance are separate facts with evidence and may differ. MVP validation and production require distinct acceptance and Owner authorization.
- **REQ-17 — Simplicity.** No additional policy files beyond the existing canonical protocol; keep templates concise and omit full-SDLC fields for controller, admissions, state-machine gates, evaluation trajectory, adapter inventories and registry bindings.
- **REQ-18 — Security truthfulness.** Documents, reviews and Git hooks are coordination guidance, not technical isolation. Sensitive credentials, external irreversible actions and production changes require real runtime/platform constraints and explicit Owner decisions.

## Artifact ownership

| Information | Single canonical source |
| --- | --- |
| Product purpose | `PROJECT_BRIEF.md` |
| Code navigation and commands | `PROJECT_MAP.md` |
| Shared agent rules | `AGENTS.md` |
| Lifecycle/gates | `docs/workflow/development.md` |
| Memory operations | `docs/workflow/memory.md` |
| Project roadmap | Optional **root `plan.md`**, instantiated from `docs/templates/plan.md` |
| Technical requirements | Project-specific `spec.md` / approved ADR |
| Stage delivery contract | Frozen `docs/changes/<task>/work-block.md`; legacy `docs/changes/<task>/plan.md` retains prior reviewed task-plan meaning |
| Independent findings | Critic/Reviewer/Verifier report or linked PR evidence |
| Continuing phase/verdicts and task state | Task-local `handoff.md`, separate Critic/Reviewer/Verifier reports or PR records; never post-Critic updates in WB |
| Integrated project state | `memory_bank/`, reconciled against Git/PR facts |

## Acceptance criteria for WB-LITE-001

- **AC-01:** All requirements above are represented in canonical docs/templates without contradiction, duplicate authority or new execution layer.
- **AC-02:** For a 3-stage product, optional **root `plan.md`** lists dependencies and independently frozen `docs/changes/<task>/work-block.md` defines each actionable stage. Existing `docs/changes/<task>/plan.md` remains legacy reviewed task-plan evidence, not another roadmap.
- **AC-03:** Both docs clarification and small reversible safe code fix can use the routine Orchestrator path with focused checks/PR; a significant interface/security/data/policy change uses WB → Critic → Coder → Reviewer → Verifier and proper rework/escalation.
- **AC-04:** Mission template is enough to delegate Architect/Critic/Coder/Reviewer/Verifier through native tools in both harnesses, without claiming that a portable brief automatically registers a custom agent.
- **AC-05:** A new chat/session reconstructs latest integrated baseline, current task branch/PR, approved WB, decisions, evidence and next action using Git-tracked files.
- **AC-06:** Two concurrent branches cannot silently overwrite shared `memory_bank/` or each other's handoffs.
- **AC-07:** Critic/Reviewer/Verifier verdicts and exact SHA evidence stay **outside frozen WB**; no post-Critic mutation of reviewed scope/acceptance for status/PR fields. Normative Markdown/WB/source changes invalidate relevant assurance; evidence-only updates are separately bounded.
- **AC-08:** New project initialization does not accept inherited Lite source-template history as live project state.
- **AC-09:** Existing standard Git hooks, CI and security limitations remain clear. No new executable files or native harness config are added.
- **AC-10:** Repo structure/source-template links work; syntax/whitespace/CI checks and available manual doc consistency checks are recorded with honest PASS/FAIL/NOT_RUN.
- **AC-11:** PR/merge/MVP deployment/production remain separate Owner decisions; no plan/WB/report itself confers platform permissions.

## Not in scope

Actually developing sample applications, installing Skills or native hooks, touching client/production repos, adding controllers, automating approval, protecting GitHub branches by prose, performing deployment, or merging PR #1.

## Prior Critic safeguards

Current Lite R1 findings CRIT-001 through CRIT-008 must remain fixed; source GitHub branch protection gap CFG-001 remains external and open. Changes to the development protocol may not weaken scope/Owner precedence, independent gate evidence, exact-candidate logic or safe parallel memory reconciliation.
