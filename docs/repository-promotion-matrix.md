# Repository Promotion Matrix

This matrix defines when a repository can move from internal construction to
public promotion.

## Promotion Levels

| Level | Name | Allowed visibility |
|---|---|---|
| L0 | Working draft | Public but not promoted |
| L1 | Student-ready | Linked from student tasks |
| L2 | Contributor-ready | Open issues and PRs invited |
| L3 | Expert-review-ready | Shared with experts for narrow feedback |
| L4 | Ecosystem-ready | Safe to reference in discussions, partner briefs, and digests |
| L5 | Flagship | Suitable for pinned repository and public showcase |

## Requirements By Level

| Requirement | L0 | L1 | L2 | L3 | L4 | L5 |
|---|---|---|---|---|---|---|
| README explains purpose | yes | yes | yes | yes | yes | yes |
| License/disclaimer present | yes | yes | yes | yes | yes | yes |
| Verified sources | some | 5+ | 10+ | 15+ | 20+ | 30+ |
| Non-placeholder modules | 1 | 2 | 3 | 4 | 5 | 5+ reviewed |
| Student exercises | optional | yes | yes | yes | yes | yes |
| Issues open | optional | 1+ | 3+ | 5+ | 5+ | 10+ |
| Closed issues | optional | optional | 1+ | 2+ | 3+ | 5+ |
| External contribution target | optional | optional | yes | yes | yes | yes |
| Digest/release note | optional | optional | yes | yes | yes | yes |
| Expert feedback | no | no | optional | requested | recorded | recorded |

## Promotion Gates

### Gate A: Safety

No repository can be promoted if it contains:

- medical advice;
- investment advice;
- unsafe robotics deployment claims;
- nanomaterials handling instructions;
- private credentials or contact data;
- copied third-party content without license.

### Gate B: Source Discipline

Claims must be:

- verified;
- explicitly marked `requires verification`;
- or removed until review.

### Gate C: IP Discipline

Potentially patentable or trade-secret material must pass IP review before
public release. Defensive publications must be detailed enough to be useful.

## Pinned Repository Recommendation

Pin only repositories that are L3 or higher, except `ABC4RD`, which remains the
main operating hub even while work is underway.
