# Development Protocol — SDLC Lite

**Single canonical lifecycle, review/verification and Owner-integration procedure.** `AGENTS.md` defines shared agent behavior; templates, task records, roadmap and role briefs cannot create a competing authority. Codex, Claude Code or another selected harness supplies actual orchestration, tools and runtime permissions. No Controller, registry, scheduler, database or adapter is needed.

## 1. Intake and risk-based route

Owner states objective, expected outcome and constraints. Orchestrator verifies repository identity, branch, HEAD, worktree and applicable decisions, then classifies by **scope, risk, reversibility and impact** on architecture, interfaces, security/authority, data, external side effects and production—not by Markdown versus code.

- **Routine:** small, low-risk, well-bounded reversible docs/memory/analysis **or a tiny safe code fix** with no material contract or trust-boundary change. Example: correct a UI label or localized non-contract conditional bug plus regression check. Orchestrator may handle directly (or delegate a bounded mission) → focused tests and self-review → task-branch commit → PR/current-head CI where applicable → Owner merge decision. Separate Work Block/Critic/Reviewer/Verifier are optional unless Owner requires them.
- **Significant:** substantive feature or roadmap stage, broad/risky refactor, interface/data/schema change, authentication, security/authority/credentials, hard-to-reverse work, external or production effect. **A one-line auth-boundary change or normative agent-policy Markdown edit can be significant.** A formal Work Block and all independent gates below are mandatory.

Never relabel a significant task as routine to skip assurance. If classification or authority is uncertain, stop the affected work and consult Owner.

## 2. Project roadmap, stage contract and legacy plans

- **Optional project roadmap:** instantiate one **repository-root `plan.md`** from `docs/templates/plan.md`. It lists product goal, stages, dependencies, expected outcomes, MVP and production milestones. It neither authorizes implementation nor replaces a stage-specific Work Block; a standalone task needs no roadmap.
- **New significant stage:** when a stage becomes actionable, draft `docs/changes/<task>/work-block.md` using `docs/templates/work-block.md`. Include bounded verifiable result, accepted spec/ADR/Owner references, initial Git base, in/out scope and write-set, approach, roles, acceptance, checks, risks, stop conditions and rollback. Future stages remain coarse roadmap entries until actionable.
- **Requirements:** use task `intent.md` / `spec.md` where valuable. Accepted requirements/ADRs remain their own source; the WB links them rather than duplicating authority.
- **Legacy task plans:** pre-existing `docs/changes/<task>/plan.md` are **task-level implementation plans**, not additional project roadmaps. Do not retroactively rename/overwrite, discard review evidence or reinterpret accepted plans. To transition ongoing work, cite the exact frozen legacy plan and its Critic provenance in the new WB; material changes require renewed affected Owner/Critic review.

## 3. Owner acceptance and independent Critic

1. Orchestrator discusses requirements with Owner and may ask Architect for discovery/design research; persist accepted material decisions in project files/linked ADR rather than chat alone.
2. Owner accepts material design/scope **before the WB is frozen**, or through an immutable linked Owner decision. Owner approval is not a Critic verdict.
3. Independently run **Critic** on the exact frozen WB/planning Git SHA. Critic returns **READY** or **REWORK** in a **separate report/PR review**, citing the reviewed exact revision; do not insert the verdict into the frozen WB.
4. Critic REWORK returns to planning. After READY, never edit the reviewed WB/legacy plan to backfill status, Critic results, source SHA or PR disposition. Record working phase, links, candidate/PR state in task-local `handoff.md`, reports or PR. A **substantive** WB/spec/scope change needs a new exact planning revision and renewed affected Owner consideration/Critic review.

Critic cannot approve Owner-controlled architecture, merge, releases or platform privileges. Missing required independence means BLOCKED, not self-approval.

## 4. Scoped Coder, independent Reviewer and Verifier

1. Use an Owner/Orchestrator-selected exact base and dedicated **task branch/worktree**, never write feature changes directly to `main`. Preserve unrelated/dirty files and grant only bounded write scope, one writer per overlapping paths.
2. Native-harness **Coder** follows a bounded subagent mission referencing the frozen WB/legacy plan, spec/ADR, allowed paths, required checks and stops. Use native agent capabilities when available; logical Markdown roles do not automatically register agents or confer permissions.
3. Coder implements and performs focused tests, inspects the staged diff, commits a reviewable **source candidate SHA** and reports accurate PASS/FAIL/NOT_RUN evidence.
4. Independent **Reviewer** inspects the complete exact candidate/diff versus approved scope and returns **READY / REWORK**; REWORK goes to Coder.
5. Independent **Verifier** checks acceptance and runs available required tests against **the very same exact source candidate SHA**, returning **PASS / FAIL / BLOCKED** with commands/evidence. FAIL goes back to Coder; BLOCKED or unavailable independent tests/isolation escalates to Owner. Any corrected source results in a new candidate and renewed affected assurance.
6. Normal significant-task delivery requires **Reviewer READY + Verifier PASS for the same exact source SHA**, plus applicable Owner acceptance. An explicit Owner risk exception is a separate disposition and never counts as a fictional PASS/READY.

## 5. Candidate evidence, closeout, PR and product milestones

- **Exact candidate integrity:** substantive changes to application code **or normative Markdown** (procedures, agent rules, security, accepted spec, architecture, roles, decisions or review requirements) invalidate affected earlier source assurance. A **strictly evidence-only** addition outside the frozen WB can follow a reviewed source SHA without rerunning unrelated source review only when it cannot change scope, behavior or gates. State exact reviewed source SHA and final PR HEAD separately, inspect the intermediate diff and rerun applicable CI on the final PR HEAD; when unsure, re-review.
- **Before PR/handoff:** commit recoverable task-local `docs/changes/<task>/handoff.md` with actual branch/HEAD facts, checks, open risks and next step. For parallel branches do not overwrite integrated `memory_bank/`. Use `docs/workflow/memory.md` for ownership.
- **Working phase** `IN_PROGRESS` or `DELIVERY_READY` (assurance achieved, integration pending) is recorded in handoff/PR, **never the frozen WB**. These are not final closeout values.
- **Final task closeout:** **COMPLETE / BLOCKED / CANCELLED only**, even if PR is not merged yet. Record actual PR status OPEN/MERGED/CLOSED/NOT_CREATED, merge SHA/date where verified, deployment/rollback separately and outstanding next action. Task `COMPLETE` does **not** imply merge, roadmap-stage acceptance or release.
- **Publication:** non-force push to authorized subject branch, open PR, check **current-head** CI; request Owner merge GO. GitHub/main protection is an external capability, not guaranteed by hooks or prose. Deployment/production action requires separate Owner GO. No autonomous merge.
- **Roadmap stage:** update optional root `plan.md` to stage `COMPLETE` only on that stage's own acceptance/integration criteria and live Git/PR evidence (merge only if required by those criteria), independent of task closeout. After required stages, propose MVP deployment, test/validate MVP, then production promotion—all distinct **Owner-authorized** product milestones.
- **Memory/reconciliation:** after actual merge, cancellation or other disposition, confirm GitHub facts and update shared memory through a separately authorized branch/PR or next already approved integration checkpoint, **not** direct writing to `main`. Do not lose parallel task handoffs. Worktree cleanup separately follows `docs/workflow/workspaces.md`.

## 6. Runtime and security limits

Docs, roles, tests, local Git hooks and a passing CI check are not OS/GitHub permission controls. Observe actual sandbox/runtime, credential and external-operation restrictions. Record real isolation/test capability and escalate missing guarantees. No native Codex/Claude hooks, skill installer, controller, orchestration scripts or harness adapter is introduced by this Lite documentation protocol.
