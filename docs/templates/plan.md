# Project Plan — <Project>

> Instantiate as one repository-root `plan.md` for **new significant projects**. This is the **complete project proposal P** reviewed by an independent Project Critic **before** Owner approval, not an optional mutable progress roadmap. The file does not grant OS/platform permission. Routine work needs no P; accepted legacy per-task `docs/changes/<task>/plan.md` keeps its historic provenance.

## Project definition and specification

- **Product objective, users and verifiable end state:**
- **Owner-accepted specification path/hash and relevant decisions:**
- **Repository/baseline and integration environment:**
- **Non-goals, interfaces, constraints, security and data boundaries:**

## Approved scope and delegated authority proposal

- **Finite project implementation scope and separate planning/evidence paths:**
- **Autonomous Orchestrator/Architect technical decisions within constraints:**
- **Permitted branch/worktree/commit/push/CI and test-fixture operations:**
- **Sensitive operations, merge, deployment, risk exceptions and other Owner stops:**
- **Real OS/sandbox/platform limits not superseded by this document:**

## Stages, dependencies, measurable acceptance

| Stage | Entry/dependency | Expected outputs | Acceptance and required checks |
| --- | --- | --- | --- |
| 1 — <outcome> | <verified input> | <verifiable deliverables> | <AC / independent gates / CI> |
| 2 — <outcome> | <prior outputs> | <verifiable deliverables> | <AC / independent gates / CI> |

Use only the number of stages needed. Do **not** put live statuses, future exact W/S/H SHAs, Critic result or later Owner-approval fields into P; those are tracked in task handoffs/PR/decision evidence. Stage W is written only when actionable and must conform to approved P.

## Project acceptance and milestones

- **Full project acceptance / Owner final GO:**
- **MVP/release readiness and required actual CI/assurance:**
- **Merge, deployment, production and rollback approvals (separate where needed):**
- **Verification that stage-to-stage progression dependencies are met:**

## Risks and recovery

- **Known technical/CI blockers and permitted remediation paths:**
- **Assumptions requiring Owner clarification:**
- **STOP/escalation for material deviation, missing authority or unavailable required tests:**
- **Preservation of historical/frozen artifacts and branch-local durable checkpoint:**

## Review boundary

Commit this P, obtain **independent Project Critic READY**, then secure a **separate Owner decision on exact P plus proposed delegated bounds**. Owner approval/freeze never mutates P; bounded stage W is later committed and independently challenged without an Owner-per-WB gate. Material P/spec revisions repeat applicable Project Critic and Owner review.
