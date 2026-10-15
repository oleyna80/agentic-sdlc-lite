# SDLC Lite — Architecture and Dependency Map

**Status:** proposed v0.1 foundation. This diagram describes the Lite convention, not an installed authorization engine.

## Work flow

```mermaid
flowchart LR
    O["Owner / request"] --> S["Scope"]
    S --> R{"Risk / complexity"}
    R -->|Routine| C["Coder"]
    R -->|Significant| P["Intent / Spec / Plan"]
    P --> K["Independent Critic"]
    K -->|READY| C
    K -->|REWORK| P
    C --> T["Local checks + Git hooks"]
    T --> V["Review / verify"]
    V -->|REWORK| C
    V -->|READY| PR["Subject branch PR + CI"]
    PR --> GO{"Owner GO"}
    GO -->|approved| M["main"]
    GO -->|not approved| PR
```

Roles are logical; separate people or sessions are used where independent assurance is needed. Hooks are cooperative checks; GitHub branch protections and Owner decisions remain external.

## File and authority dependencies

```mermaid
flowchart TD
    OWNER["Owner instructions"] --> AG["AGENTS.md"]
    AG --> MAP["PROJECT_MAP.md"]
    AG --> CLAUDE["CLAUDE.md (adapter)"]
    MAP --> WORK["docs/workflow/*"]
    MAP --> ARCH["docs/architecture/*"]
    WORK --> TMPL["docs/templates/*"]
    TMPL --> CHANGES["docs/changes/<task>/"]
    AG -.-> HOOKS[".githooks/*"]
    HOOKS -.-> CI["GitHub Actions checks"]
    CI --> PR["Pull request"]
    PR --> MAIN["main (with branch protection)"]
```

Solid links indicate documented use/information flow, not programmatic authorization. Dashed links identify supporting checks.

## Directory map

```text
project/
├── AGENTS.md                 # shared AI agent instructions
├── CLAUDE.md                 # Claude-specific entry point
├── PROJECT_MAP.md            # project navigation
├── docs/
│   ├── architecture/         # architecture and decisions
│   ├── workflow/             # procedures and roles
│   ├── security/             # safety boundaries
│   ├── templates/            # copy-on-use documents
│   └── changes/              # optional task artifacts
├── .githooks/                # local Git checks
└── .github/workflows/        # server-side CI checks
```

Application source directories are intentionally not prescribed. There is no Controller, work-block registry, persistent state machine, orchestrator, or automation backend in this kit.

## Git workspace model

```mermaid
flowchart TD
    A["main (stable checkout)"] --> B["feat/* or fix/* task branch"]
    B --> WT["Temporary worktree (optional)"]
    WT --> TEST["Edits + tests + commits"]
    TEST --> PR["GitHub PR / checks"]
    PR --> O["Owner-approved merge to main"]
    O --> CLEAN["Safe worktree cleanup"]
```

`main` stays stable. Temporary worktrees and full clones are different; never remove either without inspecting their actual state.
