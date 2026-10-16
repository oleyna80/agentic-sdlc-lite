# ADR-0001 — Single-authority lightweight SDLC with Git-backed memory

- **Status:** accepted design direction for the **source repository**; implementation is a candidate under review.
- **Date:** 2026-10-15
- **Owner:** SDLC Lite project Owner
- **Scope:** `oleyna80/agentic-sdlc-lite` template **source only**; new projects must explicitly adopt or replace.
- **New-project handling:** Review before use; do not automatically treat a copied source-repository decision as accepted in a new repository. See `docs/workflow/initialization.md`.

## Context

The full AzurSysTech SDLC accumulated overlapping agent, SDD, lifecycle and role instructions. A portable alternative was requested with simple Git hooks, delegated logical subagents, and a reliable committed knowledge trail between chat sessions.

## Decision

Use a single root agent contract (`AGENTS.md`), one canonical development protocol, distinct memory/Git/security procedures, and subordinate portable role briefs and task templates. Keep the integrated project-memory summary Git-tracked under `memory_bank/`, task-local handoffs under `docs/changes/<task>/`, and durable rationale under `docs/decisions/`. Do not introduce a second SDD/lifecycle policy or Controller/admission/SQLite runtime.

## Rationale and consequences

Canonical ownership reduces contradictory instructions. Each task branch must preserve its handoff while concurrent work proceeds; integrated memory is reconciled separately. Local hooks/prompts are cooperative and cannot replace platform access controls or true independent isolation.

## Evidence / revisit trigger

- Draft PR #1: `docs/lite-v1-foundation`. Source candidate identity must be verified from live GitHub; review status is not inferred from this ADR.
- Revisit if parallel task memory is lost, project template clones inherit inappropriate accepted status, independent checks cannot be performed accurately, or a concrete need justifies stronger technical enforcement.
