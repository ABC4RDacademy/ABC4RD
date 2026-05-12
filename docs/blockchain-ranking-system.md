# Blockchain Ranking System

This document turns the general ABC4RD index methodology into a working
blockchain-sector ranking system.

## Scope

The blockchain family is too large to rank as one undifferentiated field.

ABC4RD should therefore run:

1. direction-level rankings;
2. a blockchain family ranking;
3. a cross-sector comparison only after direction rankings are stable.

## Active Direction Set

Use the direction map in:

- [Blockchain Direction Taxonomy](blockchain-direction-taxonomy.md)

Current operating registry:

- [blockchain-entity-registry-2026-05-12.csv](source-verification/blockchain-entity-registry-2026-05-12.csv)
- [protocol-family-map-2026-05-12.csv](source-verification/protocol-family-map-2026-05-12.csv)
- [weekly-delta-baseline-2026-05-12.csv](source-verification/weekly-delta-baseline-2026-05-12.csv)

## Protocol Split

Inside the `protocols` direction, ABC4RD should maintain four families:

1. `l1-general-purpose`
2. `l2-scaling`
3. `payments-chains`
4. `enterprise-chains`

This family split is descriptive first and ranking-first second.

In other words:

- publish one public `protocols` Top 20;
- keep family assignments visible in the source layer;
- add family-specific Top 20 tables only when each family has enough stable,
  source-backed coverage.

## Index Stack

Every blockchain direction uses the same stack:

- `TSI`
- `OAI`
- `EPI`
- `KAI`
- `CRI`
- `TGI`
- `MI`

## Formula

```text
Blockchain Weekly Direction Score =
TSI + OAI + EPI + KAI + CRI + TGI + MI
```

## Ranking Order

The weekly publication sequence should be:

1. `protocols`
2. `mining`
3. `developer-tools`
4. `data-infrastructure`
5. `wallets-custody-security`
6. `exchanges-brokerage-liquidity`
7. `payments-stablecoins-settlement`
8. `defi`
9. `rwa-tokenization`
10. `dao-governance-treasury`
11. `compliance-risk-forensics`
12. `enterprise-standards-interoperability`
13. `education-media-events-research`

## Weekly Algorithm

### Monday

- refresh official source links;
- add new entities to the registry;
- mark weak entries as `watch`;
- confirm primary and secondary directions.

### Wednesday

- score all seven indices;
- review score outliers;
- compare to the current delta baseline;
- write movement notes.

### Friday

- publish Top 20 by active direction;
- publish one blockchain family summary;
- publish one sector delta note;
- queue six-language publication set.

## Publishing Outputs

For every direction, publish:

- one ranking document;
- one source table;
- one preview image;
- one delta note;
- one baseline snapshot row set;
- one localization status record.

## Delta Rule

ABC4RD should treat the first published ranking for a direction as the baseline
for all future movement notes.

Weekly delta fields should be calculated against the latest published baseline:

- previous rank
- current rank
- rank delta
- previous total
- current total
- score delta

If there is no prior baseline, mark the direction as `first edition` instead of
inventing movement.

## Gate Rule

An entity may be watched without being ranked.

Minimum condition for ranked status:

- official site exists;
- sector fit is clear;
- enough public data exists to score at least four indices responsibly.

## Dispute Rule

When challenged:

1. show index scores;
2. show official links;
3. show direction assignment;
4. show date window;
5. show which signals were missing.

## Practical Next Step

Next implementation step after this seed:

1. create per-direction filtered snapshots from the blockchain registry;
2. maintain protocol family assignments for the `protocols` basket;
3. publish and refresh weekly delta baselines;
4. expand public rankings direction by direction.
