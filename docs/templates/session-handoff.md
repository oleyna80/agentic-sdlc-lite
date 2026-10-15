# Session / Task Handoff — <Task>

- **Observed date, repo and exact branch/HEAD:**
- **Frozen Work Block / approved legacy task plan path and exact reviewed planning SHA:**
- **Scope / acceptance criteria link:**
- **Session working phase:** DRAFT / CRITIC_PENDING / IN_PROGRESS / DELIVERY_READY (not final closeout)
- **Task final closeout status (only if concluded):** COMPLETE / BLOCKED / CANCELLED
- **Changed / uncommitted / untracked files to preserve:**
- **Last reviewable source candidate SHA (if different from HEAD):**
- **Tests:** PASS / FAIL / NOT_RUN with exact evidence
- **Separate Critic/Reviewer/Verifier verdicts and linked exact WB/source SHAs:**
- **Owner decisions still required:**
- **Blocking issues / risks:**
- **Next concrete step:**

For a concurrent or significant task, save as `docs/changes/<task>/handoff.md` in its task branch. This is the branch-local source of recoverable work; it is **not** a competing global `memory_bank/context.md`.

`IN_PROGRESS` and `DELIVERY_READY` are working-session descriptors, **not** final closeout values. Never edit the approved frozen WB to fill verdicts, working status or later Git/PR evidence. Post-merge disposition is checked from GitHub and reconciled by a separately authorized memory update.
