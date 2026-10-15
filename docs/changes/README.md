# Work Block Records and Recoverable Handoffs

Significant new stages use one **frozen** task contract, with later operational state in separate documents:

```text
docs/changes/<task>/
├── work-block.md      # fixed planning scope/acceptance; Critic reviews exact SHA
├── intent.md          # only if useful
├── spec.md            # only if useful
├── critic-review.md   # separate exact-WB-revision report
├── handoff.md         # mutable working phase, gate evidence and next action
├── review.md          # separate source Reviewer evidence when kept here
├── verification.md    # separate Verifier evidence when kept here
└── closeout.md        # final task status, independently recorded PR/merge facts
```

An optional single **repository-root `plan.md`** is the whole-project roadmap, copied from `docs/templates/plan.md`. It lists stages and dependencies; Orchestrator instantiates a stage's Work Block only when actionable. No project roadmap is required for a standalone significant WB or routine task.

**Legacy compatibility:** Previously approved `docs/changes/<task>/plan.md` files are task-specific implementation plans, *not* additional project roadmaps. Preserve their approved Critic evidence and exact review SHA; do not rename, overwrite or silently reinterpret them. A new WB derived from a legacy plan must explicitly cite its predecessor and renew affected Owner/Critic decisions for material changes.

After Critic READY, the Work Block remains **frozen**. Do not fill verdict/status/source SHA/PR fields in it: task-local handoff, independent reports and PR carry those records with the exact reviewed planning SHA. `DELIVERY_READY` is only a working phase. Final task closeout remains `COMPLETE / BLOCKED / CANCELLED` (which can occur before PR merge), separate from roadmap-stage acceptance, merge, MVP testing and deployment.

Task-local `handoff.md` is required for significant/concurrent work, not a trivial one-commit task with adequate PR details. Do not overwrite another task's handoff or the integrated `memory_bank/context.md` with one unmerged branch's state. Authority, exact candidate checks and post-merge reconciliation are only defined in `docs/workflow/development.md` / `docs/workflow/memory.md`. A template/folder name grants no permissions.

New projects must handle source-template-specific task history using `docs/workflow/initialization.md`.
