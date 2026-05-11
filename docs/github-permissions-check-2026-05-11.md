# GitHub Permissions Check: 2026-05-11

Status: completed.

Account used:

- `ABC4RDacademy`

Repository:

- `ABC4RDacademy/ABC4RD`

## Confirmed Capabilities

The Academy account can:

- authenticate through the isolated project GitHub CLI wrapper;
- push commits to `ABC4RDacademy/ABC4RD`;
- administer the main repository;
- create and update files;
- create commits;
- push to `main`;
- create issues;
- read and manage labels;
- read and manage milestones;
- read releases;
- create new repositories under `ABC4RDacademy`;
- archive repositories it created;
- use SSH without interfering with other local GitHub accounts.

Confirmed repository permission set:

- `admin: true`;
- `maintain: true`;
- `push: true`;
- `triage: true`;
- `pull: true`.

## Confirmed Repository Features

Enabled:

- Issues;
- Discussions;
- Releases;
- Milestones;
- Labels.

## Known Limitation

The current token does not include `delete_repo`.

This means:

- new repositories can be created;
- repositories can be archived;
- repositories cannot be deleted through the current token.

This is acceptable and safer for day-to-day work.

Temporary test repository created during permission check:

- `ABC4RDacademy/abc4rd-permission-check-20260511`

Status:

- private;
- archived;
- requires manual deletion in GitHub UI if cleanup is desired.

## Branch Protection

Current status:

- `main` is not protected.

Recommendation:

Do not enable strict branch protection yet while the Academy is in rapid launch mode.

Enable branch protection after:

1. first public course modules stabilize;
2. student submissions begin;
3. review workflow is documented;
4. at least one maintainer besides the automation account can approve PRs.

Suggested future policy:

- prevent force pushes;
- prevent branch deletion;
- require pull request review for student submissions;
- require status checks after markdown/link checks are active.

## Operational Rule

Use only:

```powershell
.\tools\gh-abc4rd.ps1
```

for GitHub CLI operations in this project.

Do not use the global GitHub CLI session, because other GitHub accounts may exist on this computer.

