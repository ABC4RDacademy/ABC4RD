# Jira, GitHub, and GitLab Task Routing

ABC4RD uses one public work system across multiple platforms. The task content
should be consistent even when the platform changes.

## Platform Roles

| Platform | Use it for | Do not use it for |
| --- | --- | --- |
| GitHub Issues | Public contributor tasks, course work, research review, community requests | Private CRM, mass outreach, secrets |
| GitHub Discussions | Broad questions, announcements, community help, research discussion | Task tracking that needs ownership |
| GitLab work items | Sprint execution, protected-branch workflow, Pages and CI work | Duplicating every GitHub issue without reason |
| Jira | Atlassian-side planning, Bitbucket-linked tasks, partner/event project boards | Public claims without source links |
| Bitbucket | Public mirror, pull requests, branch restrictions, Pipelines | Native Issues for new repositories |

## Canonical Work Item Shape

Every task should include:

- title;
- area tag;
- status tag;
- source links;
- expected artifact;
- approval requirement;
- owner or next reviewer;
- platform sync note.

## Area Tags

- `area:ai-education`
- `area:bitcoin-education`
- `area:open-compute`
- `area:research`
- `area:site`
- `area:community`
- `area:events`
- `area:partners`
- `area:governance`
- `area:platform-sync`

## Status Tags

- `status:draft`
- `status:ready`
- `status:review`
- `status:blocked`
- `needs:evidence`
- `needs:approval`
- `good first issue`
- `priority:high`

## Jira Project Recommendation

If Jira is enabled, create one free project:

- Project name: `ABC4RD Academy`
- Key: `ABC`
- Template: Kanban or software project
- Board columns: `Draft`, `Ready`, `In progress`, `Review`, `Done`
- Components: `Course`, `Research`, `Events`, `Partners`, `Community`, `Platform`

Issue types:

- `Task`: implementation or documentation work;
- `Story`: course/community user-facing artifact;
- `Research`: source review and evidence notes;
- `Event watch`: event and ecosystem monitoring;
- `Partner draft`: approval-gated outreach draft.

## Sync Rule

The same work should not become three disconnected tickets. Use one canonical
task and add links:

- GitHub issue for public contribution;
- GitLab work item for sprint execution when needed;
- Jira issue for Atlassian/Bitbucket planning when needed;
- Bitbucket pull request or commit link for mirror verification.

## First Board Seed

Create these first in GitHub or Jira, then mirror where useful:

1. Publish LLMAIX2001a Module 01 learner update.
2. Create Bitcoin 2026 Open Source Hub event watch.
3. Prepare AI agents for open education workshop draft.
4. Review public landing page information architecture.
5. Prepare first community recap draft.
6. Build research source checklist for Bitcoin education.
7. Create contributor onboarding good-first-issue index.
8. Draft partner feedback request for a source-backed artifact.
9. Verify platform sync after each weekly package.
10. Prepare next weekly digest.
