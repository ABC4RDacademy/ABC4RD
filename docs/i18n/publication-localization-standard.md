# Publication Localization Standard

ABC4RD Academy treats public publications as multilingual infrastructure, not
as one-off English notes.

## Required Languages

Every public article-level publication should have six versions:

- English (`en`)
- Arabic (`ar`)
- Chinese (`zh`)
- French (`fr`)
- Russian (`ru`)
- Spanish (`es`)

## What Counts As A Publication

This standard applies to:

- weekly digests;
- bulletins;
- essays;
- course updates;
- demo updates;
- releases;
- public milestone notes;
- research notes that are linked publicly from the homepage, README, or digests.

## Compliance Rule

A publication is fully compliant only when:

1. the text exists in all six languages;
2. the language status is visible;
3. the preview image is present;
4. the preview is language-safe:
   - text-free, or
   - localized to the same language as the document;
5. source links and disclaimers remain intact.

## Preview Rule

For multilingual publication work:

- prefer text-free preview images by default;
- if a preview image contains visible text, create one localized image per
  language version;
- localized alt text is always required in the document itself.

## Storage Recommendation

Suggested structure for translated article-level documents:

```text
docs/i18n/publications/
  weekly-digests/
  bulletins/
  essays/
  course-updates/
  demo-updates/
  releases/
  milestones/
```

Suggested preview structure when text inside image is localized:

```text
assets/article-previews/i18n/
  en/
  ar/
  zh/
  fr/
  ru/
  es/
```

## Operational Rule

If a publication cannot yet be translated in full:

- keep the canonical source;
- register the publication in the localization register;
- mark the missing languages explicitly;
- do not pretend the publication is fully localized.

## Review Rule

AI-assisted translations are allowed as drafts.

Before removing `requires native review`, confirm:

- terminology is correct;
- disclaimers are preserved;
- no partnership language was introduced;
- the preview and visible text match the document language.
