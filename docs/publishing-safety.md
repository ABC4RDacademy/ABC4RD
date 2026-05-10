# Publishing Safety

ABC4RD is public-facing, international, and evidence-based. The default publishing mode is draft-first.

## Approval gate

Public posting requires human approval for:

- website publication;
- Telegram channel posts;
- Discord announcements;
- X posts;
- partner outreach;
- press or media claims;
- sponsor, investor, or partner language.

Automation may prepare drafts. It should not post externally without explicit approval.

## Secrets

Never commit:

- API tokens;
- passwords;
- Telegram bot tokens;
- Discord webhooks;
- OAuth secrets;
- private emails;
- CRM exports;
- internal contracts;
- raw Dropbox, CRM, Gmail, or iCloud credentials.

Use:

- GitHub Secrets for CI/CD credentials;
- local `.env` files excluded from git;
- separate least-privilege credentials per service;
- credential rotation if any secret may have been exposed.

## Public claims

Use this hierarchy:

1. Public source.
2. Signed or approved document.
3. Internal working note.
4. Hypothesis or target.

Only the first two should be stated as fact. Internal working notes should be labeled as strategy, target, or draft.

## Sensitive historical context

ABC4RD can reference its 2017 origin as a university blockchain education story covered by Bitcoin Magazine and Nasdaq. Current public positioning should be international. Do not frame the relaunch around modern Russia.

## BTC Inc / B.tc language

Safe public wording:

- "ABC4RD's origin was covered by Bitcoin Magazine in 2017."
- "BTC Inc describes itself as the parent company of Bitcoin Magazine, The Bitcoin Conference, and Bitcoin for Corporations."
- "ABC4RD is mapping education opportunities around the global Bitcoin conference ecosystem."

Avoid unless formally confirmed:

- "official partner";
- "endorsed by";
- "backed by";
- "sponsored by";
- "working with BTC Inc";
- "approved by Bitcoin Magazine".
