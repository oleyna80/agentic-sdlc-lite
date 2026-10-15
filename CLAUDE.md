# Claude Code — Project Entry Point

Follow [AGENTS.md](AGENTS.md) as the shared contract for all agents. Do not duplicate or override its authority and workflow rules.

At session start:
1. Read `AGENTS.md` and `PROJECT_MAP.md`.
2. Inspect current Git branch/HEAD/status; protect unrelated work.
3. Identify the task scope, acceptance criteria, and tests.
4. For high-impact tasks, read existing architecture and approved task documentation before implementation.
5. Implement only in an approved task branch; report exact commits, test results, and remaining limitations.

Role descriptions: `docs/workflow/agent-roles.md`.
