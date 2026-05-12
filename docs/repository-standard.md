# ABC4RD Academy Repository Standard

ABC4RD Academy repositories should not look like passive code folders. Each
public repository should function as research and educational infrastructure
with a visible trust layer.

## Purpose

This standard defines what a strong ABC4RD Academy repository must contain
before it is treated as public-facing.

## Repository Layers

| Layer | Required evidence |
|---|---|
| Identity | Clear name, purpose, status, audience, owner, and scope |
| Research | Source map, source verification, citations, research notes |
| Education | Modules, exercises, glossary, student path, expected outputs |
| Trust | License, authorship, version history, review process, disclaimers |
| Contribution | Issues, PR template, contribution ladder, beginner tasks |
| Reputation | Releases, changelog, digests, closed issues, external PRs |
| Safety | Medical, financial, robotics, nanomaterials, privacy, and IP boundaries |

## Minimum Public Repository Structure

```text
README.md
LICENSE
NOTICE.md
AUTHORS.md
CITATION.cff
CONTRIBUTING.md
CODE_OF_CONDUCT.md
DISCLAIMER.md
SOURCE_VERIFICATION.md
CHANGELOG.md
docs/
  sources.md
  roadmap.md
  glossary.md
  research-notes.md
  article-visual-policy.md
  weekly-digests/
assets/
  article-previews/
modules/
  01-introduction.md
  02-foundations.md
  03-practice.md
.github/
  ISSUE_TEMPLATE/
  pull_request_template.md
```

## README Requirements

Every README should answer seven questions:

1. What is this repository?
2. Who is it for?
3. What is the current maturity level?
4. What sources does it rely on?
5. How can a student contribute?
6. What legal, ethical, or safety boundaries apply?
7. What changed recently?

## Maturity Levels

| Level | Meaning |
|---|---|
| `draft` | Structure exists; sources and exercises incomplete |
| `active` | At least two source-backed modules and open issues exist |
| `review` | Ready for expert or maintainer feedback |
| `reviewed` | Public feedback, merged external PR, or expert correction recorded |

## Release Standard

Use releases for meaningful public milestones:

- `v0.1-source-map`
- `v0.2-first-modules`
- `v0.3-student-tasks`
- `v0.4-external-review`
- `v1.0-reviewed-track`

Each release should include:

- summary;
- changed files;
- verified sources;
- open risks;
- student tasks;
- next milestone.

## Article Publication Standard

Every public article-level document should include:

- title;
- date or visible status;
- short thematic preview image near the top;
- summary paragraph;
- source-safe wording.

See:

- `docs/article-visual-policy.md`
- `docs/templates/article-publication-template.md`

## Trust Rule

If a repository makes a claim, it needs one of:

- primary public source;
- official documentation;
- reviewed source note;
- explicit `requires verification` status.

No unsupported claims, no fake partnerships, no copied third-party materials,
and no hidden medical, financial, safety-critical, or IP assumptions.
