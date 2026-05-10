# Bitrix24 Feedback Integration

ABC4RD Academy uses GitHub as the public collaboration layer and Bitrix24 as the
internal follow-up layer.

Bitrix is not installed in GitHub. GitHub events are forwarded to Bitrix through
an incoming webhook and converted into tasks or notifications.

## Event Flow

```text
GitHub issue / PR / discussion / comment
  -> GitHub Actions workflow
  -> BITRIX_WEBHOOK_URL secret
  -> Bitrix24 task or notification
  -> internal owner triage
```

## GitHub Events To Route

| GitHub event | Bitrix action |
|---|---|
| New issue | Create triage task |
| Source suggestion issue | Create source review task |
| Discussion created | Create community review task |
| Discussion comment | Create feedback review task |
| Pull request opened | Create technical review task |
| Issue comment | Create follow-up task if action is needed |
| External contribution target | Create upstream contribution task |

## Required Secret

Create a GitHub repository secret:

```text
BITRIX_WEBHOOK_URL
```

Recommended value:

```text
https://<your-bitrix-domain>/rest/<user-id>/<webhook-code>/tasks.task.add.json
```

Use a Bitrix webhook account with limited permissions.

## Task Fields

The workflow sends:

- title;
- GitHub URL;
- event type;
- actor;
- repository;
- created/updated timestamp;
- short body;
- suggested status.

## Triage Statuses

| Status | Meaning |
|---|---|
| `new` | Raw GitHub feedback received |
| `triage` | Needs owner assignment |
| `source review` | Needs public source verification |
| `reply needed` | A public response may be needed |
| `expert review` | Medical, safety, legal, IP, or technical expert needed |
| `done` | Handled or archived |

## Safety Rules

- Do not forward secrets into public GitHub issues.
- Do not publish Bitrix internal notes to GitHub automatically.
- Do not auto-reply to GitHub users.
- Do not create partnership claims from Bitrix tasks.
- Human review is required before outreach.

## Workflow File

The GitHub workflow is:

```text
.github/workflows/bitrix-feedback-sync.yml
```

If `BITRIX_WEBHOOK_URL` is missing, the workflow exits without sending data.

