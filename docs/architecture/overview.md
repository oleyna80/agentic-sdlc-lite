# SDLC Lite — Architecture and File Dependencies

These diagrams visualize the canonical procedures. They are **not** an alternative policy, controller, lifecycle state machine or technical authorization system.

## Development and assurance

```mermaid
flowchart TD
    O["Owner request"] --> INIT{"New project from template?"}
    INIT -->|Yes| SETUP["First-use initialization and Owner approval"]
    INIT -->|No| SCOPE["Confirm task scope"]
    SETUP --> SCOPE
    SCOPE --> IMPACT{"Routine or significant?"}
    IMPACT -->|Routine| CODE["Scoped implementation"]
    IMPACT -->|Significant| PLAN["Intent / spec / plan"]
    PLAN --> APPROVAL{"Owner accepts material design and scope"}
    APPROVAL -->|Rework| PLAN
    APPROVAL -->|Approved| CRIT{"Independent Critic READY on exact plan"}
    CRIT -->|REWORK| PLAN
    CRIT -->|READY| CODE
    CODE --> TEST["Tests, candidate commit and task handoff"]
    TEST --> ASSURE{"Significant: Reviewer READY + Verifier PASS on SAME SHA"}
    ASSURE -->|REWORK / FAIL / BLOCKED| RESOLVE["Correct and recheck or escalate to Owner"]
    RESOLVE --> CODE
    ASSURE -->|Clear, or routine checks done| PR["PR / required current-head CI"]
    PR --> GO{"Owner merge decision"}
    GO -->|Not approved| PR
    GO -->|Approved| MAIN["main"]
    MAIN --> POST["Post-merge memory reconciliation via authorized PR"]
```

The routine path does not require separate independent gates by default. For significant work a `BLOCKED` required Verifier means **no normal assurance clearance**, even if Reviewer is READY. Owner-approved exceptions are explicitly recorded and are not falsely reported as gate PASS. Exact source-vs-PR-head and evidence-only rules are in `docs/workflow/development.md`. Deployment requires separate Owner authorization.

## Knowledge ownership

```mermaid
flowchart TD
    OWNER["Owner / external permissions"] --> AG["AGENTS.md — root instructions"]
    AG --> DEV["docs/workflow/development.md — canonical workflow"]
    AG --> MEM["docs/workflow/memory.md — canonical memory procedure"]
    AG --> INIT["docs/workflow/initialization.md — first use"]
    AG --> GIT["docs/workflow/workspaces.md — Git and cleanup"]
    AG --> SEC["docs/security/boundaries.md — safety details"]
    AG --> ROLES[".agents/roles/ — delegated responsibilities"]
    AG --> CLAUDE["CLAUDE.md — adapter"]
    DEV --> PLAN["docs/changes/<task>/ — specification, plan, assurance"]
    MEM --> HAND["docs/changes/<task>/handoff.md — branch-local"]
    MEM --> BANK["memory_bank/ — last reconciled integration"]
    MEM --> ADR["docs/decisions/ — durable rationale"]
    PLAN -.-> TMPL["docs/templates/ — optional forms"]
    BANK -.-> PR["GitHub PRs / live Git verification"]
```

Arrows show information and references, not runtime permission. **Parallel tasks own separate handoff files; only a designated integration change reconciles the shared memory.**

## File layout

```text
project/
├── AGENTS.md                         # single root agent contract
├── CLAUDE.md                         # runtime adapter, no duplicate rules
├── PROJECT_BRIEF.md                  # repository identity, purpose, constraints
├── PROJECT_MAP.md                    # source-of-truth navigation
├── .agents/roles/                    # six portable subagent briefs
├── memory_bank/                      # last integrated status, not all open branches
│   ├── context.md
│   ├── progress.md
│   ├── decisions.md
│   └── orchestrator-log.md
├── docs/
│   ├── workflow/                     # canonical procedures, including initialization
│   ├── architecture/                 # descriptive diagrams
│   ├── decisions/                    # approved durable design rationale
│   ├── changes/<task>/               # per-task spec/plan/reviews/handoff
│   ├── templates/                    # non-authoritative reusable forms
│   └── security/                     # safety details
├── .githooks/                        # cooperative local Git checks
└── .github/workflows/                # repository CI
```

No trusted Controller, admission store, SQLite, native subagent launcher or autonomous merge/deploy service is included.
