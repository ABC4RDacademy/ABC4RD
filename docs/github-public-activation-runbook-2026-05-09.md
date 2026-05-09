# GitHub Public Activation Runbook: 2026-05-09

This runbook turns the prepared local infrastructure into public GitHub
activity after safe Academy authentication is restored.

## 1. Verify Authentication

```powershell
gh auth status
git -C "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\ABC4RD" remote -v
```

Expected write target:

```text
https://github.com/ABC4RDacademy/ABC4RD.git
```

## 2. Push Main Hub

```powershell
cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\ABC4RD"
git push origin main
git push origin v0.2-research-infrastructure
```

## 3. Push Module 03 Curriculum Batch

```powershell
cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\open-compute-curriculum"
git push origin main

cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\sensor-networks-curriculum"
git push origin main

cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\robotics-systems-curriculum"
git push origin main

cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\digital-health-standards-curriculum"
git push origin main

cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\digital-manufacturing-curriculum"
git push origin main

cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\nanomaterials-research-curriculum"
git push origin main
```

## 4. Create Milestone

```powershell
gh api repos/ABC4RDacademy/ABC4RD/milestones `
  -f title="v0.3 source review and curriculum depth" `
  -f description="Source-review issues, Module 03 curriculum depth, release hygiene, and external documentation contributions."
```

## 5. Create Release

```powershell
gh release create v0.2-research-infrastructure `
  --repo ABC4RDacademy/ABC4RD `
  --title "v0.2 Research Infrastructure" `
  --notes-file "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\ABC4RD\docs\releases\v0.2-research-infrastructure.md"
```

## 6. Open Source-Review Issues

Use the prepared issue text:

- `docs/source-review-issue-drafts-2026-05-09.md`

Open one issue per curriculum repository. Do not mass-tag external people.

## 7. Open Discussions

Use the prepared discussion text:

- `docs/discussion-seed-pack-2026-05-09.md`

Open only the discussions that match enabled categories. If categories are
missing, create categories first or use general discussion categories.

## 8. Verify Pages

After push, check:

- `https://abc4rdacademy.github.io/ABC4RD/`
- homepage hero image;
- Trust Layer section;
- source issue link;
- curriculum repository links;
- GitHub Actions results.

## 9. Branch Protection

After the launch push lands:

- protect `main`;
- require pull requests for outside contributors;
- require markdown/link/secret checks after workflows are green;
- keep emergency owner override available for launch day only.

## 10. External Contribution Follow-Up

Check the existing external PR:

```powershell
gh pr view 6083 --repo openmrs/openmrs-core --web
```

Then choose one additional docs-only target from:

- `docs/external-contribution-queue-2026-05-09.md`

