# Weekly Publication Preflight: 2026-05-15

Status: `source`

![ABC4RD weekly publication preflight preview](../assets/article-previews/weekly-publication-preflight.svg)

This page is the public preflight checklist for the first true weekly delta
release scheduled for `2026-05-15`.

## Release Scope

The release scope for this cycle is:

- active blockchain direction rankings;
- `Cross-Sector Top 20`;
- weekly delta status updates;
- first true weekly delta notes generated from fresh current-cycle ranking CSVs;
- six-language publication drafts with text-free or language-matched previews.

## Required Inputs

Before the release starts, ABC4RD needs:

- fresh `2026-05-15` ranking CSVs for each active direction;
- the published baseline snapshot:
  `docs/source-verification/weekly-delta-baseline-2026-05-12.csv`
- the current delta generator:
  `scripts/build_weekly_delta.py`
- the delta note template:
  `docs/templates/weekly-delta-note-template.md`
- the delta status table:
  `docs/source-verification/weekly-delta-status-2026-05-12.csv`

## Release Gates

The weekly release should not publish movement claims until all of the
following are true:

1. current-cycle CSV files exist and pass basic shape checks
2. each direction has a valid baseline row set
3. delta notes are generated from real snapshots, not inferred manually
4. source-backed official signal URLs are present in the current tables
5. English source documents exist for each release item
6. `ar`, `zh`, `fr`, `ru`, `es` drafts are prepared or the register is updated
   honestly
7. preview images are text-free or language-matched

## Publication Order

The recommended publication order for `2026-05-15` is:

1. current ranking CSV snapshots
2. generated delta notes
3. updated ranking documents where scores changed
4. updated delta status table and dashboard
5. language drafts and localization register changes
6. README or hub link updates if release scope changed

## Expected Outputs

The cycle should produce:

- one current ranking CSV per active direction
- one delta note per active direction that has a real comparison
- one updated cross-sector delta note
- one updated delta readiness or live delta dashboard
- one dated daily package if the Friday cycle also includes day-level work

## Known Non-Blocking Gaps

These gaps remain real but should not block the Friday weekly ranking release:

- older bulletins are still missing six-language publication sets
- the essay layer is still mostly English-only
- releases and milestone pages still have broad localization gaps

They should remain on the backlog, but they are not reasons to delay the first
true delta cycle if the ranking release inputs are ready.

## Safety Note

This preflight page is a release-control document.

It does not authorize:

- unsupported ranking movement claims
- mass outreach
- implied partnerships
- publication of private or non-public data
