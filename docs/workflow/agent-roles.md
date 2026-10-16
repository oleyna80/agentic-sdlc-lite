# Agent Roles — Router

The canonical role briefs are in [`.agents/roles/`](../../.agents/roles/README.md). This file is a **navigation index only**; it does not restate their permissions or define workflow gates.

- [Orchestrator](../../.agents/roles/orchestrator.md) — coordinate scope, handoff and memory synchronization.
- [Architect](../../.agents/roles/architect.md) — discovery, interface/architecture proposals.
- [Critic](../../.agents/roles/critic.md) — independent challenge to frozen Work Block (or accepted legacy task plan).
- [Coder](../../.agents/roles/coder.md) — bounded implementation.
- [Reviewer](../../.agents/roles/reviewer.md) — exact-candidate code review.
- [Verifier](../../.agents/roles/verifier.md) — acceptance evidence.

Agents are **logical roles**, not automatically installed native subagents. Use runtime-native agents if available; otherwise an explicitly separated read-only session or human can fill the role. The active task's actual permission and isolation determine the strength of the evidence.

Workflow and review requirements live **only** in [development.md](development.md). Role briefs and templates cannot redefine them.
