# Weekly Delta Automation

Status: `source`

ABC4RD Academy now has a local generator for weekly delta markdown drafts.

Script:

`scripts/build_weekly_delta.py`

## What It Does

The generator compares:

- one published baseline snapshot from `weekly-delta-baseline`;
- one current sector ranking CSV;
- one current publication date.

It then builds a markdown draft with:

- new entrants;
- exits;
- largest upward move;
- largest downward move;
- total-score changes for overlapping entities;
- a starter section for official signals that explain the movement.

## Required Inputs

- direction key, for example `protocols`
- baseline file, for example:
  `docs/source-verification/weekly-delta-baseline-2026-05-12.csv`
- current ranking file, for example:
  `docs/source-verification/protocols-ranking-2026-05-15.csv`
- current publication date

## Example

```text
python scripts/build_weekly_delta.py ^
  --direction protocols ^
  --baseline docs/source-verification/weekly-delta-baseline-2026-05-12.csv ^
  --current docs/source-verification/protocols-ranking-2026-05-15.csv ^
  --current-date 2026-05-15 ^
  --title "Protocols Top 20" ^
  --output docs/weekly-digests/2026-05-15-protocols-delta-note.md
```

## Output Rule

The script creates a publication draft, not a final public claim.

Before publishing, ABC4RD should still verify:

- official-source URLs;
- direction title;
- language versions;
- preview image;
- any narrative explanation in the `Why The Ranking Changed` section.

## Why This Matters

- It reduces manual ranking-comparison work.
- It keeps movement claims reproducible.
- It makes Friday publication faster.
- It preserves the rule that no delta is published without two real dated
  snapshots.
