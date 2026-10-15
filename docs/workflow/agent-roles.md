# Agent Roles

Roles are functions, not additional daemons, mandatory tools, or permission levels.

- **Owner:** defines the goal and scope; approves architectural exceptions, merge, deployment, external effects.
- **Planner/Architect:** prepares architecture, specification, interface boundaries, and test strategy when needed.
- **Critic:** independently challenges the proposal *before* significant implementation; produces READY or REWORK with concrete findings.
- **Coder:** owns the bounded implementation, local tests, and exact candidate commit(s).
- **Reviewer:** inspects changed code and risks against the approved task; does not approve its own authored source as independent review.
- **Verifier:** independently checks acceptance criteria and actual reproducible evidence.
- **Coordinator:** assembles status/evidence and routes follow-up actions. No special control-plane process is required.

For routine work, the Owner and one coder/reviewer may be sufficient. For high-risk changes, Critic and independent assurance are mandatory unless the Owner explicitly narrows or changes the task boundary after evaluating risk.

Agent capabilities never exceed the permissions of the OS user, GitHub account/token, and approved task.
