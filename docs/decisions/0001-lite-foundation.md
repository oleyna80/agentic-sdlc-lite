# ADR-0001 — Single-authority lightweight SDLC with Git-backed memory

- **Status:** accepted and implemented design direction for the **source repository**; Foundation merged to `main` on 2026-10-16. This does not grant adoption in derived projects.
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

- [Foundation PR #1](https://github.com/oleyna80/agentic-sdlc-lite/pull/1) merged into `main` at `a4a47b3b8b8e243721b5757c13feab19d65ef30f` (2026-10-16) after full Foundation Reviewer READY, Verifier PASS and CI PASS on candidate `937ed40d94ac37daaf92a4404b4507d2da1e4d1f`. Historical review/merge evidence must still be verified from GitHub.
- Revisit if parallel task memory is lost, project template clones inherit inappropriate accepted status, independent checks cannot be performed accurately, or a concrete need justifies stronger technical enforcement.
