# SSH and Project VPN Access Runbook

ABC4RD Academy should use separate access layers for source control, project
collaboration, and private local services. GitHub SSH keys authenticate a person
or machine to GitHub. A project VPN controls access to private network resources.
They are related, but they are not the same security boundary.

## Current GitHub SSH Setup

Local machine setup:

- SSH key: `~/.ssh/id_ed25519_abc4rd_academy`
- Public key title in GitHub: `ABC4RD Academy project key 2026-05-10`
- SSH host alias: `github-abc4rd-academy`
- Git remotes use: `git@github-abc4rd-academy:ABC4RDacademy/<repo>.git`
- HTTPS backup remotes use: `origin-https`

The SSH key currently authenticates to GitHub as the logged-in GitHub account.
Repository write access still depends on GitHub permissions in
`ABC4RDacademy`.

## Repositories Configured For SSH

- `ABC4RD`
- `open-compute-curriculum`
- `sensor-networks-curriculum`
- `robotics-systems-curriculum`
- `digital-health-standards-curriculum`
- `digital-manufacturing-curriculum`
- `nanomaterials-research-curriculum`

## Required GitHub Permission

For publishing pending work, the GitHub account that owns this SSH key needs
`Write` or `Admin` access to:

- `ABC4RDacademy/ABC4RD`
- `ABC4RDacademy/open-compute-curriculum`
- `ABC4RDacademy/sensor-networks-curriculum`
- `ABC4RDacademy/robotics-systems-curriculum`
- `ABC4RDacademy/digital-health-standards-curriculum`
- `ABC4RDacademy/digital-manufacturing-curriculum`
- `ABC4RDacademy/nanomaterials-research-curriculum`

SSH does not bypass GitHub permissions.

## Project VPN Purpose

Use a project VPN only for resources that should not be public:

- local dev services;
- preview servers;
- private dashboards;
- internal document stores;
- temporary SSH access to a project machine;
- restricted automation endpoints.

Do not use the VPN as a substitute for GitHub permissions, code review, or
public source verification.

## Recommended VPN Model

Use one isolated project network for ABC4RD Academy.

Recommended properties:

- separate from personal VPNs and unrelated business projects;
- invite-only access;
- named users, not shared accounts;
- device approval before access;
- split tunneling by default;
- no access to the full local LAN unless explicitly needed;
- per-service allow rules;
- immediate offboarding when a person leaves the project.

## Access Levels

| Level | Who | Access |
|---|---|---|
| Viewer | Research reviewer, guest expert | GitHub read access and public docs only |
| Contributor | Student or writer | GitHub fork/PR workflow; no VPN by default |
| Maintainer | Trusted project contributor | GitHub write access; VPN access to selected dev services |
| Operator | Infrastructure maintainer | VPN admin, deployment access, secrets management |

## Safe Service Exposure

Expose only named services over the VPN:

| Service | Default |
|---|---|
| Local website preview | Allowed for maintainers |
| Documentation preview | Allowed for maintainers |
| GitHub repository access | Use GitHub directly, not VPN |
| RDP / full desktop access | Disabled by default |
| File shares | Disabled by default |
| Databases | Disabled unless synthetic/demo data only |
| Secrets store | Operators only |

## VPN Options

ABC4RD Academy can use either model:

| Option | Good for | Notes |
|---|---|---|
| Tailscale / Headscale | Fast invite-based project mesh | Good for small teams and device approval |
| WireGuard | Self-managed minimal VPN | Requires server, peer keys, routing, and firewall rules |
| ZeroTier | Simple virtual LAN | Useful when LAN-style discovery is needed |
| Existing sing-box tunnel | Current machine already has a TUN adapter | Do not modify without knowing the active config |

## WireGuard Peer Template

Use this only after a server endpoint exists.

```ini
[Interface]
PrivateKey = <generated-on-client>
Address = 10.44.0.10/32
DNS = 1.1.1.1

[Peer]
PublicKey = <abc4rd-vpn-server-public-key>
Endpoint = <server-domain-or-ip>:51820
AllowedIPs = 10.44.0.0/24
PersistentKeepalive = 25
```

## Tailscale / Headscale Setup Checklist

1. Create an ABC4RD-only tailnet or Headscale namespace.
2. Require user login, not shared credentials.
3. Turn on device approval.
4. Create groups:
   - `abc4rd-maintainers`
   - `abc4rd-reviewers`
   - `abc4rd-operators`
5. Allow only required TCP ports.
6. Disable full LAN routing until explicitly needed.
7. Add device tags for project machines.
8. Offboard users immediately when their role ends.

## Onboarding A New Person

1. Confirm their role.
2. Add GitHub access first.
3. Require SSH key authentication for GitHub.
4. If private services are needed, invite them to the project VPN.
5. Grant only the service ports required for their role.
6. Record access in the access register.
7. Review access after 30 days.

## Offboarding

1. Remove GitHub organization or repository access.
2. Revoke deploy keys or personal keys if needed.
3. Remove the device from the VPN.
4. Revoke VPN auth keys.
5. Rotate secrets if the person had operator access.
6. Check recent repository and network activity.

## Immediate Next Step

To publish the pending ABC4RD work, grant the SSH-authenticated GitHub account
`Write` or `Admin` access in `ABC4RDacademy`. Then run:

```powershell
cd "C:\Users\Admin\OneDrive\Документы\ABC4RD\github_work\ABC4RD"
git push origin main
git push origin v0.2-research-infrastructure
```

