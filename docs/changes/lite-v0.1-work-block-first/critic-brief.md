# Independent Critic Assignment — WB-LITE-001 (Read-Only)

**Review status:** NOT REVIEWED. This is the **mission brief**, not Critic findings or an approval.
**Repository:** `oleyna80/agentic-sdlc-lite`.
**Planning branch:** `docs/lite-v01-wb-first-design-20261015`.
**Base candidate:** `02b51d6d087faba0f3eb924591fac561f3bb0104` on PR #1 `docs/lite-v1-foundation`.

## Exact subject

Resolve and state the **actual current planning branch HEAD SHA** before review. Review that commit, **all files within `docs/changes/lite-v0.1-work-block-first/`**, and the existing canonical Lite files to which the plan applies. Do not review merely a hand-picked diff; assess integration with existing Lite contracts and previous Critic fixes.

## Objective

Independently determine if WB-LITE-001 and its concrete draft templates/protocol are READY for **documentation-only implementation** as a minimal Work-Block-driven SDLC using native Codex / Claude Code, or require REWORK.

## Review questions

1. Does `plan.md` clearly mean **project roadmap**, while a WB is one separately executable, Critic-reviewed stage? Are spec/intent/ADR references coherent and non-duplicating?
2. Are simple Orchestrator-only tasks unblocked by excessive ceremonial gates, while significant WBs reliably require Critic, Coder, Reviewer, Verifier, evidence and Owner authority?
3. Does the proposed WB template contain exactly the minimum fields needed to prevent scope drift and ambiguous acceptance? Which fields are missing or redundant?
4. Is native harness orchestration genuinely sufficient, with **no** additional install/config/runtime code, adapter, registry, controller or hidden mandatory Skill library?
5. Is `CLAUDE.md` `@AGENTS.md` import proposal correctly scoped, with `AGENTS.md` the sole shared contract and portable role briefs treated as instructions, not automatically registered custom agents?
6. Can memory survive chat loss and parallel branches without silently overwriting task handoffs or shared `memory_bank/`? Is the source-template first-use inheritance risk still addressed?
7. Are R1 CRIT-001…CRIT-008 protections, exact review/verification rules and Owner approval vs Critic verdict preserved? Does any draft reopen a resolved contradiction?
8. Is candidate SHA evidence truthful (including normative Markdown changes and evidence-only exceptions), are Git hooks properly characterized, and is GitHub `main` protection gap CFG-001 explicitly still external?
9. Does project-level MVP → validation → Owner-authorized production remain distinct from WB code closeout and PR merge?
10. Is the future implementation scope minimal, authorized, rollback-safe and free of duplicate policy/extra mandatory documentation?

## Required report

- **Reviewed exact commit SHA** and paths inspected.
- **Verdict:** READY or REWORK.
- Blocking findings with severity, precise file/section evidence, why it matters and **minimum correction**.
- Nonblocking improvements separate from blockers.
- Conflicts with the current canonical Lite protocol/roles/memory.
- Review type (read-only source review, which tools/runtime; what independence/isolation was and was not actually established).
- Explicit statement: no merge/implementation/platform security authorization is implied by this verdict.

Deliver a separate report/PR review tied to that SHA. Do **not** append Critic verdict to a frozen WB/plan or modify any source files during Critic review.
