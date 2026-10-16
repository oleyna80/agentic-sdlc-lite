# Work Block / Task Closeout — <Task>

- **Task / branch and frozen WB or approved legacy task plan:**
- **Reviewed planning revision / independent Critic report:**
- **Exact reviewed source candidate SHA:**
- **Actual delivered result and acceptance evidence:**
- **Final task closeout:** COMPLETE / BLOCKED / CANCELLED
- **Working phase:** recorded separately in task-local handoff (e.g. DELIVERY_READY, never a final closeout status)
- **Reviewer / Verifier verdicts:** exact same source SHA for Reviewer READY + Verifier PASS
- **Tests:** commands, PASS / FAIL / NOT_RUN and evidence
- **PR status:** OPEN / MERGED / CLOSED / NOT_CREATED
- **CI / merge SHA and date:** only if verified
- **Project roadmap stage status / acceptance:** separate criteria and evidence; not inferred from task COMPLETE
- **MVP deployment / validation / production:** separate evidence and explicit Owner GO

## Remaining risks, Owner decisions and next action

## Project-memory checkpoint

- **Task-local handoff path:**
- **Shared integrated memory updated?** YES / NO / PENDING_RECONCILIATION
- **Post-merge confirmation path / follow-up authorized PR:**

## Workspace cleanup

- **Owned worktree path:**
- **Status:** CLEANED / PRESERVED / CLEANUP_PENDING (reason and evidence)

Task COMPLETE can precede PR merge. It does **not** imply roadmap stage acceptance, deployment or production release. Record live phase and later gate results in handoff/reports/PR, not by modifying the Critic-frozen WB; distinguish reviewed source SHA from current PR HEAD if evidence-only commits follow.
