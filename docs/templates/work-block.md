# Work Block — WB-<ID>: <Actionable Stage>

> Template only. Mandatory for a **new significant stage inside Owner-approved, Project-Critic-reviewed P**. Routine low-risk bounded tasks (including a tiny safe code fix) may use a mission without P/W/Critic. This template is not authorization.

## Identity and binding

- **Stage ID/title and observable end state:**
- **Repository, verified task branch/worktree and initial base:**
- **Approved parent P commit and `plan.md` Git blob:**
- **Accepted specification blob / Owner exact-P approval reference:**
- **Dependencies / inputs and entry conditions:**
- **Applicable ADRs/accepted constraints and parent conformance evidence path:**

## Scope and acceptance

- **Explicit approved implementation write paths:** <finite paths, not wildcard>
- **Separate authorized evidence paths:** <finite paths>
- **Out of scope / preserved original artifacts:**
- **Expected outputs and dependency mapping:**
- **AC-1:** <observable condition>
- **AC-2:** <observable condition>
- **Checks (positive/negative/native/CI) with required provenance and feasible execution route:**

## Technical latitude and stops

- **Bounded engineering decisions Orchestrator/Architect may take:**
- **Sensitive or consequential operations requiring separate Owner/platform GO:**
- **Material scope/spec/risk/architecture-change escalation:**
- **Rollback/recovery, target verification and one-writer rules:**

## Roles and delivery

- **Orchestrator:** map W to P, commit W, get independent Stage Critic and coordinate autonomous stage.
- **Stage Critic:** READY/REWORK on **exact committed W**, report separately; never re-use Project Critic verdict.
- **Coder:** bounded implementation after Stage READY, source S and focused checks.
- **Reviewer / Verifier:** independent same-SHA S assurance with actual evidence.
- **Delivery:** authorized S/H commits, non-force PR/CI exact H, durable closeout, verified next-stage dependencies; merge requires separate Owner GO.
- **Optional Skills:** known approved references only; they do not grant permissions or gates.

## Immutable review contract

This W is committed **before** independent Stage Critic. Neither W nor approved P is edited to record verdict/status, approval, source/PR SHA or later events. An affected W correction produces **new committed W and Stage Critic**, without Owner-per-WB approval inside P; a material project change requires new P/Project Critic/Owner. Keep all outcomes in separate handoff/reports. No placeholders inside frozen W need post-review filling.
