# WB-LITE-001 — Converge Lite on Work-Block-First Documentation

- **Status:** DRAFT / INDEPENDENT CRITIC PENDING — implementation NOT authorized.
- **Date:** 2026-10-15.
- **Repository:** `oleyna80/agentic-sdlc-lite`.
- **Approved direction:** Owner's 2026-10-15 discussion (document-first SDLC, project-plan-to-WB stages, native harness, no custom orchestration).
- **Source candidate:** PR #1 `docs/lite-v1-foundation` at `02b51d6d087faba0f3eb924591fac561f3bb0104`.
- **Planning branch:** `docs/lite-v01-wb-first-design-20261015`.
- **Critic approval:** PENDING; record separately, referencing exact planning revision.
- **Target implementation branch:** new short-lived docs branch based on the **then verified** planning candidate / target PR base; Orchestrator must reconcile prior PR #1 head before implementation.
- **Parent roadmap:** Lite v0.1 Foundation (single bounded documentation delivery WB, no mandatory project `plan.md` needed for this refinement).

## Objective

Turn the existing Lite documentation and templates into an unambiguous Work-Block-led, Git-memory-preserving engineering cycle with an optional **project roadmap** distinct from individual Work Blocks, without adding any harness/runtime infrastructure.

## Expected final result

- A developer can discuss a project, document accepted decisions, write optional project plan and derive one executable WB at a time.
- Nontrivial WB requires Critic → scoped Coder → independent Reviewer → Verifier, honest SHA-tied evidence and Owner-controlled PR/merge; simple docs-only work can remain with Orchestrator.
- A new coding-agent session can reconstruct current project and WB from Git-tracked documents, not chat.
- Canonical files contain the approved contracts; no extra controller, native hook, software adapter or skill installer.

## Inputs and authority

- Existing `AGENTS.md`, `docs/workflow/development.md`, `docs/workflow/memory.md`, `docs/workflow/initialization.md` and `docs/security/boundaries.md` at PR #1 source candidate.
- This package: `intent.md`, `spec.md`, `architecture.md`, `proposed/*`.
- Reuse concise fields from framework portable templates and site templates; reject full-SDLC governance/runtime baggage.
- Preserve CRIT-001…CRIT-008 safeguards. CFG-001 remains external.
- Any material deviation from agreed model → STOP and Owner + optional Architect; Critic may return REWORK but cannot unilaterally accept new architecture.

## Approved *proposed* implementation write scope (post-Critic only)

Existing canonical documentation:
- `AGENTS.md`, `CLAUDE.md`, `README.md`, `PROJECT_MAP.md`.
- `docs/workflow/development.md`, `docs/workflow/memory.md`, `docs/workflow/initialization.md` (minimal, only where needed).
- `docs/architecture/overview.md`, `docs/changes/README.md`.
- `.agents/roles/README.md` and the six existing role briefs.
- `docs/templates/plan.md`, `docs/templates/intent.md`, `docs/templates/spec.md`, `docs/templates/subagent-mission.md`, `docs/templates/closeout.md`, `docs/templates/session-handoff.md`, `docs/templates/critic-review.md`, `docs/templates/review.md`, `docs/templates/verification.md`.
- New `docs/templates/work-block.md`.
- The **task-local** artifacts in this change directory.
- `memory_bank/{context,progress,decisions,orchestrator-log}.md` only via designated, safely reconciled integration scope (not concurrent feature-branch overwrites).

**Not in scope:** changing `PROJECT_BRIEF.md` identity, production app code, `.githooks/**`, `.github/**`, `docs/security/boundaries.md`, creating `.claude/**` or `.codex/**` configs, downloading Skills, implementing runtime adapters/controllers/validators, changing GitHub settings, merge/deploy. Do not widen the write set without Owner approval and renewed relevant Critic review.

## Implementation outline (not commands to micromanage agents)

1. Align `AGENTS.md` entry and Orchestrator role with document-first native-harness operation and actionable memory discipline. `CLAUDE.md` imports `@AGENTS.md` rather than duplicating the policy.
2. Revise `development.md` to distinguish simple Orchestrator work from nontrivial WB cycle, project roadmap vs WB, truthful candidate review/verification, closing and Owner-controlled integration.
3. Introduce and adapt concise templates `plan.md` (roadmap), `work-block.md` (delivery stage), `subagent-mission.md` (bounded delegation), `closeout.md` (outcome/evidence/next action). Keep intent/spec and existing report templates coherent without duplicating policy.
4. Preserve parallel memory/integration safety, source-template first-use reset and exact assurance semantics. Update role briefs, README/navigation/diagram solely for consistency.
5. Perform manual and CI-backed scenario checks, record evidence; independent Reviewer and Verifier check one exact source candidate.

## Required roles and handoffs

- **Orchestrator:** owns scope, planning, task-local handoff and staged memory reconciliation; no unilateral material design/merge authority.
- **Architect (optional):** read-only research where a genuine design question arises.
- **Critic (mandatory before Coder):** independently review the whole proposed WB/spec and exact revision; report READY/REWORK separately.
- **Coder:** post-READY scoped documentation implementation, checks and reviewable commit.
- **Reviewer:** independent whole-diff/scope/contradiction review; READY/REWORK.
- **Verifier:** independently check ACs, link resolution and applicable CI/negative scenarios; PASS/FAIL/BLOCKED.

Roles use native harness delegation or separately established sessions; role descriptions are not automatically installed agents and cannot manufacture isolation.

## Acceptance

All `spec.md` AC-01…AC-11 satisfied with direct file/line or observed Git/CI evidence. In particular verify both simple and WB paths, roadmap with several stages, recovery with no chat, parallel branches, new-project initialization, no new executables, honest exact-SHA reviews and preservation of R1 fixes.

## Checks and rollback

- Inspect full target diff and `git diff --check`; run existing repository Lite Checks on actual candidate and PR HEAD; check links/paths against actual tree.
- Manually simulate 3-stage project, two parallel task handoffs, rework on changed source candidate, fresh new project and first-use recovery. Clearly distinguish **source inspection** from **executed smoke test**.
- If reviewers request changes, amend only scope-approved files, create new candidate and re-run affected evidence.
- Rollback is ordinary Git revert of bounded docs commit; no native hook or production state should be affected.

## Stop conditions

Missing Critic READY, material design change, scope enlargement, unexpected branch/dirty state, independently required but unavailable assurance, risk to unrelated files, production effects or Owner decisions → stop affected operation, preserve handoff and ask Owner.

## Closeout/deliverables

Canonical docs/templates, approved diff/commit, honest Critic/Reviewer/Verifier evidence, final brief, task handoff, verified branch/PR/CI status and integrated project memory disposition. No automatic PR merge, deployment or installation in this WB.
