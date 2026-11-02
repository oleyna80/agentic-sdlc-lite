# Process Feedback — Improvement Register

One Markdown register for material observations and improvement proposals about
SDLC Lite, including evidence from projects using the kit. Entries are advisory:
they are neither execution authority nor an additional lifecycle or approval gate.
The [development protocol](workflow/development.md) governs any resulting work.

## Use

- Capture a concrete problem or Owner proposal when it is useful for later work.
  Include a date, source, impact and proposed direction. Separate observed facts
  from hypotheses; link existing evidence instead of copying transcripts. Never
  include secrets or confidential data.
- Give each entry a stable `PF-NNN` ID. Add new evidence to a related entry rather
  than creating duplicates. Do not invent feedback or create an entry for every
  task; a clean task needs no extra report, checklist or empty declaration.
- Review related entries when choosing the next improvement. Recurrence, severity
  and expected benefit inform selection; no count automatically starts work.
- When selected, link the separate task, initiative intent or authenticated Owner
  request. Classify the work through the existing routine/significant route; a
  new intent document is optional. One task may address several entries.
- Use `OPEN` for recorded proposals, `LINKED` when a separate task is identified,
  and `CLOSED` with the outcome and evidence, including a reason if declined.
  Linking a task does not establish its approval or completion. Preserve prior
  observations when adding an outcome.

There is no registry validator, aggregation script, hook or additional mandatory
closeout step. In a derived project, inherited entries describe source-Lite
history; verify applicability and keep that project's observations in its own
copy of this register. Do not maintain a second improvement backlog in memory
files or reports: those may supply evidence and link here.

## Entries

### PF-001 — Keep hooks focused on concrete safety risks

- **Date / source:** 2026-10-30, Owner's architecture discussion: agents in native
  harnesses can follow instructions; keep Lite simple and use hooks to protect
  work, confidential data and instruction boundaries.
- **Status:** OPEN. Owner direction recorded; no hook change or activation is
  authorized by this entry.
- **Problem / impact:** A broad attempt to encode the whole SDLC in hooks could
  duplicate instructions, create false refusals and increase maintenance. This
  is a design risk, not a measured finding about every existing hook.
- **Proposed direction:** Use harness-native instructions for ordinary workflow.
  Consider a hook only for a concrete harmful action or critical instruction
  violation that it can detect at its actual interception point. Assess the
  relevant Git or native-agent hook against the risk, false positives, overhead
  and rollback; retain the existing separately authorized activation route.
- **Evidence / limits:** Owner request above; current
  [security boundaries](security/boundaries.md) describe the bundled Git hooks
  and their limits. Git hooks act at Git operations and cannot prevent arbitrary
  disclosure through other tools. Actual sandbox, credential, network and
  platform controls remain necessary; cooperative hooks are not isolation.
- **Next decision / task:** Select a separate bounded assessment of the existing
  hooks when planning hook work. No task is linked yet.

### PF-002 — Avoid an extra CI cycle solely to record CI results

- **Date / source:** 2026-10-30, Owner's report from the HardwareLab pilot:
  a one-line workflow correction required two full CI cycles, first after the
  correction and then after committing its result report. This entry records
  the supplied observation; CI run identities were not independently rechecked
  when adding it.
- **Status:** OPEN.
- **Problem / impact:** The agent correctly followed the reporting requirement.
  The process introduced another commit and CI cycle solely to document the
  result, increasing elapsed time and CI consumption for a routine change.
  One case does not establish the frequency or aggregate cost of this pattern.
- **Proposed direction:** When optimizing the routine route, consider recording
  final CI links and the exact checked commit in the PR description or comment,
  keeping any necessary repository report truthful at its recording time.
  This would avoid a follow-up commit made only to add the final CI result.
- **Evidence / limits:** Owner's observation above. The existing
  [workspace delivery mission](changes/workspace-creation/handoff.md#delivery-mission--project-cli)
  already describes this approach for that specific task. It does not establish
  a general routine-route rule. Required checks on the actual final HEAD remain
  binding; this proposal does not permit reusing an older green run after a new
  commit or omitting required durable task evidence.
- **Next decision / task:** Consider alongside other routine-route observations
  when selecting a separate process improvement. No task is linked yet.

### PF-003 — Clarify autonomous orchestration and parallel Coder ownership

- **Date / source:** 2026-10-30, Owner's architecture discussion and explicit
  confirmation to transfer the selected orchestration rules into Lite.
- **Status:** OPEN. Owner accepted the direction below; the canonical workflow
  and role instructions have not yet been changed by this entry.
- **Problem / impact:** Lite already delegates conforming stages, bounded REWORK
  and authorized delivery to Orchestrator, but its parallel-Coder coordination
  rules are less explicit. Passing every next step through Owner can undermine
  that autonomy; overlapping writers or unintegrated worker results can instead
  undermine preservation and final assurance. These are identified process risks,
  not a measured failure rate or proof of a successful parallel-Coder pilot.
- **Accepted direction:** After Owner accepts the independently reviewed exact
  P, Orchestrator owns the whole authorized mission through its expected result,
  including actionable W/Stage Critic, delegation, bounded correction loops,
  checks and permitted delivery. No new Owner approval is needed for each
  conforming stage or agent assignment. Orchestrator chooses a sufficient team
  and concurrency within available native-harness capabilities, approved scope,
  permissions and resource limits; a swarm is optional, never a required route.
  Apply these selected rules:
  - Give each parallel Coder an exclusive write-set; serialize shared paths and
    operations on a shared Git index. Workspace choices remain subject to actual
    permissions and existing workspace safety rules.
  - Give each assignment explicit dependencies, expected outputs and checks.
  - Integrate worker outputs into one frozen source candidate before independent
    final Reviewer and Verifier assurance on that same candidate. Worker DONE
    and worker checks alone do not establish acceptance.
  - Escalate material departures, missing authority and blockers that cannot be
    resolved within the delegation. Preserve separate final Owner acceptance,
    merge and deployment boundaries unless explicitly delegated.
- **Evidence / limits:** Current [development protocol](workflow/development.md)
  and [Orchestrator role](../.agents/roles/orchestrator.md) already establish
  autonomous stages and coordinated roles. The architecture review also inspected
  `agentic-sdlc-framework`'s `.agent/workflows/sdd-protocol.md` parallel-Coder
  method; its closeout explicitly leaves a live multi-worktree pilot unproven.
  This is a selected lightweight adaptation, not adoption of Framework profiles,
  extra gates, a custom runner/controller or new hooks. Native execution support
  and actual parallel-run results must be established in the target environment.
- **Next decision / task:** Prepare a bounded Lite documentation task to clarify
  the canonical development procedure and reference it from the Orchestrator
  role. No implementation task is linked yet; keep the current HardwareLab
  pinned workspace-guide update unchanged.


## 2026-11-01 — HardwareLab pilot consolidation

Owner selected PF-001–PF-003 and the observations below for a bounded Lite
documentation initiative, [hardwarelab-pilot-feedback](projects/hardwarelab-pilot-feedback/spec.md).
For PF-001–PF-003, this dated selection updates their task linkage to **LINKED**;
the earlier OPEN/no-task statements above retain their observation-time meaning.
The specification is a draft, not accepted Spec/P or implementation authority.
No entry is CLOSED merely because this register records the lesson.

**Observed outcome:** Lite was adopted into an existing application and used
through maintenance, independent assurance and the subsequent Owner-authorized
release. Independent checks caught a generated-server runtime dependency failure,
a browser-server production-mode omission and an image test that inspected only
metadata while claiming decoding. Corrections and historical failures remain in
[HardwareLab runtime implementation](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance-runtime/implementation.md),
[runtime review](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance-runtime/review.md)
and [image review](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance-images/review.md).
Workspace/hook documentation corrections were integrated separately through
[Lite PR #18](https://github.com/oleyna80/agentic-sdlc-lite/pull/18).

**Limits:** This demonstrates applicability and useful defect detection, not
measured token/time savings, full autonomy, OS isolation, a live parallel-Coder
swarm or a validated Claude/DeepSeek/GPT configuration. Owner intervention,
resource interruptions and a candidate-attribution failure below remain part of
the outcome. Task-specific mitigations are not automatically canonical Lite rules.

### PF-004 — Preserve expensive work across resource and session interruptions

- **Date / source:** 2026-11-01, Owner's HardwareLab account of rapid usage-limit
  exhaustion and a process killed after heavy work under `/tmp`; later image-stage
  resource instructions and verification reports.
- **Status / task:** LINKED to `hardwarelab-pilot-feedback`; no canonical change yet.
- **Problem / impact:** Rebuilding dependencies, caches and verification copies
  after interruption wastes work; simultaneous heavy checks increase resource
  pressure. The reported OOM cause was not independently established from host
  telemetry. `/tmp` is not assumed to be RAM-backed on every system.
- **Proposed direction:** Put substantial copies, dependencies, browser caches,
  logs and resumable artifacts on a verified persistent disk location appropriate
  to the project. Choose heavy-job concurrency against actual host capacity;
  default to sequential heavy checks when capacity is unknown or constrained.
  Save concise SHA/outcome/log/next-action checkpoints around costly steps,
  diagnose repeated failures before rerunning, and preserve completed evidence.
  A disk log is supporting evidence, not a substitute for required Git checkpoints.
- **Evidence / limits:** [Image-stage W](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance-images/work-block.md)
  specifies persistent paths and sequential checks; the
  [verification report](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance-images/validation.md)
  records their use and a diagnosed long UNIX-socket-path retry. Do not prescribe
  a HardwareLab-specific absolute path or ban small disposable scratch files.

### PF-005 — Fail closed when selecting the exact verification candidate

- **Date / source:** 2026-11-01, stopped HardwareLab image verification and fresh
  replacement-candidate verification.
- **Status / task:** LINKED to `hardwarelab-pilot-feedback`; no canonical change yet.
- **Problem / impact:** A wrong archive path caused static inspection to fall
  back to a dirty source worktree. Newer content was attributed to an older S.
  The partial attempt was invalidated; it supplies no reusable verifier PASS.
- **Proposed direction:** Establish exact S and the actual inspection/execution
  root before expensive checks; verify relevant content against committed S.
  Missing roots, mismatched files or unproved candidate attribution stop the
  affected assurance. Never silently substitute a mutable checkout or newer ref.
  Derive candidate/tree/blob identifiers from Git instead of copying old values;
  retain invalidated attempts and obtain fresh applicable assurance after rework.
- **Evidence / limits:** [Historical invalidation and replacement verification](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance-images/validation.md).
  The replacement report also documents correction of a transcribed old tree ID.
  This supports improving evidence handling, not claiming document-enforced isolation.

### PF-006 — Bound delegated context and diagnose the actual limiting resource

- **Date / source:** 2026-10-29 workspace-creation delegation failures and
  2026-11-01 pilot retrospective.
- **Status / task:** LINKED to `hardwarelab-pilot-feedback`; no canonical change yet.
- **Problem / impact:** Repeated long reads and oversized assignments consume
  context and interrupt delegation. A misleading budget error can lead to changing
  the wrong setting. No comparative token/time benchmark was collected.
- **Proposed direction:** Keep the complete assignment in existing task artifacts;
  send concise task/file/section pointers with target, role and expected output.
  Inspect tool outcomes. Distinguish message-size limits, model context, provider
  quota and active-writer conflicts before retrying or proposing a budget change.
  Read the context needed for the role and phase, restoring affected facts on
  recovery without repeatedly loading all historical evidence.
- **Evidence / limits:** [Version-specific native task-message investigation](changes/workspace-creation/handoff.md#native-task-message-limit)
  found a UTF-8 payload cap in the inspected CLI version, distinct from model
  compaction settings. Do not turn that historical byte count into a portable
  provider/model catalog or a universal Lite limit.

**Additional task-specific evidence for PF-002/PF-003:** HardwareLab's
[plan](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/projects/application-maintenance/plan.md)
puts subsequently observed final CI links in PR metadata without a link-only
commit. Its [handoff](https://github.com/oleyna80/hardwarelab/blob/fbe6e963538ca2c9d31fd9c74c9830700d950227/docs/changes/application-maintenance/handoff.md)
delegates the whole approved mission and bounded rework. These are demonstrated
documentation applications, not proof of a fully autonomous or parallel execution.

## 2026-11-01 — Canonical documentation candidate

The separately accepted Spec and approved [P](projects/hardwarelab-pilot-feedback/plan.md),
with decisions recorded in [Owner evidence](changes/hardwarelab-pilot-feedback/owner-decisions.md),
now have a documentation implementation awaiting independent assurance and integration:

- PF-001: [hook selection and limits](security/boundaries.md#selecting-an-optional-hook).
- PF-002: [final CI metadata and current-head checks](workflow/development.md#4-delivery-integrity-completion-and-progression).
- PF-003: [whole-mission autonomy and optional parallel Coders](workflow/development.md#3-autonomous-stages-w--stage-critic--implementation).
- PF-004: [resource placement and diagnostic retries](workflow/workspaces.md#resources-and-resumable-work), with [supporting checkpoints](workflow/memory.md#3-canonical-conditional-checkpoint-matrix).
- PF-005: [exact candidate and execution root](workflow/development.md#candidate-and-execution-root).
- PF-006: [bounded dispatch](workflow/development.md#3-autonomous-stages-w--stage-critic--implementation) and [selective recovery reads](workflow/memory.md#1-session-start-and-recovery).

All six entries remain **LINKED**, not CLOSED. The earlier draft/no-change statements
retain their observation-time meaning. These pointers record source changes, not
a runtime pilot, measured savings, independent PASS/READY or integration outcome.

## 2026-11-02 — Owner-confirmed hook role and next pilot (PF-001)

- **Owner decision / provenance:** In the 2026-11-02 architecture discussion,
  Owner confirmed: **Instructions define behavior. Harness executes. Hooks
  enforce critical boundaries. Independent agents assess quality. Owner retains
  decision authority.** This refines PF-001; it does not add a new component.
- **Responsibility split:** Instructions and optional Skills guide agent behavior;
  the native harness orchestrates execution. Independent Critic, Reviewer and
  Verifier assess architecture, source and verification evidence. A native-harness
  or Git hook may detect and prevent a **concrete, observable** unsafe action or
  critical instruction violation at its supported interception point. Hooks do
  not judge engineering quality, replace independent assurance or orchestrate
  agent assignments.
- **Illustrative boundary:** If an agent attempts an observable delivery
  progression while a Critic, Reviewer or Verifier result **required for that
  task and phase** is missing, an appropriately supported hook may block that
  action when the missing evidence is reliably detectable. Do not demand
  downstream results prematurely (for example, Reviewer/Verifier on S before S
  exists), infer that every routine task requires every gate, or claim that a
  Git hook can intercept arbitrary harness actions. Existing lifecycle and
  Owner/merge/deployment authority remain unchanged.
- **Next pilot — Owner direction:** Test **one or two** selected existing Git or
  harness-native hooks on real supported events. Select candidates and the
  target harness when scoping that pilot; include permitted and prohibited
  scenarios, relevant missing/valid gate evidence, false-positive/overhead and
  bypass/coverage observations. Record executed behavior rather than treating
  written instructions as proof of enforcement. No specific hook or native
  capability has yet been selected or validated.
- **Status / authorization:** PF-001 is **LINKED** to the documentation transfer
  merged in [Lite PR #19](https://github.com/oleyna80/agentic-sdlc-lite/pull/19);
  runtime hook efficacy remains untested. This register entry is advisory and
  authorizes **no hook installation, activation, configuration change, additional
  gate, Controller or new lifecycle**. Prototype/activation and any material
  scope or authority change follow existing separate authorization rules.
