# Claude Code Adapter

**Read and follow [AGENTS.md](AGENTS.md).** It is the only root agent policy. This file adds no independent lifecycle, review, security or memory rules.

Claude Code can use the role briefs in `.agents/roles/` and the project documentation map. Actual subagent/tool capabilities depend on the user's installed runtime; no model, native agent or tool is assumed present.
