# Development Protocol — SDLC Lite

**Single canonical lifecycle and assurance policy.** `AGENTS.md` is the shared contract; roles, templates, Skills, reports and diagrams provide techniques/evidence, never additional authority. Codex/Claude Code or another harness supplies native orchestration and its actual permissions. No Controller/runtime/registry is required.

## 1. Intake and classification

Owner states the intended result, constraints and any explicit approval boundaries. Orchestrator verifies repository/worktree identity and current task evidence; classifies by **impact, risk, reversibility, scope, interfaces, security, data and external effects**, not file type.

- **Routine:** small, low-risk, bounded, reversible task (including a safe localized code fix) without material contract/security/interface change. Owner can explicitly require stronger gates. Orchestrator or bounded Coder → focused checks/self-review → authorized task-branch commit/PR/CI when applicable → separate Owner merge GO. Project plan, stage W, Critic, independent Reviewer/Verifier may be **NOT_APPLICABLE with reason**.
- **Significant:** substantial feature, stage, broad refactor, normative workflow change, interface/data/auth/security boundary, consequential external effect or hard-to-reverse action. **Project definition + stage contract + independent gates below are required** for new work. A one-line policy edit can be significant.

Do not misclassify significant work as routine to bypass gates. Stop the affected action when classification or authority cannot be established. Preserve accepted **legacy** task plans and their original Owner/Critic provenance; do not retroactively apply the new order or use legacy as a shortcut for new work.

## 2. Project definition: Owner specification → P → Project Critic → Owner

1. Owner describes idea, expected outcomes and constraints. Orchestrator may consult Architect to draft a **project specification**; Owner accepts its exact content before formal Project Critic. Record exact spec provenance as task/project evidence.
2. Orchestrator prepares complete **repository-root `plan.md`** for significant project work: objective, accepted spec/ADRs, in/out scope, milestone/stage outcomes/dependencies, acceptance, risks, delegated actions, Owner stops and final integration criteria. One plan P is the project contract, **not** a mutable status roadmap or permission grant.
3. Commit candidate **P**; independent **Project Critic** reviews **exact P commit and plan/spec blobs** for consistency, scope, testability, feasibility of mandatory CI/assurance given known defects, and permissions. Report READY (Owner review) or REWORK separately. REWORK → bounded autonomous new P and new Critic. Critic READY **does not authorize implementation**.
4. Owner accepts/rejects **exact Critic-READY P** and specifies proposed Owner decisions/delegated bounds in a separate evidence record, with reviewed hashes/blobs and report reference. Changing substantive spec/P requires new applicable P/Critic/Owner cycle. **Do not edit reviewed/approved P** for status, signatures, progress or later SHA.

A standalone routine task needs no project P. New significant stage work requires the approved parent P; exceptions for already accepted legacy contracts must retain their historical provenance.

## 3. Autonomous stages: W → Stage Critic → implementation

1. For an actionable stage in approved P, Orchestrator/Architect drafts a **bounded Work Block W** with verified parent P/spec, conformance, entry/dependency conditions, expected outputs, exact write-set, AC/tests, permitted local decisions, risk/escalation and rollback. Future stages remain coarse until actionable. W cannot enlarge approved P.
2. Commit W before review. An independent **Stage Critic** examines the exact W commit/blob, conformance, known blockers and deliverability, returning **READY or REWORK** in a separate report. REWORK → new W/new Stage Critic within P, **without Owner-per-WB approval**.
3. Before Coder, confirm approved P/Owner decision, exact committed Stage-READY W, parent conformance, available evidence and **actual** workspace/sandbox/platform permissions. Freeze the reviewed W bytes. A role label or READY is not elevated privilege. Absent prerequisite → STOP/BLOCKED.
4. Orchestrator may consult Architect and select bounded technical solutions inside P/spec/W constraints, documenting rationale. Material architecture/requirements/risk/write-set change → Owner disposition and affected review; stage-only W change inside P → new W and Stage Critic without new Owner approval.
5. Coder edits only authorized task paths, runs focused checks, reviews full staged content, commits exact **source candidate S** and records executed commands/results. Separate independent **Reviewer READY** inspects exact S and full source diff; separate independent **Verifier PASS** runs required acceptance checks against the **same S**. FAIL/REWORK returns autonomously to corrected **new S** and affected assurance. Missing independence/required tests → BLOCKED/Owner rather than fictional PASS.
6. Normal authorized commits/non-force push/PR/current-head CI and bounded review/verification loops need no repeated Owner GO. **Final Owner project acceptance and merge** remain distinct. Deployment, production, sensitive external or security/platform actions require their own authorization.

## 4. Delivery integrity, completion and progression

- **S and H:** evidence-only changes after reviewed S may create delivery HEAD **H** only when `git diff S..H` proves no change to behavior, requirements, source tests or gates. Record S, H and affected blob IDs separately. If uncertain or normative source changes, run fresh S/assurance. Applicable CI must **actually PASS on H**; queued/NOT_RUN/failed is not PASS.
- **Stage completion:** all mandatory AC, outputs/dependency evidence, independent gates, authorized delivery and actual required CI must be satisfied. Only then hand off to next actionable stage inside approved P; **no intermediate merge required unless an explicit stage criterion says so**. Synthetic Owner/CI records in disposable tests never establish real permissions, approval or CI.
- **Phase/status:** `IN_PROGRESS` and `DELIVERY_READY` are working phases outside P/W. Final task closeout is **COMPLETE / BLOCKED / CANCELLED** only. A task can be COMPLETE before merge; stage acceptance, PR OPEN/MERGED/CLOSED, actual merge commit, MVP/deployment and production are separately verified.
- **PR:** non-force push only to authorized task branch; open PR to `main`, run applicable GitHub checks and request explicit Owner merge GO. PR, automatic checks and Critic READY are not Owner decisions.
- **Memory:** significant/parallel/interrupted work requires a recoverable branch-local checkpoint; see `docs/workflow/memory.md`. Never backfill P/W or overwrite shared integrated memory from parallel task branches. After merge, reconcile integrated memory via a separate authorized PR or checkpoint, not direct `main` edits.

## 5. Real-world gates and actionable failures

- Verify mandatory gate feasibility **during both Project and Stage Critic**, using real repository configuration and any known failures. An acceptance plan with no permitted route to required CI cannot receive an unqualified READY.
- Preserve original independent reports by exact reachable Git commit/blob. A readable normalized representation may change **only** under explicit authorized scope, with original/new blob mapping, byte-level delta and unaltered findings/verdict. An evidence copy is not the byte-identical original. Do not weaken checks or report FAIL as PASS.
- For tracked diffs, inspect actual content. Check untracked Markdown **before** staging, staged content only **after authorized staging**; `git diff --no-index` exit 1 alone is not a whitespace failure. Evaluate numeric codes **with diagnostics**. Check full PR-base content/diff, not only the last local commit. Reproduce actual CI step bodies when testing guard behavior; do not substitute a copied mock.
- If a mandatory role/runtime/CI gate is unavailable, record **NOT_RUN/BLOCKED** and escalate. Optional routine gates can be **NOT_APPLICABLE with rationale**; Owner-required or significant gates cannot.
- After compaction/resume, re-establish objective, instructions, absolute target, branch/HEAD/status, scope, dirty/untracked paths, durable checkpoint and next action **before any mutation**. Temporary scratch, chat and agent MEMORY are not durable authority.
- Before Git writes verify expected destination/root/identity/ref and ownership; use explicit `git -C <absolute-verified-task-worktree>`. Before non-Git writes (script/edit/redirect/copy) verify actual destination and all affected paths. Recheck after target/ref/context switch and consequential writes; a stable bounded sequence does not require full preflight per line. Git -C/hooks/prompt text do not enforce OS isolation; one writer per overlapping path.

## 6. Security, hooks and workflow scope

Actual OS, sandbox, credential, network, GitHub ruleset and authorization controls govern every action. Do not claim read-only **OS isolation** merely from a role brief or separate native agent. Avoid printing credentials. No bypass hooks, force/reset/clean/stash, unapproved destructive cleanup, direct main push, installation/activation of new hooks or widening permissions.

Optional **progressive hooks**: document rule → separately scoped prototype → real positive/negative runtime tests, false-positive/overhead/permission/bypass/rollback assessment → **separate Owner activation GO** → controlled rollout. Documenting a rule does not install a hook; existing hook behavior is unchanged unless separately authorized.

Detailed memory, initialization and workspace instructions are in their own canonical procedures; do not duplicate a new competing lifecycle in roles or templates.
