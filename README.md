# Agentic SDLC Lite

A portable, Git-native development kit for AI coding assistants. Its goals are **consistent instructions**, **reproducible delivery**, and **project memory that survives chats and agent sessions**.

It deliberately has **no Controller, admission registry, SQLite, background orchestration service, or duplicated SDD/lifecycle policy**. Git, a small set of documents, opt-in hooks and CI are enough for this baseline.

## Start here

1. Read [PROJECT_BRIEF.md](PROJECT_BRIEF.md) for the product and [PROJECT_MAP.md](PROJECT_MAP.md) for the file map.
2. Agents read [AGENTS.md](AGENTS.md) before acting. The actual workflow is in [docs/workflow/development.md](docs/workflow/development.md).
3. Every new agent session reads [memory_bank/context.md](memory_bank/context.md) and [memory_bank/progress.md](memory_bank/progress.md). Durable project decisions are under [docs/decisions/](docs/decisions/).
4. Install local hooks for this repository if appropriate:

   ```bash
   git config --local core.hooksPath .githooks
   ```

   Git and Bash are required; GitHub rulesets, required reviews and CI must be configured separately.
5. Develop on a short-lived task branch, submit a pull request and obtain Owner approval before merge. Deployment requires separate approval.

## Find what you need

- **Workflow and assurance:** [development.md](docs/workflow/development.md).
- **Memory and handoff:** [memory.md](docs/workflow/memory.md).
- **Subagents:** [agent-roles.md](docs/workflow/agent-roles.md) and [role prompts](.agents/roles/README.md).
- **Project Git/worktrees:** [workspaces.md](docs/workflow/workspaces.md).
- **Safety rules:** [boundaries.md](docs/security/boundaries.md).
- **Optional templates:** [docs/templates/](docs/templates/).
- **Architecture:** [overview.md](docs/architecture/overview.md).

The full process is used only for consequential changes. Routine changes keep a short documented scope, relevant tests and a PR. Memory synchronization is required whenever material context or decisions change, even if the code change is small.

**Status:** Lite v0.1 candidate. AI instructions and local hooks are cooperative, not a sandbox or a substitute for GitHub permissions. Source inspiration: AzurSysTech Agentic SDLC; no authorization or Controller state is inherited.
