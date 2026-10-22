# ADR-0002 — Project-local documentation and a human product journey

- **Status:** Architecture approved by Owner; exact ISSUE-010 Spec and Project P accepted. Documentation migration is **proposed in [Draft PR #14](https://github.com/oleyna80/agentic-sdlc-lite/pull/14)**, not integrated at reviewed `main` `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb`. Stage/source/delivery tests must be evidenced separately.
- **Date:** 2026-10-22
- **Repository:** `oleyna80/agentic-sdlc-lite` template source; derived repositories do not inherit its accepted decisions.
- **Provenance:** Owner direction and [accepted Spec](../projects/issue-010-documentation-model/spec.md), source commit `e391d09cc908e886d4e019d54987fc26d34bbb55`, blob `a364ec0fbd21767a36820653bd851d552c8ab7a7`; independently reviewed [Project P](../projects/issue-010-documentation-model/plan.md), commit `41530894af15ecdb9347b8f39e9ee6f939f0bc16`, blob `5b0dfb2654ed3072b655de73068b438dc4cb9b1a`, approved through OD-010-05 in [Owner decisions](../changes/ISSUE-010/owner-decisions.md).

## Context

A repository-root singleton `plan.md` for significant initiatives can collide across parallel projects and be incorrectly selected as the current or default authority. There was no clear separation between lasting product intent, evolving human-facing overview, accepted requirements/design, frozen implementation strategy and actionable bounded work.

## Decision

Keep one root `AGENTS.md` and one normative [Development Protocol](../workflow/development.md). New significant initiatives have unique, stable repository-scoped project IDs and:
- Optional `docs/projects/<project-id>/intent.md` (or authenticated Owner request/Issue revision) for initiative intent.
- Owner-accepted exact `docs/projects/<project-id>/spec.md` combining **Requirements + Design**.
- Frozen reviewed `docs/projects/<project-id>/plan.md` as Project P, approved separately by Owner after independent Project Critic READY.
- Independently Stage-Critic-reviewed `docs/changes/<task-id>/work-block.md` (W) for executable bounded stages.

Recover an **authorized task** first, then the exact W → repository/project identity and exact P commit/path/blob → exact accepted Spec/intent and Owner approval subjects → Project Critic and Owner exact-P decision → W conformance and Stage Critic. No root/latest/folder-scan fallback, approval-by-copy or privilege grant from names and hashes alone.

`PROJECT_BRIEF.md` is the enduring **Product Intent**. Source `ROADMAP.md` describes dated origins, verified current state and proposed directions, without execution authority. `memory_bank/` retains last reconciled integration facts; each task handoff retains current branch-local observations. ROADMAP is optional downstream.

Accepted **Spec/P/W revisions** stay byte-frozen; substantive Spec/P changes repeat affected Owner/Critic gates. W-only changes within the approved P use a new exact W and independent Stage Critic without Owner-per-W. Only actual harness/platform rights govern agent execution; there is no new runtime, Controller, registry, Skills permission system or second lifecycle.

## Alternatives and consequences

Branch-scoped root P still conflicts across merges; keep it solely as historical approved evidence. A globally mutable root plan with execution authority would confuse strategic overview and approval; rejected. A non-authoritative product roadmap plus project-local P was selected. A perpetual P cannot silently cover new significant out-of-scope initiatives.

Historical WB-LITE-002 P/W2, ISSUE-009 P/W1 and root `plan.md` retain **original exact Git subjects and exceptions**, never copied approvals or automatic historical migration. New downstream repositories must deactivate source project Spec/P/Owner decisions, ROADMAP statuses and integrated task memory as active authority, and create their own approved identities/contracts. A downstream ROADMAP may be omitted.

Routine bounded tasks need no mandatory intent document, roadmap, Spec/P/W or new gate. Concurrent branches still require actual diff/base drift review and a single writer per overlapping path.

## Implementation/validation boundary

ADR-0002 complements unchanged [ADR-0001](0001-lite-foundation.md); it neither grants implementation/merge permissions nor claims tests passed. [Proposal R2](../changes/ISSUE-010/proposal-r2.md) T01–T22, real native recovery, independent same-S Reviewer/Verifier and actual delivery-H CI remain separate proof obligations. Scope changes require separate Owner disposition.

**Revisit** upon actual failure of independent cold recovery, downstream inherited-authority isolation, parallel branch conformance, or disproportionate process overhead. Later changes are new approved revisions, not silent edits to frozen P/W.
