# Bitbucket Activation

This playbook describes how ABC4RD can use Bitbucket as a controlled repository
channel without fragmenting the public project or exposing credentials.

## Operating decision

Keep GitHub as the current public source of truth until maintainers approve a
formal migration. Use Bitbucket for one of these controlled roles:

- private maintainer backup;
- partner-facing review copy;
- repository mirror for teams already using Atlassian tools;
- Jira-linked review surface for a specific course, event, or partner track;
- automation testbed for draft-only publishing workflows.

Do not run bidirectional repository synchronization until maintainers have a
written conflict-resolution plan.

## Immediate setup

1. Rotate any Bitbucket API token that was pasted into chat, email, issues, logs,
   screenshots, or documents.
2. Create a fresh token with the minimum required scopes and a short expiration.
3. Confirm the Bitbucket workspace slug and project key.
4. Create the `ABC4RD` repository with the same description, license, and README
   positioning as the GitHub repository.
5. Add a `bitbucket` remote locally only after the repository URL is confirmed.
6. Push the protected `main` branch and tags.
7. Configure branch restrictions, default reviewers, and access groups before
   inviting contributors.
8. Link Jira for Atlassian-side task tracking, or keep tasks in GitHub/GitLab
   with explicit links from the Bitbucket repository details.

## Local automation

Use the prepared scripts from the `github_work` directory after a fresh token is
stored in local environment variables:

```powershell
$env:BITBUCKET_AUTH_MODE = "Bearer"
$env:BITBUCKET_TOKEN = "<fresh-token>"
$env:BITBUCKET_WORKSPACE = "<workspace-slug>"
$env:BITBUCKET_PROJECT_KEY = "<project-key>"

.\PUBLISH_BITBUCKET.ps1 -ConfigureBranchRestrictions
```

Repositories are created as private by default. Add `-Public` only after
maintainer approval. Add `-Push` when the remote and repository visibility have
been checked.

## Activity model

Use Bitbucket activity for concrete, reviewable work:

- one project milestone per public sprint;
- pull requests for documentation, curriculum, research, and website changes;
- Jira, GitHub, or GitLab work items for `course`, `research`, `community`,
  `event`, `partner`, `security`, and `good first issue`;
- draft-only outreach tasks that require human approval before sending;
- weekly recap work items that link back to merged work.
- pull requests created with `.bitbucket/pull_request_template.md`;
- Markdown validation through `bitbucket-pipelines.yml`.

## Outreach guardrails

Invitations, subscriptions, event submissions, and partner messages should be
done from an approved account and only after review.

Before any external action, record:

- target person, group, company, community, or event;
- public reason ABC4RD should engage;
- proposed message;
- source-backed learning artifact to share;
- expected follow-up owner;
- risk level if the target interprets the message as a partnership claim.

## Token handling

Treat any token pasted into chat as exposed. Revoke it and create a fresh token
with the minimum required scopes.

Recommended token usage:

- read-only scope for repository audits;
- repository write scope only for pushes and pull requests;
- project or workspace admin scope only for setup automation;
- short expiration dates for all automation tokens;
- local ignored environment files or secure CI variables only.

## First ten actions

| Order | Action | Output |
| --- | --- | --- |
| 1 | Rotate exposed token | Fresh least-privilege credential |
| 2 | Confirm workspace and project key | Bitbucket remote plan |
| 3 | Create `ABC4RD` repository | Visible controlled mirror target |
| 4 | Add protected branch rules | Governance baseline |
| 5 | Push `main` and tags | Initial repository copy |
| 6 | Link Jira or external issue tracker | Public work queue |
| 7 | Open first pull request | Small documentation improvement |
| 8 | Draft partner and event queue | Reviewed outreach candidates |
| 9 | Invite approved maintainers only | Accountable access list |
| 10 | Publish weekly recap draft | Human-reviewed community update |

## Automation boundary

Automation may create repositories, branches, pull requests, Jira/GitHub/GitLab
work-item drafts, and draft messages after credentials and workspace settings
are confirmed. It should not mass-invite users, subscribe to communities, submit
event applications, or send partner outreach without a human-approved target
list and message.

## Bitbucket Issues and Wiki sunset

Do not spend setup time looking for the legacy native Bitbucket Issues or Wiki
toggle for new repositories. Atlassian announced that, starting in April 2026,
Issues and Wikis are no longer available to turn on for repositories where they
were not already used. Existing Bitbucket Issues and Wikis are scheduled for
removal from Bitbucket Cloud in August 2026.

For ABC4RD, the accepted options are:

- link Jira Cloud as the Atlassian task surface;
- keep execution in GitHub Issues and GitLab work items;
- add clear external tracker links in Bitbucket repository details.

## Sources

- [Bitbucket Cloud REST API](https://developer.atlassian.com/cloud/bitbucket/rest/intro/)
- [Bitbucket access tokens](https://support.atlassian.com/bitbucket-cloud/docs/access-tokens/)
- [Bitbucket repositories API](https://developer.atlassian.com/cloud/bitbucket/rest/api-group-repositories/)
- [Understand Bitbucket issues](https://support.atlassian.com/bitbucket-cloud/docs/understand-bitbucket-issues/)
- [Announcing sunset of Bitbucket Issues and Wikis](https://community.atlassian.com/forums/Bitbucket-articles/Announcing-sunset-of-Bitbucket-Issues-and-Wikis/ba-p/3193882)
- [Bitbucket pull request templates](https://support.atlassian.com/bitbucket-cloud/kb/pull-request-templates-in-bitbucket-cloud/)
- [Bitbucket Pipelines for Node.js](https://support.atlassian.com/bitbucket-cloud/docs/javascript-nodejs-with-bitbucket-pipelines/)
- [Bitbucket branch restrictions](https://support.atlassian.com/bitbucket-cloud/docs/use-branch-permissions/)
