# SDLC Lite — Architecture and File Dependencies

Diagrams **illustrate** `docs/workflow/development.md` and `docs/workflow/memory.md`; they do not introduce a second policy, orchestration runtime or technical authorization.

## Project roadmap and delivery

```mermaid
flowchart TD
    O["Owner intent"] --> INIT{"First-use initialization needed?"}
    INIT -->|Yes| SETUP["Initialize new project; Owner acceptance"]
    INIT -->|No| SCOPE["Risk and scope classification"]
    SETUP --> SCOPE
    SCOPE --> ROUTE{"Routine or significant?"}
    ROUTE -->|Routine| FIX["Orchestrator: bounded change and focused checks"]
    ROUTE -->|Significant| ROAD["Optional root plan.md: project stages"]
    ROAD --> WB["Frozen work-block.md per actionable stage"]
    WB --> OWN["Owner material design/scope acceptance"]
    OWN --> CRIT{"Independent Critic READY on exact WB revision?"}
    CRIT -->|REWORK| WB
    CRIT -->|READY| CODER["Scoped Coder on task branch"]
    CODER --> REVIEW{"Independent Reviewer READY on source SHA?"}
    REVIEW -->|REWORK| CODER
    REVIEW -->|READY| VER{"Independent Verifier PASS on same source SHA?"}
    VER -->|FAIL| CODER
    VER -->|BLOCKED| BLOCK["Owner escalation: no normal clearance"]
    VER -->|PASS| HAND["Task-local handoff and delivery result"]
    FIX --> HAND
    HAND --> PR["Subject PR and current-head CI"]
    PR --> GO{"Owner merge decision"}
    GO -->|Approved| GIT["Verify actual PR/merge disposition"]
    GO -->|Not approved| PR
    GIT --> STAGE{"Separate project-stage acceptance met?"}
    STAGE -->|No| HAND
    STAGE -->|Yes| NEXT["Advance roadmap; assess next WB or MVP"]
    NEXT --> MVP["MVP deployment and validation with Owner GO"]
    MVP --> PROD["Production release with separate Owner GO"]
```

`DELIVERY_READY` is only a **working phase** in handoff; **final task closeout** is `COMPLETE / BLOCKED / CANCELLED` and can occur before PR merge. Project-stage acceptance, merge, MVP deployment/validation and production are separate evidenced facts with their own authorization.

## Documentation ownership

```mermaid
flowchart TD
    OWNER["Owner and actual OS/platform permissions"] --> AG["AGENTS.md — shared agent contract"]
    AG --> DEV["docs/workflow/development.md — canonical workflow"]
    AG --> MEM["docs/workflow/memory.md — canonical memory"]
    AG --> INIT["docs/workflow/initialization.md — first use"]
    AG --> GIT["docs/workflow/workspaces.md — branches and cleanup"]
    AG --> SEC["docs/security/boundaries.md — security details"]
    AG --> ROLES[".agents/roles — portable roles"]
    AG --> CLAUDE["CLAUDE.md — imports AGENTS.md"]
    DEV --> ROAD["root plan.md — optional whole-project roadmap"]
    DEV --> WB["docs/changes/task/work-block.md — frozen stage contract"]
    MEM --> HAND["docs/changes/task/handoff.md — mutable branch-local evidence"]
    MEM --> BANK["memory_bank/ — last reconciled integrated facts"]
    MEM --> ADR["docs/decisions/ — durable accepted decisions"]
    WB -.-> TMPL["docs/templates/ — copy-on-use forms"]
    HAND -.-> PR["Live Git / GitHub PR evidence"]
```

Arrows are references, not runtime permissions. Codex, Claude Code and other harnesses perform native orchestration. Parallel tasks have separate handoffs; shared memory is updated by an authorized integration writer only.

## File layout

```text
project/
├── AGENTS.md                      # sole shared agent contract
├── CLAUDE.md                      # @AGENTS.md import, no extra policy
├── PROJECT_BRIEF.md               # project identity and constraints
├── PROJECT_MAP.md                 # navigation
├── plan.md                        # optional ONE project roadmap
├── .agents/roles/                 # logical role briefs
├── memory_bank/                   # reconciled integrated summary
│   ├── context.md
│   ├── progress.md
│   ├── decisions.md
│   └── orchestrator-log.md
├── docs/
│   ├── workflow/                  # canonical procedures
│   ├── architecture/              # descriptive diagrams only
│   ├── decisions/                 # accepted design rationale
│   ├── changes/<task>/            # frozen WB, separate handoff and reports
│   ├── templates/                 # non-authoritative forms
│   └── security/                  # security details
├── .githooks/                     # optional conventional Git hooks
└── .github/workflows/             # structural CI
```

Previously approved `docs/changes/<task>/plan.md` are historical **task-specific implementation plans** with original exact Critic provenance—not a competing root roadmap. There is no Controller, SQLite, admission service, custom dispatcher/adapter, skill-fetcher, native agent installer or autonomous merge/deploy system.
