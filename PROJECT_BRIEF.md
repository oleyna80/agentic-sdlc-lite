# Project Brief — Agentic SDLC Lite

- **Repository identity:** `oleyna80/agentic-sdlc-lite`
- **Initialization:** SOURCE_REPOSITORY (new projects must replace project identity and set INITIALIZED in an approved setup PR)
- **Product:** Lightweight reusable Git repository template for Codex, Claude Code and other AI assistants.
- **Users:** Individual developers and small teams developing software.
- **Problem:** Agent sessions lose context; duplicated instructions disagree; task workspaces accumulate; source modifications become difficult to audit.
- **Outcome:** Portable, harness-native, artifact-driven engineering process with bounded work blocks, exact independent assurance, Git-backed task recovery, versioned design decisions and optional cooperative hooks. **The process is the product; the harness executes it.**
- **Core scope:** Root agent contract, one canonical lifecycle, project-local approved Requirements + Design Spec and Project P for new significant initiatives, bounded stage W, memory/source-of-truth rules, optional human-readable ROADMAP, templates and initial checks.
- **Non-goals:** Controller v1, immutable admission, database/registry, trusted automatic agent dispatch, autonomous merge/deploy, OS isolation claims or secret management.
- **Deployment:** None. Copy into a new Git repository/template and adapt details.
- **Known limitations:** Instructions/hooks are cooperative; technical isolation and independent roles must be established outside documents.
- **Project journey and maturity:** See [ROADMAP.md](ROADMAP.md) for dated, evidence-linked origin, current status, limits and future directions. This enduring Brief does not provide feature approvals or replace live Git/Owner decisions. No production deployment or security certification is implied.

**When used as a template:** the new project must have its *own* repository identity, objective, environment, tests, deployment/data boundaries and `Initialization: INITIALIZED`. Before that, source-Lite project-local Spec/P, approvals, historical task statuses, ROADMAP milestones and integrated memory are not active downstream authority; follow [initialization](docs/workflow/initialization.md). A derived project may omit ROADMAP entirely.
