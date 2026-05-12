# Article Visual Policy

ABC4RD Academy is a six-language public repository. Every article, bulletin,
publication, essay, and major digest should include a small thematic preview
image near the top of the document.

This is a publishing standard, not an optional decoration.

## Multilingual Rule

ABC4RD Academy is a six-language publication system. Public article-level
materials should have six language versions:

- English;
- Arabic;
- Chinese;
- French;
- Russian;
- Spanish.

The visual layer must follow the same rule.

## Purpose

Each preview image should help the reader understand the topic before reading.

The preview should:

- match the meaning of the article;
- support fast recognition in GitHub, Pages, and social previews;
- stay consistent across English, Arabic, Chinese, French, Russian, and
  Spanish;
- avoid hype and visual noise.

## Required Rule

For each public article-level document, include:

1. Title
2. Date or status, when relevant
3. Preview image
4. Short one-paragraph purpose or summary

Recommended Markdown pattern:

```md
# Title

Date: YYYY-MM-DD

![Short thematic preview alt text](../assets/article-previews/example-preview.svg)

One short paragraph explaining what the piece is about.
```

## Where This Rule Applies

Use a preview image for:

- `docs/weekly-digests/*`
- `docs/bulletins/*`
- `docs/essays/*`
- `docs/course-updates/*`
- `docs/demo-updates/*`
- `docs/releases/*`
- major public strategy or methodology notes that are likely to be linked
  externally

## Theme Rule

The image should reflect the article's actual subject.

Examples:

- blockchain ranking article: nodes, signals, scorecards, network map
- robotics essay: simulation, sensors, control surfaces
- digital health note: standards, interoperability, data pathways
- open compute digest: racks, chips, cooling, network topology
- education bulletin: learning path, modules, certificates, review flow

Avoid generic images that could fit any topic.

## Language Rule

The visual concept should stay consistent across the six UN languages.

Allowed variation:

- translated alt text;
- translated caption, if used;
- localized cover title embedded in the image only when necessary.

The underlying topic should remain the same across language versions.

If a preview image contains visible text:

- the visible text must match the language of the article;
- each language version should have its own localized preview asset.

If localized preview assets do not yet exist, use a text-free image rather than
an image with mismatched language.

## Image Style Rule

Preferred image style:

- clean thematic illustration;
- abstract systems diagram;
- restrained poster-like composition;
- subtle academic or technical visual tone.

Avoid:

- irrelevant stock-photo feeling;
- random logos of third parties;
- fake photos of real events;
- visual hype;
- investment-style rockets, coins, candles, or exaggerated luxury imagery.

## Safety Rule

Do not use:

- copyrighted third-party artwork without permission;
- company logos as if they imply endorsement;
- conference branding that implies participation;
- private photos;
- faces of real people without a clear right to publish.

Prefer:

- original SVG or PNG artwork;
- internal diagrams;
- abstract technical compositions;
- screenshots only when the screenshot itself is the subject.

## File Location Rule

Store preview images under:

`assets/article-previews/`

Suggested naming:

- `2026-05-12-global-public-signal-top-20.svg`
- `trustworthy-computation-essay.svg`
- `research-bulletin-002.svg`

## Editorial Workflow

Before publishing a new public article:

1. Confirm the subject category.
2. Create or assign six language versions or explicitly mark the material as not
   yet fully localized.
3. Create or assign a thematic preview image.
4. Add translated alt text where needed.
5. If the image contains visible text, localize the image per language.
6. Check that the image does not imply endorsement or partnership.
7. Publish the article with the image near the top.

## Transition Rule

Existing public articles may be updated in batches.

Priority order:

1. homepage-linked bulletins and digests
2. essays
3. roadmap and methodology notes
4. course and demo updates
