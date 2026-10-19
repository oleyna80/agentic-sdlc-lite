# Agentic SDLC Lite — Core Product Concept (deferred proposal)

- **Recorded:** 2026-10-19
- **Origin:** Owner/ChatGPT architectural discussion about the purpose of Agentic SDLC Lite.
- **Status:** OWNER-CONFIRMED PRODUCT INTENT; **non-normative working note**, pending later incorporation into public-facing product documentation.
- **Revisit after:** WB-LITE-002 source S11 independent assurance and its subsequent delivery/Owner decision.
- **Isolation:** This note is committed on a separate documentation branch based on the then-current `main`. It does **not** amend approved Project Plan P, frozen Stage Work Block W2, candidate S11, the current WB-LITE-002 evidence branch, or any existing authority/gates.

## 1. The product in one sentence

**Agentic SDLC Lite is a portable set of instructions, protocols, role briefs and artifact templates that uses the native capabilities of an AI-agent harness to guide software-development tasks through a defined, verifiable business process.**

Short formulation: **the process is the product; the harness executes it.**

We do **not** build another AI-agent harness. We define how existing agents should work: the sequence and purpose of stages, their roles, expected outputs, acceptance and transitions, and the limits of autonomous decisions.

## 2. Artifact-driven lifecycle

A task starts with an idea, need, defect or other Owner intent and proceeds through a **risk-appropriate** lifecycle toward a verified outcome. Each executed stage produces an identifiable, reviewable **artifact** that informs or gates the next stage.

Typical significant-work artifacts include:

| Stage / responsibility | Representative artifact |
| --- | --- |
| Intent and requirements | Accepted specification / clarified requirements |
| Project definition | Committed Project Plan **P**, independent Project Critic report, separate Owner approval |
| Actionable stage planning | Committed Stage Work Block **W**, conformance evidence, independent Stage Critic report |
| Implementation | Source candidate **S** (code, documentation or other authorized deliverables) with reproducible checks |
| Independent assurance | Reviewer verdict and Verifier evidence bound to the same exact S |
| Delivery and closeout | Evidence-only delivery HEAD **H** where applicable, PR/CI evidence, handoff/closeout and next-stage dependencies |

**Artifact does not mean one new Markdown file per step.** It can be a specification, an existing document revision, a Git commit, test output, a review report, a PR, or an explicitly justified NOT_APPLICABLE outcome. Where persistence is required, the artifact and its provenance must be recoverable from the project's authorized Git/GitHub records.

**Every task follows a process, not necessarily every formal stage.** Small, low-risk reversible **routine** work takes a proportional lightweight route; significant work uses project/stage planning and mandatory independent gates. Stage depth, required artifacts and assurance depend on risk, impact and the canonical procedure. Do not impose a new mandatory P/W/Critic on routine tasks by interpreting this statement too literally.

## 3. Responsibility split: SDLC versus harness

| Agentic SDLC specifies | Native harness/runtime provides |
| --- | --- |
| Workflow, stage ordering and conditions for progression | Agent/model execution, native orchestration and subagent invocation |
| Role responsibilities (Orchestrator, Architect, Critic, Coder, Reviewer, Verifier) | Actual sessions, tools, delegation and supported role implementations |
| Required artifact contracts, templates and acceptance evidence | File edits, command execution, source control integration and test execution |
| Recovery/checkpoint expectations and Git-backed project memory | The concrete environment in which agents read, write and resume |
| Owner escalation, bounded autonomy and independent assurance requirements | Actual technical permissions, sandbox/isolation and platform security controls |

A role brief or documented gate is **not** a runtime capability or security boundary. Native execution and independent verification are factual claims that must be observed, not inferred from Markdown or role names.

## 4. Design invariants

1. **Process over harness:** keep the core workflow portable across Codex, Claude Code and other capable native agent harnesses. Harness-specific adapters may be thin and optional; they must not create a competing lifecycle.
2. **Artifacts link stages:** each applicable stage has a defined output and acceptance condition. The next stage consumes verified outputs rather than relying on chat history.
3. **Process-governed autonomy:** agents may plan, implement, test, review and correct within approved scope and actual permissions; material scope/architecture/authority changes, sensitive actions and final merge/deployment remain Owner decisions.
4. **One canonical source of process rules:** root `AGENTS.md` plus the canonical development and domain procedures; templates, role briefs, memory and Skills remain subordinate.
5. **Git-backed continuity:** durable planning, decisions, task handoffs, exact source/review provenance and project memory live with the project. Chat and ephemeral agent memory are aids, not authoritative project state.
6. **Proportional overhead:** rigorous for consequential changes; lightweight for routine tasks. No Controller, SQLite authority registry, custom scheduler, native agent runtime, automatic merger or new framework service merely to operate Lite.

## 5. Product value and intended audience

**Users:** individual developers and small teams using native AI coding tools.

**Problem:** ad hoc AI coding sessions lose context, skip stages, mix responsibilities and approvals, and leave results difficult to verify or resume.

**Value proposition:** predictable task execution, durable handoffs and recoverable project state, transparent evidence of what was approved and tested, and useful agent autonomy without rebuilding capabilities already supplied by the harness.

**Success criterion:** a newly started agent, **without this chat**, can inspect the repository, recover the applicable approved context and current task state, identify the next permitted action, and continue the process without fabricating approvals or PASS evidence. For a significant task, outputs of each completed stage are discoverable and independently checkable.

## 6. Existing boundaries and open questions

- This is a **documentation-first orchestration method**, not a technically enforced OS sandbox or a guarantee that a particular harness supports real independent subagents.
- The current P/W/S/H design and routine/significant routing remain as specified in the canonical SDLC documents; this note does not replace them.
- GitHub Template mode, branch protection, CI settings and harness-specific registration require independent verification/configuration; copying a Git repository does not copy platform protection.
- **To evaluate later, not decide here:** whether one repository-root frozen `plan.md` cleanly supports several simultaneous significant projects, and how to express that boundary without introducing redundant state or a second authority source.
- Product wording should distinguish **instructions that define expected behavior** from **runtime controls that actually enforce permissions**.

## 7. Deferred follow-up — after WB-LITE-002

When the S11 review/verification and resulting WB-LITE-002 disposition are complete:

1. Re-read this note against the then-current merged canonical documents and verified GitHub state.
2. Decide the minimal approved documentation scope for aligning `PROJECT_BRIEF.md` and `README.md` (and only other files if a concrete contradiction is demonstrated).
3. Preserve the central message: **an artifact-driven, harness-native process kit, not a new harness**.
4. Validate that the resulting description does not promise installed agents, automatic enforcement, autonomous merge, or formal gates for every trivial task.
5. Separately pilot a derived project end to end, testing new-agent recovery from Git alone and the transition between verified artifacts.
6. Use the appropriate routine/significant classification, review and Owner authority for those later changes. **No edit or merge is authorized merely by the existence of this proposal.**

### Related current work

- WB-LITE-002 candidate S11: `0a616db82429cee25f189882ffeb3712a70d83d3` (historical reference at note creation).
- WB-LITE-002 evidence branch: `docs/wb-lite-002-implementation`.
- Source contract files: `PROJECT_BRIEF.md`, `README.md`, `AGENTS.md`, `docs/workflow/development.md`, `docs/workflow/memory.md`, `docs/architecture/overview.md`.
