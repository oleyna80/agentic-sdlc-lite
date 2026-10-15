# Agentic SDLC Lite

A portable, Git-native development kit for AI coding assistants. Designed for **consistent instructions**, **reproducible delivery**, and **project memory that survives chats and agent sessions**.

No Controller, admission registry, SQLite, background orchestration service or competing SDD/lifecycle protocol.

## Getting started

1. **When creating a new project from this GitHub template, first complete [First-use Initialization](docs/workflow/initialization.md).** It replaces Lite's inherited source-project identity, task state and decisions. Do not treat the template's memory as your project's.
2. Configure `PROJECT_BRIEF.md`, `PROJECT_MAP.md` and the new project's committed memory.
3. Agents start with [AGENTS.md](AGENTS.md), the shared root contract, then the relevant [Development Protocol](docs/workflow/development.md) and [Memory Protocol](docs/workflow/memory.md).
4. Opt into local Git hooks per clone if useful:

   ```bash
   git config --local core.hooksPath .githooks
   ```

   Git and Bash are required. The repository's GitHub settings, rulesets and required CI are not copied by GitHub template creation.
5. Work in short-lived task branches, submit PRs, and obtain Owner approval before merge. Deployment is separately authorized.

## Project documentation

- [Project scope](PROJECT_BRIEF.md) and [navigation](PROJECT_MAP.md).
- [Architecture and dependencies](docs/architecture/overview.md).
- [Git branches, worktrees and safe cleanup](docs/workflow/workspaces.md).
- [Portable agent/subagent roles](.agents/roles/README.md).
- [Canonical security details](docs/security/boundaries.md).
- [Durable decisions](docs/decisions/), [task records](docs/changes/) and [shared project memory](memory_bank/README.md).
- [Copy-on-use templates](docs/templates/).

There are two levels of effort: routine tasks with scope, focused checks and a PR; and significant tasks requiring approved design/scope, independent Critic and exact-candidate Reviewer/Verifier gates. The canonical decision rules are in the development protocol, not here.

This is a candidate for review, not a certified technical security boundary. Hooks are cooperative; real GitHub/OS authorization must be configured outside this kit. Origin: AzurSysTech Agentic SDLC concepts without its trusted Controller.
