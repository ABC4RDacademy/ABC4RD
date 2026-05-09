# Public Claims Register

This register defines how ABC4RD Academy should publish claims about itself,
its history, its research tracks, and its relationship to external ecosystems.

The goal is simple: every public claim should be either source-backed,
clearly marked as a plan, or left unpublished until reviewed.

## Claim Statuses

| Status | Meaning | Public use |
|---|---|---|
| `verified` | Supported by a public source or repository record | Safe to publish with citation |
| `internal draft` | Based on internal planning, not yet public proof | Use only in roadmap language |
| `requires verification` | Plausible but not source-backed yet | Do not publish as fact |
| `needs legal review` | Touches IP, medicine, safety, finance, or partnership claims | Hold for review |
| `do not use` | Unsupported, misleading, or too promotional | Do not publish |

## Approved Core Claims

| Claim | Status | Required wording | Source or location |
|---|---|---|---|
| ABC4RD Academy is an independent education and research initiative | verified | "ABC4RD Academy is an independent educational and research initiative." | Project docs and public repositories |
| ABC4RD has a public 2017 media trail through Bitcoin Magazine and Nasdaq syndication | verified | "ABC4RD was covered by Bitcoin Magazine in 2017 and the article was syndicated by Nasdaq." | `abc4rd-research` citation pack |
| ABC4RD Academy is not officially affiliated with Bitcoin Magazine, BTC Inc, BTCB.tech, or referenced conferences unless explicitly stated | verified | Use the full disclaimer in public docs | Repository disclaimers |
| ABC4RD Academy is building open educational materials for Bitcoin, AI, open compute, robotics, sensors, digital health, manufacturing, and nanomaterials | verified | "is building" or "is developing" | Repository map and curriculum repos |
| ABC4RD Academy publishes source-backed notes, curricula, and research infrastructure | verified | "publishes source-backed notes and curricula" | `ABC4RD` and `abc4rd-research` |

## Claims That Need Care

| Claim pattern | Status | Safer wording |
|---|---|---|
| "Partner of Bitcoin Magazine / BTC Inc / BTCB.tech" | do not use | "researching and citing public materials from..." |
| "Official conference participant network" | do not use | "mapping public conference sources and speakers where verifiable" |
| "We own this technology because it is on GitHub" | needs legal review | "The repository provides timestamped public evidence of publication, but it is not a substitute for patent or legal advice." |
| "Medical-ready / clinically validated" | do not use | "educational material about digital health standards; not medical advice" |
| "Safety-ready robotics deployment" | do not use | "simulation and education only unless separately reviewed by qualified experts" |
| "Investment guidance" | do not use | "educational material only; no financial or investment advice" |

## Publication Rule

Before publishing a claim in a README, website page, digest, issue, or outreach
draft, check:

1. Is there a public source or repository record?
2. Is the wording independent and non-affiliation-safe?
3. Does the claim touch patents, copyright, medicine, finance, safety, or named partnerships?
4. If yes, is the correct disclaimer nearby?
5. Can a student or external reviewer verify it without private access?

## IP and Prior Publication Notes

GitHub can provide useful public evidence of authorship date, development
history, and source publication. It can also create prior art for later patent
analysis. It does not automatically grant a patent, and open-source publication
does not remove copyright. Copyright generally protects the expression of code,
text, diagrams, and documentation, not the abstract idea itself.

For anything that may become patent-sensitive, use this sequence:

1. Mark the item `needs legal review`.
2. Publish only a high-level non-enabling summary if necessary.
3. Avoid disclosing implementation details until reviewed.
4. Keep authorship, commit, and source records clean.
5. Add license and contributor terms before accepting broad contributions.

## Review Cadence

Review this register weekly when new public claims are added to:

- README files;
- GitHub Pages;
- weekly digests;
- outreach drafts;
- conference notes;
- curriculum modules;
- public issue templates.

