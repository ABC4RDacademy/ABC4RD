# External Documentation Contribution Queue: 2026-05-09

This queue identifies small, respectful external contribution opportunities.
It is not an outreach list. Each target should be checked manually before
opening an issue or pull request.

## Contribution Rules

- Prefer docs, glossary, broken link, and beginner clarification fixes.
- Open one contribution at a time per project.
- Read the contributor guide first.
- Do not mention partnership.
- Do not ask maintainers to promote ABC4RD Academy.
- Link ABC4RD Academy only when it is relevant context, not as advertising.
- If maintainers decline, thank them and move on.

## Candidate Targets

| Project | Public location | Candidate contribution | Risk | Status |
|---|---|---|---|---|
| OpenMRS Core | `https://github.com/openmrs/openmrs-core` | Track existing README badge PR and respond to review | Low | active PR exists |
| OpenMRS Docs | `https://github.com/openmrs/openmrs-contrib-docs` | Check beginner docs for broken links or outdated setup references | Low | requires verification |
| HL7 FHIR examples | `https://github.com/HL7/fhir` | Review public docs/examples for beginner terminology notes | Medium | requires verification |
| ROS 2 documentation | `https://github.com/ros2/ros2_documentation` | Clarify beginner wording or fix broken doc links | Low | requires verification |
| Gazebo documentation | `https://github.com/gazebosim/docs` | Improve simulation-first beginner notes if an issue exists | Low | requires verification |
| MoveIt tutorials | `https://github.com/moveit/moveit2_tutorials` | Check tutorial links and beginner setup assumptions | Low | requires verification |
| BTCPay Server docs | `https://github.com/btcpayserver/btcpayserver-doc` | Beginner glossary or docs link fix | Low | requires verification |
| Lightning Dev Kit | `https://github.com/lightningdevkit/rust-lightning` | Docs typo or glossary clarification only | Medium | requires verification |
| CNCF glossary | `https://github.com/cncf/glossary` | Translation or definition review if contribution rules fit | Low | requires verification |
| Materials Project docs | `https://github.com/materialsproject/api` | API docs typo or beginner note if maintainers welcome it | Low | requires verification |
| NOMAD docs | `https://github.com/FAIRmat-NFDI/nomad-docs` | Broken link or beginner source note | Low | requires verification |
| The Things Network docs | `https://github.com/TheThingsNetwork/lorawan-stack-docs` | Broken link or LoRaWAN beginner clarification | Low | requires verification |

## First-Pass Review Checklist

Before opening anything:

1. Is the repository active in the last 12 months?
2. Is there a `CONTRIBUTING.md` or docs contribution guide?
3. Are small docs PRs accepted historically?
4. Is the change specific and testable?
5. Can the PR stand without mentioning ABC4RD Academy?
6. Is the subject outside safety-critical, clinical, financial, or patent-sensitive claims?

## Suggested First Three Actions

1. Check the existing OpenMRS PR and respond if review comments appear.
2. Pick one docs-only broken link or wording fix in ROS 2 or Gazebo docs.
3. Pick one glossary/source improvement in BTCPay Server docs or CNCF glossary.

## PR Description Template

```text
This PR makes a small documentation improvement in [file/section].

Context:
While reviewing beginner-facing material for source-backed education, I noticed
that [specific issue] could be clearer for new readers.

Changes:
- [change 1]
- [change 2]

No behavior changes. Documentation only.

Thank you for maintaining this project.
```

## Issue Template

```text
Hi [Project/Team],

I noticed a small beginner-facing documentation issue in [file/section]:
[specific issue].

Would a small PR clarifying this be welcome?

No behavior change is intended. The goal would be documentation clarity only.

Thank you for maintaining this project.
```

