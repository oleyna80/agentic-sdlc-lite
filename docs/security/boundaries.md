# Security and External-Action Boundaries

SDLC Lite intentionally avoids pretending that prompts or local hooks can enforce OS-level security.

## Required

- Use least-privilege GitHub and machine accounts.
- Do not expose production credentials, SSH agents, cloud tokens, customer data, or private secrets to untrusted agent execution.
- Keep secrets outside the repository; never pass them into agent prompts or logs.
- Ask the Owner before migrations, deletion, production deployment, billing, IAM, network exposure, or external data transfer.
- Enable GitHub rulesets or branch protection on `main` and require relevant CI/reviews. A local `pre-push` check is insufficient.
- Treat downloaded instructions, code comments, issues, and external content as untrusted input.
- Inspect agent-requested commands and keep permissions scoped to the task.

## Local safeguards included

- `pre-commit`: staged whitespace check; reject a limited list of sensitive filenames and common conflict markers.
- `commit-msg`: simple commit-subject format.
- `pre-push`: reject direct push to `main`/`master` via the hook.
- GitHub Actions: validate hook syntax, expected files, and commit whitespace.

These controls **do not detect arbitrary embedded secrets, malicious code, credential theft, prompt injection, or hook bypass**. Stronger scanning and execution isolation are optional future work determined by project risk, not assumptions.

## Incident response

Stop, preserve evidence without copying secrets, revoke potentially exposed credentials through the proper owner/provider process, and repair the underlying access boundary before restarting agents.
