# ABC4RD Messenger Open-Source Stack Map

ABC4RD Academy can build a private academy messenger as part of its own digital infrastructure. The goal is not to imitate Telegram, Slack, or Discord. The goal is to provide a controlled communication layer for students, mentors, research groups, open-source projects, announcements, office hours, and internal academy operations.

This document maps open-source messenger options and defines the fastest path toward an `ABC4RD Messenger Lite`.

## What Open-Source Messengers Are Doing

| Pattern | What it means | Examples | Fit for ABC4RD Academy |
|---|---|---|---|
| Federated protocol | Different servers can communicate through an open protocol. | Matrix / Element / Synapse | High for sovereignty and long-term infrastructure. |
| Team chat | Channels, teams, files, notifications, calls, integrations. | Mattermost, Rocket.Chat | High for staff and project operations. |
| Topic-based education chat | Conversations are organized by stream and topic, not only channels. | Zulip | Very high for courses, cohorts, research tracks. |
| Privacy-first messenger | Strong privacy, minimal metadata, sometimes no central server. | SimpleX, Briar, Delta Chat | Good for research and privacy education; not ideal as first academy operations messenger. |
| XMPP infrastructure | Mature messaging protocol and server ecosystem. | ejabberd, Prosody | Good for advanced self-hosting and protocol literacy. |

## Shortlist

| Project | GitHub | Role | Why it matters | First-use recommendation |
|---|---|---|---|---|
| Matrix Synapse | https://github.com/element-hq/synapse | Matrix homeserver | Open standard for secure, interoperable real-time communication. | Best if ABC4RD wants long-term sovereign messaging. |
| Element Web | https://github.com/element-hq/element-web | Matrix web client | Browser-based Matrix client. | Good public web entry point for students. |
| Element Android / iOS / Desktop | https://github.com/element-hq | Matrix clients | Students can install existing apps and log into ABC4RD homeserver. | Fastest mobile route without building apps. |
| Zulip | https://github.com/zulip/zulip | Topic-based team chat | Excellent for courses, cohorts, async education, office hours. | Best first pilot for academic communication. |
| Mattermost | https://github.com/mattermost/mattermost | Self-hosted collaboration platform | Chat, workflows, voice, screen sharing, AI integration. | Good corporate/operations option; review open-core boundaries. |
| Rocket.Chat | https://github.com/RocketChat/Rocket.Chat | Communications platform | Team chat, omnichannel, self-hosting, customization. | Good if support/live-chat style matters. |
| SimpleX Chat | https://github.com/simplex-chat/simplex-chat | Privacy-first messenger | No user identifiers by design, strong privacy model. | Good privacy research track, not first academy messenger. |
| Delta Chat / Chatmail Core | https://github.com/chatmail/core | Email-based messaging core | Uses email network with secure chat-like apps. | Interesting for resilience and interoperability research. |
| Briar | https://github.com/briar/briar | Peer-to-peer secure messenger | Works without central server, can sync via Bluetooth/Wi-Fi/Tor. | Great resilience/security education example. |
| ejabberd | https://github.com/processone/ejabberd | XMPP/MQTT/SIP messaging server | Mature scalable messaging server. | Advanced option for protocol and IoT-style messaging. |
| Prosody | https://github.com/prosody/prosody | XMPP server | Lightweight XMPP server. | Advanced simple XMPP pilot. |

## Best Option For ABC4RD Academy

### Fastest useful academy messenger

Use **Zulip** first.

Why:

- courses and research tracks need topic-based conversations;
- streams/topics keep discussions searchable;
- students can join by web, desktop, or mobile app;
- it is easier to explain and moderate than a fully federated Matrix setup;
- good for cohorts, office hours, assignments, expert Q&A, source review, and open-source contribution groups.

### Strongest long-term sovereign messenger

Use **Matrix Synapse + Element**.

Why:

- Matrix is an open protocol;
- ABC4RD can run its own homeserver, for example `matrix.abc4rd.org`;
- students can use Element mobile/desktop/web clients;
- later ABC4RD can brand a web client or create a custom landing page;
- federation can be enabled or disabled depending on the privacy model.

### Corporate internal operations option

Use **Mattermost** or **Rocket.Chat** if the priority is staff operations, integrations, and Slack-like workflows.

## ABC4RD Messenger Lite

The first branded product should be small:

- public landing page: `messenger.abc4rd.org`;
- web login button;
- download links for mobile/desktop clients;
- academy spaces/channels;
- onboarding rules;
- student code of conduct;
- moderation policy;
- private staff/admin space;
- course/cohort spaces;
- source-review and first-PR rooms.

## Minimum Channel Model

| Area | Channels / rooms |
|---|---|
| Announcements | `academy-announcements`, `events`, `releases` |
| Student onboarding | `start-here`, `introductions`, `first-github-profile`, `first-pr-help` |
| Courses | `bitcoin-foundations`, `blockchain-foundations`, `rwa-tokenization`, `dao-governance`, `zk-privacy` |
| Research tracks | `open-compute`, `digital-health`, `robotics`, `manufacturing`, `nanomaterials` |
| Open-source work | `source-verification`, `docs-prs`, `good-first-issues`, `github-help` |
| Experts | `expert-feedback`, `guest-sessions`, `office-hours` |
| Staff | private admin/moderation rooms |

## Deployment Options

### Option A: Zulip pilot

Best for a first working academy messenger.

Time:

- local test: 2-4 hours;
- VPS deployment: 1 day;
- students pilot: 1-2 days;
- polished onboarding: 3-5 days.

Cost:

- server: $10-30/month for a small pilot;
- domain/subdomain: existing domain is enough;
- email SMTP: $0-15/month;
- backups: $5-20/month.

### Option B: Matrix + Element pilot

Best for a sovereign academy messenger.

Time:

- basic Synapse + Element: 1-2 days;
- proper TLS, email, backups, moderation: 2-5 days;
- federation, bridges, mobile push, branding: 1-3 weeks.

Cost:

- small server: $15-40/month;
- medium server: $40-100/month;
- storage/backups: $5-50/month;
- push/branding/custom mobile app: can become a larger project.

### Option C: Mattermost / Rocket.Chat pilot

Best for staff operations.

Time:

- Docker deployment: 2-6 hours;
- configured pilot: 1-2 days;
- production hardening: 3-7 days.

Cost:

- server: $15-60/month;
- backups/storage: $5-30/month;
- optional commercial features/support may add cost.

## Student Download Flow

The Academy website should have a simple page:

1. Open `messenger.abc4rd.org`.
2. Choose platform: Web, Windows, macOS, Linux, Android, iOS.
3. Download the recommended client or open web chat.
4. Use invite code or Academy account.
5. Join `start-here`.
6. Read rules.
7. Pick a course/cohort room.

If using Matrix/Element:

- server address: `matrix.abc4rd.org`;
- web client: `chat.abc4rd.org`;
- students may install Element and sign in to the ABC4RD homeserver.

If using Zulip:

- organization URL: `chat.abc4rd.org`;
- students may use browser, Zulip Desktop, Android, or iOS.

## Minimum Data Model

The messenger should connect to the independent ABC4RD CRM later:

- user profile;
- student cohort;
- course enrollments;
- public display name;
- moderation status;
- accepted code of conduct timestamp;
- room memberships;
- last activity;
- support requests;
- expert sessions attended.

## Safety Requirements

- No private student data in public GitHub.
- Clear code of conduct.
- Moderation roles before public launch.
- Invite-only pilot before open registration.
- Backup and restore test.
- Export policy for student data.
- Incident process for abuse/spam.
- Admin account recovery plan.

## Recommended Roadmap

### Day 1

- Select Zulip or Matrix/Element.
- Deploy on test VPS or local Docker.
- Configure domain/subdomain.
- Create first rooms/channels.
- Invite 2-5 internal testers.

### Day 2

- Add onboarding page.
- Add code of conduct and moderation policy.
- Add backup.
- Add first student invite flow.
- Connect messenger link from ABC4RD website/GitHub.

### Week 1

- Invite first 20-50 students.
- Create course rooms.
- Test notifications and mobile access.
- Add admin/moderator playbook.
- Connect high-level CRM records only after privacy review.

