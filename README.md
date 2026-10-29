# Agentic SDLC Lite

**The process is the product; the harness executes it.** Agentic SDLC Lite is a portable, artifact-driven and Git-native engineering kit for Codex, Claude Code and other native AI-agent harnesses. It provides bounded delegation, exact Git provenance and durable task memory, not a Controller, permission registry, scheduler, database or competing lifecycle runtime.

## Getting started

1. **Derived projects:** complete [First-use Initialization](docs/workflow/initialization.md), replacing source Lite identity/active memory/decisions before feature work. Template GitHub protections and permissions are **not** copied.
2. Read [AGENTS.md](AGENTS.md), [canonical Development Protocol](docs/workflow/development.md), [Memory Protocol](docs/workflow/memory.md) and the actual task's branch/handoff. Verify repository/worktree/branch/HEAD and permissions, not chat state.
3. Classify work by impact/risk. **Routine** low-risk tasks (including safe tiny code fixes) use bounded checks, optional independent gates and an adequate task PR/issue; no mandatory P/W/handoff for one uninterrupted routine.
4. **Significant initiatives:** after verified Owner/Issue intent, Owner accepts exact project-local Requirements + Design `docs/projects/<project-id>/spec.md`. Orchestrator prepares `docs/projects/<project-id>/plan.md` as P. **Independent Project Critic reviews exact P before Owner approval**. Revisions remain byte-frozen; the historical root `plan.md` is legacy evidence only, never the default or ROADMAP.
5. **Autonomous stages:** Orchestrator prepares committed actionable W inside approved P, obtains its **own independent Stage Critic READY**, then delegates bounded Coder. Independent Reviewer READY and Verifier PASS cover the same source S. Authorized commits/push/actual CI and durable stage closeout allow the next stage inside P **without Owner approval per WB**. Merge/deployment are separate Owner decisions.
6. Optional conventional Git hooks can be connected with appropriate permissions; follow [Connecting Git hooks](docs/workflow/workspaces.md#connecting-git-hooks) to check existing hooks and configuration scope first. Hooks are cooperative and are not filesystem/sandbox enforcement; new hook rollout is a separate scoped decision.

## Navigation

- [Product intent](PROJECT_BRIEF.md), [verified project journey](ROADMAP.md), [project map](PROJECT_MAP.md) and [architecture](docs/architecture/overview.md).
- [Workspaces and target verification](docs/workflow/workspaces.md); [first-use procedure](docs/workflow/initialization.md).
- [Portable agent roles](.agents/roles/README.md), [role index](docs/workflow/agent-roles.md), [copy-on-use templates](docs/templates/).
- [Project-local accepted Spec/P](docs/projects/issue-010-documentation-model/spec.md) (example source initiative; **not** a global default), [task evidence and handoffs](docs/changes/), [integrated memory](memory_bank/README.md), [accepted decisions](docs/decisions/) and [security boundaries](docs/security/boundaries.md).

**Provenance and gates:** project P READY means only ready for Owner review; stage W READY plus approved P/conformance and actual permissions permits Coder; actual source assurance binds a single S and current-head CI binds delivery H. `DELIVERY_READY` is not task COMPLETE, merge or deployment. Task CHECKPOINT requirements depend on interruption, significance and parallel writers.

SDLC Lite is a documented workflow, **not** certified technical isolation. Significant changes to security or agent authority are significant even when Markdown-only. Original historic decisions/legacy contracts retain their SHA and verdict.
