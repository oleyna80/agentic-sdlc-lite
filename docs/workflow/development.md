# Development Protocol — SDLC Lite

**Canonical procedure** for task lifecycle and assurance. There is deliberately no second SDD protocol, lifecycle file or controller state machine.

## 1. Intake and preflight

Owner states the goal and constraints. Agent follows `AGENTS.md` session entry, checks repository/branch/HEAD/status, then records scope and acceptance criteria in the task/PR or appropriate `docs/changes/<task>/` files.

Classify the task:

- **Routine:** small, reversible, well-bounded changes. Task scope → implementation → focused checks → self-review/diff inspection → task-branch commit → PR/CI → Owner merge decision. Dedicated Critic/Verifier and new documents are optional.
- **Significant:** architectural changes, risky refactors, credentials/security, data changes, production effects, broad integrations or irreversible behavior. Intent → spec → plan → independent read-only **Critic READY** → scoped implementation → candidate and tests → independent Reviewer and Verifier on the **same exact source candidate SHA** → PR/CI → Owner merge decision.

For high-risk work, do not waive the specified independent gates by silently switching to the routine path. Escalate unavailable assurance or changed scope to the Owner. Reviewer and Verifier can be separate agents or humans only if their independence is actually supported by the runtime/access boundary. An implementing agent's own conclusion is self-check, not independent evidence.

## 2. Planning and source changes

- Use only the template(s) the task needs; do not generate empty documentation for trivial fixes.
- Significant tasks keep an accepted specification/plan in `docs/changes/<task>/`.
- A task branch may use a temporary Git worktree; operational rules are in `docs/workflow/workspaces.md`.
- Assign one writer per overlapping write-set. Subagents receive the mission format under `docs/templates/subagent-mission.md`.
- Stop, update the approved spec/plan and re-review if new evidence materially changes the design, risk or scope.
- Run focused tests, inspect the complete staged diff, and commit only task-owned paths.

## 3. Assurance and delivery

- Record **source candidate SHA** before independent inspection, and bind every report to it.
- If source changes after a finding, create a new SHA and repeat the affected checks/reviews.
- Store durable task findings in `docs/changes/<task>/` when useful; GitHub PR comments can carry external review evidence. A follow-on documentation-only commit changes the PR HEAD: disclose both the reviewed source SHA and final PR HEAD, confirm no source change and rerun applicable CI. Never claim the earlier review was performed on a different SHA.
- Push only the task branch. Required checks must run on the final PR head. Owner approval is mandatory for merge; deployment is a separate decision.
- After disposition, update project memory using `docs/workflow/memory.md`, including unresolved/blocked work; clean worktrees only under `docs/workflow/workspaces.md`.

## 4. Closeout status (plain text, not a state machine)

Use factual results: `COMPLETE`, `BLOCKED`, or `CANCELLED`. A coding task can be `COMPLETE` while its PR remains unmerged. Never write `merged` or `deployed` without exact evidence.

A handoff contains: goal, branch/candidate SHA, files, tests (PASS/FAIL/NOT_RUN), reviewer/verifier evidence if required, unresolved risks, next step and links. These are documentation conventions only; there is no runtime lifecycle validator.
