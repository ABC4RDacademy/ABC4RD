# Credential Rotation Runbook

This runbook defines what ABC4RD Academy should do when a GitHub token, password,
recovery code, webhook secret, API key, or other credential may have been exposed.

## Immediate Response

1. Stop using the exposed credential.
2. Revoke it in the provider settings.
3. Create a replacement credential only if it is still needed.
4. Use the smallest possible scope.
5. Store the replacement credential in a safe location.
6. Verify which repositories or systems the credential could access.
7. Check recent account, repository, Actions, and audit activity.
8. Record the incident internally without publishing the secret value.

## GitHub Personal Access Token Rotation

For GitHub:

1. Open GitHub settings.
2. Go to Developer settings.
3. Open Personal access tokens.
4. Revoke the exposed token.
5. Create a fine-grained replacement token only if browser login or collaborator
   access is not enough.
6. Restrict repository access to the required ABC4RD Academy repositories.
7. Set a short expiration date.
8. Grant only the permissions required for the task.

Recommended minimum permissions for repository documentation work:

- `Contents: Read and write`
- `Issues: Read and write`
- `Pull requests: Read and write`
- `Metadata: Read-only`

## Local Re-Authentication

Preferred path:

```powershell
gh auth logout -h github.com
gh auth login -h github.com -p https -w
gh auth setup-git
```

Then verify:

```powershell
gh auth status
```

## What Not To Do

- Do not paste tokens into chat.
- Do not commit tokens into repositories.
- Do not put tokens in README files, issues, pull requests, or screenshots.
- Do not reuse exposed tokens.
- Do not give broad organization access when repository-limited access is enough.
- Do not keep long-lived tokens for routine documentation work.

## Audit Checklist

After rotation, check:

- recent repository pushes;
- newly created branches or tags;
- open pull requests;
- new GitHub Actions secrets;
- repository webhooks;
- organization members and outside collaborators;
- GitHub Actions workflow changes;
- issue or discussion spam;
- changed repository settings.

## Recovery Standard

A credential incident is considered contained when:

- the exposed credential is revoked;
- replacement access uses minimal scope;
- `gh auth status` shows the intended account;
- a test push or dry-run permission check succeeds;
- no suspicious repository activity is found;
- the incident is documented without exposing the secret.

