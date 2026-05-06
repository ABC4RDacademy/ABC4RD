# GitLab Activation

This playbook describes how ABC4RD can use GitLab without fragmenting the public project or leaking credentials.

## Operating decision

Keep GitHub as the current source of truth until a formal migration is approved. Use GitLab for one of these controlled roles:

- public mirror for discoverability;
- private planning workspace for maintainers;
- CI/CD experiment space;
- partner-facing review copy;
- issue board for a specific event or course sprint.

Do not run bidirectional repository mirroring unless the maintainers have a written conflict-resolution plan.

## Immediate setup

1. Create or identify the GitLab namespace for ABC4RD Academy.
2. Create the `ABC4RD` project with the same description, topics, license, and README positioning as the GitHub repository.
3. Add a `gitlab` remote locally only after the project URL is confirmed.
4. Push the protected `main` branch and tags.
5. Configure protected branches, required merge request approvals, and default issue labels before inviting contributors.
6. Store tokens only in GitLab CI/CD variables or local ignored environment files.

The local bootstrap script is [scripts/gitlab-bootstrap.ps1](../scripts/gitlab-bootstrap.ps1). It reads `GITLAB_TOKEN`, `GITLAB_HOST`, `GITLAB_NAMESPACE`, and project settings from environment variables or a local ignored `.env` file.

Example:

```powershell
$env:GITLAB_TOKEN = "<fresh-token-from-local-secret-store>"
$env:GITLAB_NAMESPACE = "abc4rd-academy"
.\scripts\gitlab-bootstrap.ps1 -CreateProject -ConfigureProject -AddRemote -CreateStarterIssues
```

Use `-Push` only after the remote URL and project settings are reviewed.

## Activity model

Use GitLab activity for concrete, reviewable work:

- one milestone per public sprint;
- one issue board per course, event, or partner track;
- merge requests for documentation and curriculum changes;
- labels for `course`, `research`, `community`, `event`, `partner`, `security`, and `good first issue`;
- monthly public recap issues that link back to merged work.

Starter issue drafts are maintained in [docs/gitlab-starter-issues.md](gitlab-starter-issues.md).

## Outreach guardrails

Invitations, subscriptions, and external events should be done from an approved account and after human review.

Before any external action, record:

- target person, group, company, or event;
- public reason ABC4RD should engage;
- proposed message;
- expected follow-up owner;
- risk level if the target interprets the message as a partnership claim.

## Token handling

Treat any token pasted into chat, email, or an issue as exposed. Revoke it and create a fresh token with the minimum required scopes.

Recommended token usage:

- `read_api` or `read_repository` for audits;
- `write_repository` only for pushing code;
- `api` only when project creation, labels, issues, or settings must be automated;
- short expiration dates for all automation tokens.

## First seven days

| Day | Action | Output |
| --- | --- | --- |
| 1 | Confirm namespace and repository URL | `gitlab` remote plan |
| 2 | Publish mirror or initial project | visible project with safe README |
| 3 | Add labels, milestones, protected branches | project governance baseline |
| 4 | Open starter issues | course, research, community, event tasks |
| 5 | Create first merge request | small documentation improvement |
| 6 | Draft partner/event outreach | reviewed messages only |
| 7 | Publish recap | public issue or discussion with next steps |

## Sources

- [GitLab repository mirroring](https://docs.gitlab.com/user/project/repository/mirror/)
- [GitLab projects API](https://docs.gitlab.com/api/projects/)
- [GitLab personal access tokens](https://docs.gitlab.com/user/profile/personal_access_tokens/)
