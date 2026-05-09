# Security Policy

## Reporting

Please report security issues privately to the project maintainers. Do not open public issues containing tokens, credentials, private emails, webhooks, or exploit details.

If a credential was posted in a chat, issue, pull request, screenshot, document,
or public repository, treat it as exposed and revoke it immediately.

## Repository safety

- Store secrets only in GitHub Secrets or local `.env` files excluded from git.
- Rotate credentials if exposure is suspected.
- Use least-privilege tokens for bots and integrations.
- Keep generated channel posts in draft mode until human approval.

## Credential exposure response

1. Stop using the exposed credential.
2. Revoke it in the provider settings.
3. Review recent account, repository, Actions, webhook, and collaborator activity.
4. Replace it only with a least-privilege credential if the access is still needed.
5. Store the replacement credential in GitHub Secrets, a local credential manager,
   or a password manager.
6. Document the incident without repeating the secret value.

See [docs/credential-rotation-runbook.md](docs/credential-rotation-runbook.md).

## Supported versions

ABC4RD Academy public documentation and curriculum repositories are maintained
on their default branches. Draft branches and local working copies are not
considered supported public releases.

## Safety boundaries

ABC4RD Academy materials are educational. They are not financial advice, medical
advice, clinical deployment guidance, safety-critical robotics deployment
guidance, or legal advice.
