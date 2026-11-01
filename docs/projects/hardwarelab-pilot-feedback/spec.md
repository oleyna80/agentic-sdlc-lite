# Requirements + Design Specification — hardwarelab-pilot-feedback

## Initiative identity and provenance

- **Repository / stable project ID:** `oleyna80/agentic-sdlc-lite` /
  `hardwarelab-pilot-feedback`; no existing current or historical project with this
  ID was found in the inspected repository history.
- **Initiative intent:** Owner's 2026-11-01 request in the architecture discussion:
  record the HardwareLab pilot experience and transfer the lessons into Lite,
  following the reviewed retrospective. This authorizes preparation, not acceptance
  of this exact specification or a future execution plan.
- **Baseline:** integrated `main` commit
  `8db525ab1f1443cee944cba07fcccafd71408be8` after PR #18;
  [product brief](../../../PROJECT_BRIEF.md).
- **Users / outcome:** agents and Owners using the native-harness Lite kit can
  recover work, coordinate a bounded mission and trust candidate-bound evidence
  with less avoidable context/reporting overhead. No efficiency gain is claimed
  without measurements.

## Requirements and scope

1. Publish one advisory [process-feedback register](../../process-feedback.md).
   Preserve existing PF-001–PF-003 and their observation-time meaning; add the
   evidenced pilot findings, outcomes, limits and links. Register entries select
   future work but create no authority, mandatory closeout or automated registry.
2. Clarify whole-mission Orchestrator responsibility inside approved P: actionable
   stages, delegation, bounded REWORK, permitted delivery and checks continue
   without repeated Owner approval for ordinary steps. Preserve independent gates
   and separate Owner acceptance, merge, deployment and sensitive-action boundaries.
   Multiple Coders are optional: exclusive write-sets, serialized shared writes/
   Git-index operations, explicit dependencies/outputs/checks and integration into
   one frozen S before independent final Reviewer/Verifier assurance.
3. Add concise resource/recovery guidance: project-appropriate persistent disk for
   substantial copies, dependencies, caches and resumable logs; capacity-aware
   concurrency, sequential heavy checks when capacity is unknown/constrained;
   short checkpoints and diagnosis before repeated expensive retries. Preserve
   the conditional Git-checkpoint policy; small temporary scratch remains allowed.
4. Make candidate selection fail closed: verify actual source/test root and
   committed S before costly assurance, stop on missing/mismatched evidence and
   forbid silent fallback to a mutable worktree. Record mechanically obtained
   source/tree/blob identifiers and preserve invalidated attempts as historical.
5. Generalize final-CI reporting in PR metadata to avoid a commit solely to record
   that same commit's CI links. Necessary durable reports still precede final CI;
   later substantive/evidence commits require their applicable final-head checks.
6. Prefer bounded delegated messages referencing existing task artifacts. Diagnose
   payload/context/quota/ownership failures separately; do not embed historical
   provider limits or model catalogs in the portable kit.
7. State the hook-selection principle in the existing canonical security/workflow
   locations: concrete detectable harmful actions or critical instruction violations,
   evaluated at the actual Git/native interception point. Ordinary workflow stays
   instruction-driven; actual isolation and credentials remain platform concerns.
   No hook code, installation, activation or security guarantee is introduced.

**Affected components:** register/navigation, canonical development, memory,
workspace and security documentation; subordinate Orchestrator/Verifier briefs
only where a short canonical reference prevents drift. Exact finite write-set
and stage boundaries belong in P/W. Frozen historical Spec/P/W and original role
reports remain unchanged. Shared integrated memory/ROADMAP reconciliation is a
separate post-integration concern.

**Out of scope:** application changes, deployment, GitHub settings, provider/model
configuration, CI filters or test weakening, hook implementation/activation,
Controller/runner services, new mandatory roles/stages/checklists/registries,
worktree cleanup and claims of a tested multi-provider or parallel-Coder pilot.

## Design, alternatives and risks

Keep one canonical home per rule; roles/templates reference it rather than
copying another lifecycle. Reuse the existing routine/significant routes and
Spec/P/W/S/H terminology. Do not make independent assurance optional to reduce
cost. Prefer a few concrete paragraphs over new forms or a runtime mechanism.
Only keeping task-local mitigations would leave future projects without lessons;
encoding the entire process in hooks would add complexity without demonstrated
benefit. Resource guidance must remain portable and avoid a universal `/tmp`
assumption or fixed concurrency/provider budget. No new architecture ADR is
proposed because the harness-native architecture and existing ADRs remain intact.

## Observable acceptance criteria

- AC-01: One discoverable register preserves PF-001–PF-003, adds PF-004–PF-006,
  separates evidence/proposals, and links this initiative without claiming closure.
- AC-02: Canonical rules cover requirements 2–7 without changing independent gates,
  Owner boundaries or adding mandatory artifacts; role references are consistent.
- AC-03: Walk-throughs cover an interrupted heavy check, a wrong/mutable candidate
  root, overlapping Coders, a CI-link-only report, an oversized dispatch and a hook
  proposal. Record expected allowed/stop/escalation behavior and limitations;
  these are documentation cases, not native-runtime success claims.
- AC-04: Full-diff review, whitespace/local-link checks and applicable Lite CI are
  recorded against the actual reviewed source S/delivery H; independent assurance
  follows the existing significant-work route. No application matrix is repeated
  solely for this Lite documentation task.
- AC-05: Existing dirty work is preserved, `main` content stays unchanged, no hook/
  configuration/runtime change occurs, and shared memory is not falsely reconciled.

## Approval and revision boundary

This is a preparation draft. Record exact committed Spec acceptance separately;
then prepare P, obtain independent Project Critic and separate Owner exact-P
approval before implementation. Keep approvals/status outside frozen Spec/P/W.
No plan, Critic verdict or implementation acceptance is implied by this draft.
