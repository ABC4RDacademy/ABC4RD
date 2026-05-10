# GitHub Access Governance

ABC4RD Academy should have its own GitHub access model. Personal accounts can
collaborate with the organization, but the project must not depend on shared
passwords, tokens pasted into chats, or informal access paths.

## Principles

- Use organization-owned repositories for public Academy work.
- Use personal GitHub accounts only as collaborators with explicit roles.
- Do not share passwords, recovery codes, session cookies, or personal access
  tokens in chat, email, documents, screenshots, or public issues.
- Prefer browser-based `gh auth login` or GitHub collaborator invitations.
- Use fine-grained tokens only when browser login is not possible.
- Give the smallest permission that can complete the task.
- Rotate any credential that was exposed or handled in an unsafe channel.
- Keep public commit authorship clean and project-branded where appropriate.

## Recommended Roles

| Role | Minimum GitHub permission | Purpose |
|---|---|---|
| Organization owner | Owner | Account recovery, billing, security, final admin control |
| Repository maintainer | Maintain or Admin | Releases, branch protection, issue labels, repo settings |
| Curriculum editor | Write | README, module, exercise, glossary updates |
| Source reviewer | Triage or Write | Issues, source labels, verification workflow |
| Student contributor | Fork + pull request | Learning path and small contributions |
| Automation account | Fine-grained token only | CI, scheduled checks, bot tasks |

## Access Setup

Preferred setup for a trusted local machine:

```powershell
gh auth logout -h github.com
gh auth login -h github.com -p https -w
gh auth setup-git
```

The browser login should use the Academy-controlled GitHub account or a personal
account explicitly invited to the `ABC4RDacademy` repositories.

After login, verify:

```powershell
gh auth status
git remote -v
git config --get user.name
git config --get user.email
```

Expected project repository remote:

```text
https://github.com/ABC4RDacademy/ABC4RD.git
```

Project SSH setup is documented in
[SSH and Project VPN Access Runbook](ssh-and-vpn-access-runbook.md).

## Fine-Grained Token Rules

Use fine-grained tokens only when necessary.

Minimum repository permissions for publishing docs:

| Permission | Level |
|---|---|
| Contents | Read and write |
| Pull requests | Read and write |
| Issues | Read and write |
| Metadata | Read-only |
| Actions | Read-only unless CI management is required |

Token rules:

- Limit access to named ABC4RD Academy repositories.
- Set an expiration date.
- Store only in the local GitHub credential manager, GitHub Actions secrets, or
  a proper password manager.
- Never paste the token into a chat thread.
- Revoke immediately if exposed.

## Branch and Release Controls

Minimum public infrastructure controls:

- protect `main` after the initial launch push is complete;
- require pull requests for non-maintainer changes;
- require status checks once markdown/link checks are active;
- use signed releases or annotated tags for major public milestones;
- keep release notes source-backed and non-promotional.

## Public Identity Rules

Use these names consistently:

- Brand: `ABC4RD Academy`
- GitHub owner/namespace in URLs: `ABC4RDacademy` until GitHub casing is corrected
- Preferred communication namespace: `ABC4RDAcademy`

Do not mix in unrelated personal account names in public Academy materials.
Personal accounts may appear only as normal GitHub commit authors, issue
participants, reviewers, or collaborators.
