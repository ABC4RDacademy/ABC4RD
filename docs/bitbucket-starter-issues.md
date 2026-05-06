# Bitbucket Starter Issues

These issues are ready to create in Bitbucket after the workspace, repository,
and fresh token are configured.

Bitbucket issues do not map one-to-one to GitHub labels, so use status tags in
the issue body and keep the same naming discipline as `.github/labels.yml`.

## Priority issues

### Platform mirror: verify Bitbucket repository page and README rendering

Status tags: `area:site`, `priority:high`, `status:review`

Output:

- repository description and public/private decision confirmed;
- README rendering checked;
- website, GitHub, Telegram, Discord, and X links verified;
- public wording reviewed for unverified partnership claims;
- Bitbucket URL recorded in `docs/bitbucket-activation.md`.

### Governance: configure branch restrictions and pull request checks

Status tags: `area:community`, `priority:high`, `needs:approval`

Output:

- force-push protection for `main`;
- branch deletion protection for `main`;
- at least one required approval;
- completed pull request tasks before merge;
- approval reset when pull requests change.

### Activity queue: open event, partner, course, research, and community drafts

Status tags: `area:events`, `area:partners`, `area:research`, `status:draft`

Output:

- one event watch draft;
- one partner outreach draft;
- one course issue for LLMAIX2001a;
- one research evidence issue;
- one community recap draft.

### Draft announcement pack: GitHub, GitLab, Bitbucket, Telegram, Discord, X

Status tags: `area:community`, `status:draft`, `needs:approval`

Output:

- GitHub Discussion draft;
- GitLab issue or project update draft;
- Bitbucket issue update draft;
- Telegram short post draft;
- Discord announcement draft;
- X thread draft.

### Evidence pack: 2017 ABC4RD origin and 2026 global Bitcoin education context

Status tags: `area:research`, `needs:evidence`, `priority:high`

Output:

- compact citation block;
- reusable safe wording for repository pages;
- source-backed partner brief paragraph;
- rejection list for claims that require private confirmation.
