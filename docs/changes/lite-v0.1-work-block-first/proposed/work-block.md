# Work Block — WB-<ID>: <Stage / Deliverable>

> Mandatory for nontrivial engineering delivery. One bounded result, one independently reviewed execution contract. This is a **template**, not current task authorization. For a trivial Orchestrator-only documentation task, a Work Block is unnecessary.

## Identity and source

- **WB ID / title:**
- **Project / optional parent plan stage:**
- **Status:** DRAFT / CRITIC_READY / IN_PROGRESS / DELIVERY_READY / COMPLETE / BLOCKED / CANCELLED
- **Task branch or worktree, base revision:**
- **Owner-approved requirement / spec / ADR references:**

## Objective

What business/technical problem must this stage solve, and why now?

## Expected final result

One concrete observable end state, including the deliverable and what must remain unchanged.

## Scope and boundaries

- **In scope:**
- **Out of scope:**
- **Affected components / approved write paths:**
- **Dependencies / prerequisites:**
- **Already accepted architectural constraints and external interfaces:**

## Implementation approach

Describe required behavior and constraints, meaningful steps or milestones, and permissible autonomy. Do not prescribe unnecessary agent micro-steps; detailed private implementation planning belongs to the Coder within approved scope.

## Roles and handoffs

- **Orchestrator:** coordination, decisions, recordkeeping, final synthesis.
- **Architect (if necessary):** research/design question and expected document.
- **Critic:** independent review of this exact WB/planning revision, READY/REWORK.
- **Coder:** scoped implementation, focused tests, candidate commit.
- **Reviewer:** independent source/diff and scope/design inspection, READY/REWORK.
- **Verifier:** independent acceptance checks and evidence, PASS/FAIL/BLOCKED.
- **Skills (optional):** names/source references only when needed; harness selects/installs natively outside Lite.

## Acceptance criteria

- [ ] AC-1: <measurable observable condition>
- [ ] AC-2: <measurable observable condition>

## Verification and evidence

- Relevant tests/checks and expected evidence:
- Required independent review/verification and exact candidate identity:
- Documentation and project-memory deliverables:

## Risks, stop conditions and recovery

- Risks / expected side effects:
- Rollback/recovery:
- **Owner stops:** material design/scope changes, merge, deployment, destructive or consequential external action, unavailable required assurance, access/secret boundary changes.
- Proposed next action on failure or BLOCKED:

## Planning disposition and delivery

- **Owner design/scope decision reference:** <required when material>
- **Critic report link + reviewed exact revision:** <separate report, not appended verdict>
- **Source candidate / Reviewer / Verifier references:** <added in separate evidence/handoff>
- **Branch/PR/merge disposition:** <do not claim merged without GitHub proof>
- **Final closeout/handoff path:**

> The Critic's verdict is in a separate artifact bound to a frozen plan revision. Reviewer READY and Verifier PASS must apply to one same source candidate. Substantive changes invalidate the affected assurance; a merely evidence-only post-review addition must be explicitly bounded and final PR HEAD checked.
