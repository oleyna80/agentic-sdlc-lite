# Project Brief — Agentic SDLC Lite

- **Repository identity:** `oleyna80/agentic-sdlc-lite`
- **Initialization:** SOURCE_REPOSITORY (new projects must replace project identity and set INITIALIZED in an approved setup PR)
- **Product:** Lightweight reusable Git repository template for Codex, Claude Code and other AI assistants.
- **Users:** Individual developers and small teams developing software.
- **Problem:** Agent sessions lose context; duplicated instructions disagree; task workspaces accumulate; source modifications become difficult to audit.
- **Outcome:** Small documented Git workflow, versioned design decisions, recoverable task-local handoffs, shared project overview, six agent roles and optional Git hooks.
- **Core scope:** Root agent contract, a single development procedure, memory/source-of-truth rules, templates, initial checks.
- **Non-goals:** Controller v1, immutable admission, database/registry, trusted automatic agent dispatch, autonomous merge/deploy, OS isolation claims or secret management.
- **Deployment:** None. Copy into a new Git repository/template and adapt details.
- **Known limitations:** Instructions/hooks are cooperative; technical isolation and independent roles must be established outside documents.
- **Status:** Lite v0.1 documentation candidate under draft PR #1, not approved for integration.

**When used as a template:** the new project must have its *own* repository identity, objective, environment, tests, deployment/data boundaries and `Initialization: INITIALIZED`. Before that, ignore source-Lite active PR/milestone facts and follow [initialization](docs/workflow/initialization.md).
