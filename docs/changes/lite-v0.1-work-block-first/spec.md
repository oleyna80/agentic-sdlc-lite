# Specification — Work-Block-First Lite v0.1

**Status:** Proposed for independent Critic. Applies to WB-LITE-001 only after explicit post-review adoption. Existing Lite policies remain authoritative until then.

## Functional contracts

- **REQ-01 — Portable core.** Maintain one root `AGENTS.md` and canonical `docs/workflow/development.md`. Role briefs, templates, memory and diagrams may not create competing policy or authority.
- **REQ-02 — Native execution.** Rely on installed harness subagent/delegation, tests and permission systems; logical roles in `.agents/roles/` can be supplied as instructions. Do not require native agent installation or runtime-specific adapter.
- **REQ-03 — Optional project plan.** `docs/templates/plan.md` becomes the template for a **whole-project roadmap**: objective, stages/WB IDs, dependencies, sequence, expected outputs, MVP and deployment milestones. It does not itself authorize implementation.
- **REQ-04 — Work Block identity.** Add `docs/templates/work-block.md`. Each WB has ID, parent plan/stage (or standalone), base/current Git facts, objective, expected result, applicable spec/ADR, bounded scope and out-of-scope, roles/handoff, acceptance, checks, risks/stops, rollback, deliverables and next action.
- **REQ-05 — No mechanical ceremony.** Do not require a plan or separate `intent.md`/`spec.md` for simple documentation work. For significant WB, reference existing approved spec/ADR rather than copying them into WB.
- **REQ-06 — Discuss first, preserve decisions.** Orchestrator records accepted decisions, progress and next action in tracked project memory; chat transcripts and agent caches are not SSOT. An Architect is optional, invoked for research/design uncertainty; research outcome becomes an artifact when material.
- **REQ-07 — Mandatory WB cycle.** For nontrivial implementation: Orchestrator drafts WB; Owner accepts material design/scope as applicable; **independent Critic READY** on precise plan/WB revision; Coder; **Reviewer READY**; **Verifier PASS** on same reviewable source candidate; Orchestrator summarizes; integration via PR and Owner merge decision.
- **REQ-08 — Rework and escalation.** Critic REWORK returns to planning; Reviewer REWORK or Verifier FAIL returns to Coder/new reviewable source; BLOCKED or changed architecture/scope escalates to Owner and Architect if useful. No auto-approval or silent role bypass.
- **REQ-09 — Handoff templates.** Existing `subagent-mission.md` and `closeout.md` remain, with short mandatory fields for input contracts, role, access/write boundaries, output/evidence, verdict, residual risk and next authorized action; no excessive integration inventory.
- **REQ-10 — Git discipline.** Task branches or worktrees, no feature development on `main`; preserve unrelated/uncommitted user work; one writer per overlapping write-set; non-force push only to approved subject branch; PR before Owner-authorized merge; deploy separately approved.
- **REQ-11 — Exact candidate.** Review/verification identify exact SHA and scope, differentiate documentation-only evidence updates from substantive changes, and never label unexecuted tests PASS. A source change requiring review invalidates the relevant previous evidence.
- **REQ-12 — Parallel memory.** Keep four committed `memory_bank/` files: `context.md`, `progress.md`, `decisions.md`, `orchestrator-log.md`. Long/concurrent WBs use task-branch `docs/changes/<task>/handoff.md`; shared memory reflects only reconciled integrated facts and is updated by one designated writer/PR.
- **REQ-13 — New-project isolation.** A fresh project created from Lite must initialize project identity, roadmap, ADR selection and memory rather than inheriting the Lite source project's active PR/SHA/task history. Prefer neutral reusable content, do not require a bootstrap program.
- **REQ-14 — Skills.** A mission may reference skills from a **separate GitHub library** for optional manual/native selection. No automatic download/install, network assumptions or library dependency for ordinary tasks.
- **REQ-15 — Hooks.** Retain existing standard Git hooks only. No Codex/Claude native hooks in this scope; explicitly acknowledge cooperative hook limits and GitHub protection/permission reality.
- **REQ-16 — Release distinction.** A closed WB advances the plan only with referenced evidence. Finishing project WBs can prepare an MVP; staging/MVP tests and promotion to production require specific acceptance and Owner authorization, not implicit release.
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
| Project roadmap | Project-specific `plan.md` created from template, when useful |
| Technical requirements | Project-specific `spec.md` / approved ADR |
| Stage delivery contract | `docs/changes/<task>/work-block.md` (or linked documented WB) |
| Independent findings | Critic/Reviewer/Verifier report or linked PR evidence |
| Continuing task state | Task-local `handoff.md` / PR |
| Integrated project state | `memory_bank/`, reconciled against Git/PR facts |

## Acceptance criteria for WB-LITE-001

- **AC-01:** All requirements above are represented in canonical docs/templates without contradiction, duplicate authority or new execution layer.
- **AC-02:** For a sample 3-stage product, `plan.md` describes dependencies while three distinct WBs independently define verifiable outcomes; one stage does not require all WBs be fully planned up front.
- **AC-03:** Simple docs-only task follows Orchestrator-only route; substantive code task invokes Critic → Coder → Reviewer → Verifier and correct rework/escalation.
- **AC-04:** Mission template is enough to delegate Architect/Critic/Coder/Reviewer/Verifier through native tools in both harnesses, without claiming that a portable brief automatically registers a custom agent.
- **AC-05:** A new chat/session reconstructs latest integrated baseline, current task branch/PR, approved WB, decisions, evidence and next action using Git-tracked files.
- **AC-06:** Two concurrent branches cannot silently overwrite shared `memory_bank/` or each other's handoffs.
- **AC-07:** Critic/Reviewer/Verifier identity and SHA evidence is truthful; normative Markdown/source changes after review invalidate relevant assurance; evidence-only changes are explicitly bounded.
- **AC-08:** New project initialization does not accept inherited Lite source-template history as live project state.
- **AC-09:** Existing standard Git hooks, CI and security limitations remain clear. No new executable files or native harness config are added.
- **AC-10:** Repo structure/source-template links work; syntax/whitespace/CI checks and available manual doc consistency checks are recorded with honest PASS/FAIL/NOT_RUN.
- **AC-11:** PR/merge/MVP deployment/production remain separate Owner decisions; no plan/WB/report itself confers platform permissions.

## Not in scope

Actually developing sample applications, installing Skills or native hooks, touching client/production repos, adding controllers, automating approval, protecting GitHub branches by prose, performing deployment, or merging PR #1.

## Prior Critic safeguards

Current Lite R1 findings CRIT-001 through CRIT-008 must remain fixed; source GitHub branch protection gap CFG-001 remains external and open. Changes to the development protocol may not weaken scope/Owner precedence, independent gate evidence, exact-candidate logic or safe parallel memory reconciliation.
