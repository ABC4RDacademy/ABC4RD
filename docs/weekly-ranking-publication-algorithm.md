# Weekly Ranking Publication Algorithm

This is the operating algorithm for ABC4RD Academy weekly rankings.

## Step 1. Define the basket

Pick one basket:

1. Blockchain Infrastructure Ranking
2. Open Compute Ranking
3. Applied Innovation Ranking
4. Cross-Sector Top 20

Do not mix baskets accidentally.

## Step 2. Refresh the source table

For each tracked entity, update only from public sources:

- official website;
- official docs;
- official GitHub;
- official event pages;
- official press or investor pages;
- official standards pages.

Store:

- official entity URL;
- latest official signal URL;
- latest official signal date;
- basket;
- current status;
- next action.

## Step 3. Score the seven indices

For every entity, assign:

- `TSI`
- `OAI`
- `EPI`
- `KAI`
- `CRI`
- `TGI`
- `MI`

Each index is `0-20`.

## Step 4. Calculate the total

```text
Weekly Rank Score =
TSI + OAI + EPI + KAI + CRI + TGI + MI
```

## Step 5. Sort and cut

1. Sort by total descending.
2. Apply tie-break rules.
3. Keep only the Top 20 for public publication.

## Step 6. Write the delta note

For each weekly publication, explain:

- who entered the Top 20;
- who left the Top 20;
- who moved up;
- who moved down;
- what official signal caused the change.

## Step 7. Generate the public publication

Every weekly publication should include:

- title;
- date;
- preview image;
- formula;
- list of indices;
- Top 20 table;
- short explanation paragraph;
- delta note;
- source table link;
- disclaimer.

## Step 8. Prepare the six-language publication set

Prepare:

- `en`
- `ar`
- `zh`
- `fr`
- `ru`
- `es`

And confirm:

- the text exists in all six versions, or
- the register marks missing languages honestly.

Preview rule:

- use a text-free image, or
- use a localized image variant matching the publication language.

## Step 9. Publish officially

Weekly official publication order:

1. Commit source table update
2. Commit ranking document
3. Commit language set or register update
4. Push to `main`
5. Confirm GitHub Pages build
6. Reference the publication in the weekly bulletin or digest

## Step 10. Archive the audit trail

Keep:

- source table snapshot;
- weekly score snapshot;
- publication document;
- links used that week.

This is what makes the ranking defensible.

## Minimal Weekly Cadence

Monday:

- refresh entities and public sources

Wednesday:

- rescore indices and draft ranking movement

Friday:

- publish official Top 20

## Public Response Template

If an entity questions the ranking:

1. show the seven index scores;
2. show the official links used;
3. show the date window;
4. explain which index areas are weaker;
5. avoid subjective argument.

## Practical Rule

Do not claim that the ranking measures:

- intrinsic worth;
- investment quality;
- political importance;
- moral superiority.

It measures public signal according to a declared ABC4RD methodology.
