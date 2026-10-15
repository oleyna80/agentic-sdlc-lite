# SDLC Lite v0.1 — Work-Block-First Documentation Refinement

**Status:** PROPOSAL — INDEPENDENT CRITIC PENDING.
**Source:** oleyna80/agentic-sdlc-lite, PR #1 (`docs/lite-v1-foundation`), base candidate `02b51d6d087faba0f3eb924591fac561f3bb0104`.
**Owner direction:** 2026-10-15 architecture discussion. Direction agreed; no implementation, merge, deployment or exception approval is implied.

This package is a **reviewable planning candidate**, not an installed policy, a replacement for `AGENTS.md`, or an approved Work Block. Nothing in `proposed/` is active until independently reviewed, accepted and deliberately integrated into canonical paths by a future implementation task.

## Reading order

1. [Intent](intent.md) — why and boundaries.
2. [Specification](spec.md) — requirements, non-goals and acceptance.
3. [Architecture](architecture.md) — plan/WB relationship, orchestration, memory and transitions.
4. [Work Block WB-LITE-001](work-blocks/WB-LITE-001.md) — bounded documentation implementation assignment **for post-Critic execution only**.
5. [Proposed concise documents](proposed/) — draft project plan, Work Block, mission, closeout and development protocol.
6. [Critic brief](critic-brief.md) — exact review questions and response contract.
7. [Handoff](handoff.md) — next action and reconciliation constraints.

## Source templates inspected

- `oleyna80/agentic-sdlc-framework`: `candidate/portable-agentic-sdlc-kit/template/agentic/templates/{work-block,mission-brief,closeout-report}.md`.
- `oleyna80/agentic-sdlc-framework`: `template/docs/templates/{work-block,subagent-mission-brief,closeout-report,critic-report}-template.md`.
- `oleyna80/azursystech-site`: `docs/templates/{work-block,subagent-mission-brief,closeout-report}-template.md`; real WB `docs/changes/sdlc-simplification-v1-wb006/work-blocks/wb-006.md`.
- Current Lite canonical files on the exact source candidate (especially `docs/workflow/development.md` and `docs/workflow/memory.md`).

The source templates are **references**, not upstream authority. Copy only the useful contracts, not Controller/admission/registry/workflow-engine assumptions.

## Scope of this planning branch

Only add documents under this change directory. Keep `AGENTS.md`, `CLAUDE.md`, `docs/workflow/**`, `docs/templates/**`, `memory_bank/**`, hooks, CI and the original PR #1 branch untouched until Critic and the subsequent authorized implementation.

## Decision and handoff

The next action is **an independent read-only Critic on the exact planning branch commit SHA**, covering this entire package against current Lite. The Critic returns READY/REWORK with blocking findings. Owner retains authority over material design changes; Coder starts only after the required accepted design and Critic READY. Do not merge this planning branch into `main` as a substitute for implementation.
