# CRM Open-Source Upstream Interaction Plan

This document defines how ABC4RD Academy will interact with open-source CRM, document, communications, and low-code projects.

## Rule

No mass outreach. ABC4RD Academy should contact upstream projects only when there is a concrete, useful, and respectful reason:

- a documentation typo;
- a broken link;
- a beginner setup note;
- a source clarification;
- an interoperability question after reading docs;
- a small reproducible issue found during testing.

## First Interaction Targets

| Project | Interaction type | First useful angle | Status |
|---|---|---|---|
| Twenty | Documentation review | Check self-hosting and app-building docs from a beginner CRM-builder perspective. | draft |
| Corteza | Documentation review | Review low-code CRM workflow docs and note beginner setup friction. | draft |
| NocoBase | Documentation review | Test Docker install and document CRM cockpit data model path. | draft |
| ERPNext | Documentation review | Compare CRM/project/student-management flows for Academy operations. | draft |
| Nextcloud | Integration note | Review APIs and document how CRM records should link to private files. | draft |
| paperless-ngx | Integration note | Review document intake/OCR/archive path for source review documents. | draft |
| Documenso | Integration note | Review signature flow for consent and collaboration documents. | draft |
| Chatwoot | Integration note | Map website feedback and support messages into CRM tasks. | draft |
| Jitsi Meet | Integration note | Review simple embedded meeting path for contact records. | draft |
| LiveKit | Architecture note | Review realtime room, recording/export, and AI-agent use cases. | draft |
| BigBlueButton | Education note | Review webinar/classroom features for Academy sessions. | draft |
| n8n | Workflow note | Draft GitHub issue/form/chat -> CRM/Bitrix task workflow. | draft |

## Upstream Message Template

```text
Hi [Project/Team],

ABC4RD Academy is evaluating open-source tools for a public research and education operations cockpit.

We are reviewing [project] for [specific use case], and we are not asking for promotion or partnership.

While testing the public docs, we noticed [specific point]. Would a small documentation issue or PR clarifying this be useful?

Thank you for maintaining the project.
```

## PR Template

```text
This PR makes a small documentation improvement for [specific section].

Context:
ABC4RD Academy is evaluating open-source CRM, document, communication, and automation tools for an education/research operations cockpit. While reviewing this section, we noticed that [specific clarification] could help first-time self-hosters or CRM builders.

Changes:
- [change 1]
- [change 2]

No behavior changes. Documentation only.

Thank you for maintaining this project.
```

## First Testing Order

1. Twenty: modern CRM model and self-hosting.
2. NocoBase: low-code CRM cockpit model.
3. Corteza: low-code CRM and workflow platform.
4. Nextcloud: private document vault.
5. Chatwoot: support/feedback inbox.
6. n8n: feedback routing automation.

## What Not To Do

- Do not ask for partnership first.
- Do not tag maintainers repeatedly.
- Do not open vague issues like "please collaborate".
- Do not paste identical messages across projects.
- Do not publish private contact data or operational records in GitHub.
- Do not claim that a project is integrated until a real test or prototype exists.

