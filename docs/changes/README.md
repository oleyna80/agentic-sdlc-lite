# Project and Stage Work Records

The sole lifecycle authority is [Development Protocol](../workflow/development.md). **Conditional checkpoint matrix** and recovery are defined only in [Memory Protocol](../workflow/memory.md). Templates, folders, reports and Skills grant no permissions.

**Project definition:** Owner accepts project specification. Orchestrator commits complete root `plan.md` as P. Independent **Project Critic** reviews exact committed P **before Owner approval**. A separate Owner decision approves exact P and delegated scope; progress/verdicts never mutate P.

**Autonomous stages:** Orchestrator derives actionable committed W under approved P, verifies conformance and uses independent **Stage Critic** READY before Coder. There is **no Owner approval per conforming W**, but actual sandbox permissions and material-change escalation still apply. Ordinary Stage/Coder/Reviewer/Verifier REWORK loops and authorized delivery can proceed within P.

```text
docs/changes/<task>/
├── work-block.md      # committed reviewed W, frozen subject
├── critic-review.md   # Stage Critic verdict, separate from Project Critic
├── handoff.md         # mutable task phase, P/W/S/H evidence and next action
├── review.md          # independent source Reviewer if required
├── verification.md    # independent source Verifier if required
├── closeout.md        # final task status and separate PR/merge state
├── intent.md          # optional clarification
└── spec.md            # optional task-specific acceptance details
```

Routine short uninterrupted low-risk tasks (including safe tiny code fixes) can use an adequate PR/issue without P/W/Critic or handoff, with honest N/A rationale; interrupted/parallel/significant work follows the matrix in memory.md. `DELIVERY_READY` is a working phase, not COMPLETE. Task COMPLETE, project-stage acceptance, PR merge and deployment have separate evidence.

Legacy approved `docs/changes/<task>/plan.md` are historic per-task contracts with original Owner/Critic provenance; do not reinterpret them as root project P or rewrite their reviewed content. New derived repositories must follow [Initialization](../workflow/initialization.md).
