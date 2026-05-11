# GitHub Launch Issues

These issue drafts are ready to convert into GitHub issues under the milestone
`Launch Sprint 01: ABC4RD Academy public baseline`.

## 1. Ship the "What is ABC4RD Academy" homepage

Labels: `area:site`, `priority:high`, `status:draft`

Output:

- first viewport explains ABC4RD Academy in plain language;
- links to the first course, certificate template, bulletin, and demo;
- research tracks and public channels remain source-backed and careful;
- no unverified partnership or endorsement claims.

Acceptance checklist:

- [ ] Visitor can find the first course in one click.
- [ ] Visitor can find the first demo in one click.
- [ ] Visitor can find the first bulletin in one click.
- [ ] Homepage links use repository-relative paths for local artifacts.

## 2. Create Course 01: Blockchain Academy - From Bitcoin to Verifiable Infrastructure

Labels: `area:blockchain-education`, `area:course`, `priority:high`

Output:

- course page in `docs/courses/`;
- module map from Bitcoin foundations to verifiable infrastructure;
- lab plan including the ERC-20 localnet demo;
- clear safety boundaries for crypto education.

Acceptance checklist:

- [ ] Course has beginner-friendly learning outcomes.
- [ ] Each module has one practical exercise.
- [ ] Public sources or existing repository references are named.
- [ ] Financial advice and token-promotion language are excluded.

## 3. Create test certificate: ABC4RD Blockchain Foundations

Labels: `area:credentials`, `needs:approval`, `status:draft`

Output:

- certificate template in `docs/certificates/`;
- completion evidence checklist;
- maintainer approval flow;
- wording that makes the certificate educational and non-accredited unless a
  formal accreditation process is approved.

Acceptance checklist:

- [ ] Template has learner, course, date, evidence, and reviewer fields.
- [ ] Certificate is clearly marked as test/draft.
- [ ] No accreditation or employment outcome is implied.
- [ ] Verification process is described without requiring private data.

## 4. Publish ABC4RD Research Bulletin #1

Labels: `area:research`, `area:community`, `status:draft`

Output:

- first bulletin in `docs/bulletins/`;
- summary of studied tracks, open labs, and watched open-source projects;
- student tasks for the next week;
- approval checklist before reposting to Telegram, Discord, X, or website.

Acceptance checklist:

- [ ] Bulletin is safe to review publicly.
- [ ] External claims are conservative and source-backed.
- [ ] It points to GitHub artifacts rather than private channels.
- [ ] It has a clear next action for contributors.

## 5. Build ERC-20 localnet learning demo

Labels: `area:blockchain-education`, `area:demo`, `good first issue`

Output:

- `demos/erc20-localnet/README.md`;
- simple educational ERC-20 contract;
- local deployment script;
- transfer/check script;
- instructions for localnet/testnet use.

Acceptance checklist:

- [ ] Demo runs on a local Hardhat network.
- [ ] Contract is self-contained for education.
- [ ] README warns that the token has no real value.
- [ ] No mainnet deployment instructions are included.
