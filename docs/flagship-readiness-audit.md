# Flagship Readiness Audit

This audit decides which ABC4RD Academy repositories can be treated as public
flagships and which should remain active but not heavily promoted.

## Audit Date

2026-05-09

## Criteria

Flagship candidates must have:

- clear README and scope;
- source-backed materials;
- at least two non-placeholder modules or documents;
- license/disclaimer/safety boundaries;
- concrete open or closed issues;
- digest or release history;
- no unresolved IP, medical, financial, safety, or licensing blocker.

## Current Classification

| Repository | Current class | Reason | Next action |
|---|---|---|---|
| `ABC4RD` | Flagship candidate | Main hub, roadmap, site, operating docs, trust standard, digests | Push pending local commits, then tag first public hub release |
| `abc4rd-research` | Strong / near flagship | Literature index, essays, source verification, integration map | Add source-review batches and release notes |
| `.github` | Infrastructure | Organization profile and shared templates | Keep clean, do not overfill |
| `bitcoin-developer-curriculum` | Strong | Multiple source-backed modules and exercises | Add release checklist and review issue batch |
| `open-compute-curriculum` | Active | Two complete lessons, source list, glossary, exercises | Expand module 03 and add source-review issue |
| `sensor-networks-curriculum` | Active | Two complete lessons and safety boundaries | Expand module 03 and add telemetry glossary issue |
| `robotics-systems-curriculum` | Active | Two complete lessons, simulation and safety boundaries | Expand module 03 and add Gazebo simulation issue |
| `digital-health-standards-curriculum` | Active | Two complete lessons, FHIR and medical boundary | Expand module 03 and add synthetic data examples |
| `digital-manufacturing-curriculum` | Active | Two complete lessons, NIST/standards sources | Expand module 03 and add standards review issue |
| `nanomaterials-research-curriculum` | Active | Two complete lessons and safety boundary | Expand module 03 and add materials data source review |
| `open-source-onboarding` | Student-ready | PR guide and beginner project list | Add contribution ladder link and first-external-PR workflow |
| `conference-notes` | Active research support | BTC Inc/MENA source tracking | Expand official event source matrix |
| `community-collaboration` | Support | Feedback templates and drafts | Keep outreach draft-only |

## Promotion Recommendation

Pin or feature only:

1. `ABC4RD`
2. `abc4rd-research`
3. `bitcoin-developer-curriculum`
4. `open-source-onboarding`
5. one rotating adjacent curriculum repository
6. `.github` only if profile/infrastructure clarity is needed

Avoid pinning too many early curriculum repositories at once. They should be
linked from the hub until each reaches score 40+ on the repository scorecard.

## Immediate Flagship Risks

| Risk | Impact | Fix |
|---|---|---|
| Pending local commits not pushed | Public hub lacks latest standard docs | Restore GitHub auth for `ABC4RDacademy` and run `git push origin main` |
| Too many repositories | Visitor may see sprawl instead of system | Use `ABC4RD` as canonical navigation |
| Thin later modules | Curricula look early-stage | Expand modules 03-05 in batches |
| No release tags | Work looks continuous but not milestone-based | Create `v0.2-first-lessons` releases |
| Sparse external PRs | Reputation layer remains internal | Continue small docs-only external contributions |

## Next 24-Hour Priority

1. Push pending `ABC4RD` commits once auth is fixed.
2. Create first release notes for `ABC4RD` and `abc4rd-research`.
3. Expand module 03 in all six adjacent curriculum repositories.
4. Add source-review issues for modules 03.
5. Record external PR status in digest.
