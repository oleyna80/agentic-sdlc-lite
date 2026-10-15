# Task Documentation and Recoverable Handoffs

A bounded task may have an optional directory:

```text
docs/changes/login-rate-limit/
├── intent.md
├── spec.md
├── plan.md
├── critic-review.md
├── handoff.md
└── closeout.md
```

**Task-local `handoff.md` is required for significant tasks or work in parallel branches**, not for a trivial one-commit task whose PR description already captures all relevant state. It keeps the branch-specific current context, exact SHA, tests and next action; never replace another task's handoff or overwrite global `memory_bank/context.md` with task A's state while task B is active.

Critic's report must be separate from the exact reviewed plan revision. Reviewer/Verifier evidence must cite their exact candidate SHA. Normal complete/blocked/cancelled vocabulary and post-merge reconciliation are defined exclusively in `docs/workflow/development.md`.

Copy templates only when they add value. A folder, Markdown status or template does not grant authority. New projects created from SDLC Lite must remove/review inherited **source-template-specific** task records during first-use initialization.
