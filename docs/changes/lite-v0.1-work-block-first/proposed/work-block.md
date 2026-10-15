# Work Block — WB-<ID>: <Stage / Deliverable>

> Mandatory for nontrivial engineering delivery. One bounded result, one independently reviewed execution contract. This is a **template**, not current task authorization. For a trivial Orchestrator-only documentation task, a Work Block is unnecessary.

## Identity and source

- **WB ID / title:**
- **Project / optional parent plan stage:**
- **Planned branch/worktree, initial Git base revision:**
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

## Frozen planning contract

- **Owner design/scope decision reference (set before Critic):** <required when material>
- **Separate status/report convention:** post-review Critic verdict and exact reviewed WB SHA, working phase, source candidate/review/verification SHAs and PR/merge disposition are recorded **only in task-local `handoff.md`, closeout, Critic/review/verification reports or PR**; there are no later-fillable approval/status fields inside this WB.

> Freeze this WB before independent Critic review; subsequent status/verdict/evidence must not mutate the reviewed contract. Substantive WB changes require renewed affected Owner/Critic acceptance and a new exact revision; never classify a post-freeze WB edit as harmless evidence. Reviewer READY and Verifier PASS must reference the same exact source candidate, with final PR HEAD separately reconciled.
