# Weekly Rescoring Source Queue: 2026-05-22

Status: `source`

![ABC4RD weekly publication preflight preview](../assets/article-previews/weekly-publication-preflight.svg)

This page defines the official-source collection queue for the next weekly
rescoring cycle dated `2026-05-22`.

It is the operating companion to
[Weekly Rescoring Priority: 2026-05-22](weekly-rescoring-priority-2026-05-22.md).

## Purpose

The goal is to ensure that the next rescoring pass uses the same type of
official-source channels for each Tier 1 direction.

This reduces arbitrary scoring drift and makes future delta claims easier to
defend.

## Tier 1 Queue

### Protocols

Primary source types:

- foundation blogs
- protocol roadmap posts
- release notes
- official documentation updates
- official event and ecosystem announcements

Collection targets:

- Ethereum Foundation
- Solana Foundation
- Sui Foundation
- Ripple
- DFINITY / Internet Computer

Expected high-signal fields:

- `TSI`
- `OAI`
- `KAI`
- `MI`

## Payments And Stablecoins

Primary source types:

- issuer pressrooms
- product launch notes
- investor relations releases
- settlement or partner network announcements from official company channels

Collection targets:

- Circle
- Coinbase
- Ripple
- Stripe / Bridge
- Ondo Finance

Expected high-signal fields:

- `TSI`
- `CRI`
- `TGI`
- `MI`

## Analytics And Intelligence

Primary source types:

- research blogs
- product update posts
- intelligence platform release notes
- official event pages
- documentation changes

Collection targets:

- Chainalysis
- Nansen
- Dune
- TRM Labs
- Arkham

Expected high-signal fields:

- `OAI`
- `EPI`
- `KAI`
- `MI`

## Cross-Sector Top 20

Cross-sector should not be rescored directly first.

Order:

1. refresh Tier 1 sector tables
2. recompute cross-sector candidates from rescored sector outputs
3. regenerate the public `Top 20`

## Collection Discipline

For each target entity, the next pass should try to capture:

1. one official current-cycle source URL if a meaningful new signal exists
2. one dated note describing what changed
3. one index-level explanation for the score effect

If no meaningful official signal exists, the entity should remain unchanged.

## What Counts As A Valid Signal

- a new official blog or press release
- a meaningful documentation or release-note update
- a new official event page or sponsor page
- a new official product or governance announcement

## What Does Not Count

- third-party commentary
- reposted summaries with no primary source
- social amplification with no official detail
- speculative movement claims

## Output Expectation

The `2026-05-22` rescoring pass should aim to produce:

- refreshed Tier 1 CSV tables
- updated delta notes with movement only where the rescored inputs support it
- a revised cross-sector table if sector deltas materially affect the top list

## Safety Note

- official sources only
- no forced movement where no verified signal exists
- no outbound outreach implied
