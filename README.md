# Agentic SDLC Lite

A portable, Git-native development kit for AI coding assistants. Designed for **consistent instructions**, **reproducible delivery**, and **project memory that survives chats and agent sessions**.

No Controller, admission registry, SQLite, background orchestration service or competing SDD/lifecycle protocol.

## Getting started

1. **When deriving a new project from this repository (copy/clone, or GitHub template once enabled), first complete [First-use Initialization](docs/workflow/initialization.md).** It replaces Lite's inherited source-project identity, task state and decisions. Do not treat the template's memory as your project's.
2. Configure `PROJECT_BRIEF.md`, `PROJECT_MAP.md` and the new project's committed memory. Optionally create one **root `plan.md`** from `docs/templates/plan.md` for a multi-stage product roadmap.
3. Agents start with [AGENTS.md](AGENTS.md), the shared root contract, then the relevant [Development Protocol](docs/workflow/development.md) and [Memory Protocol](docs/workflow/memory.md).
4. Opt into local Git hooks per clone if useful:

   ```bash
   git config --local core.hooksPath .githooks
   ```

   Git and Bash are required. The repository's GitHub settings, rulesets and required CI are not copied by GitHub template creation.
5. For a significant delivery stage prepare a frozen `docs/changes/<task>/work-block.md` for independent Critic approval, then use scoped Coder, independent Reviewer and Verifier through harness-native delegation. Work in short-lived task branches, submit PRs, and obtain Owner approval before merge. MVP validation and production deployment are separately authorized.

## Project documentation

- [Project scope](PROJECT_BRIEF.md) and [navigation](PROJECT_MAP.md).
- [Architecture and dependencies](docs/architecture/overview.md).
- [Git branches, worktrees and safe cleanup](docs/workflow/workspaces.md).
- [Portable agent/subagent roles](.agents/roles/README.md).
- [Canonical security details](docs/security/boundaries.md).
- [Durable decisions](docs/decisions/), [task records](docs/changes/) and [shared project memory](memory_bank/README.md).
- [Copy-on-use templates](docs/templates/).

There are two levels of effort: **routine** small, reversible low-risk tasks (including tiny safe code fixes) with focused checks and a PR; and **significant** Work Blocks requiring Owner-accepted design/scope, independent Critic and same-SHA Reviewer/Verifier gates. A project roadmap is optional and advances only on independent stage acceptance; task closeout can precede PR merge and never implies deployment. The canonical rules are in the Development Protocol.

Lite v0.1 Foundation is integrated into `main` ([PR #1](https://github.com/oleyna80/agentic-sdlc-lite/pull/1)); it is **not** a certified technical security boundary. Hooks are cooperative; real GitHub/OS authorization must be configured outside this kit. Origin: AzurSysTech Agentic SDLC concepts without its trusted Controller.
