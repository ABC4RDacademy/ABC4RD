# ABC4RD Network Infrastructure Lab Open-Source Stack Map

ABC4RD Network Infrastructure Lab is the Academy block for routing, SDN, network operating systems, mesh networks, VPNs, container networking, observability, IP addressing, and resilient infrastructure.

## First Scope

| Layer | Open-source stack | First pilot | Time | Cost |
|---|---|---|---:|---:|
| Routing | FRRouting | BGP/OSPF lab topology | 1-5 days | $0-50/month |
| Router OS | OpenWrt, OPNsense, VyOS | virtual router classroom | 1-7 days | $0-100/month |
| SDN/switching | Open vSwitch, Mininet | SDN topology simulation | 1-5 days | $0 |
| Container networking | Cilium, Calico, CNI, MetalLB | Kubernetes networking demo | 3-14 days | $20-300/month |
| Network inventory | NetBox | IPAM/DCIM knowledge base | 1-3 days | $10-80/month |
| Overlay/mesh | ZeroTier, Yggdrasil | project VPN and mesh concept | 1-3 days | $0-50/month |

## Repositories Watched

- https://github.com/FRRouting/frr
- https://github.com/openwrt/openwrt
- https://github.com/openvswitch/ovs
- https://github.com/cilium/cilium
- https://github.com/projectcalico/calico
- https://github.com/opnsense/core
- https://github.com/vyos/vyos-1x
- https://github.com/mininet/mininet
- https://github.com/containernetworking/cni
- https://github.com/metallb/metallb
- https://github.com/netbox-community/netbox
- https://github.com/zerotier/ZeroTierOne
- https://github.com/yggdrasil-network/yggdrasil-go

## First Academy Product

Create a network classroom: one topology diagram, virtual routers, container network, IPAM inventory, and a project VPN runbook.

Production note: do not expose routers, VPNs, or management panels publicly without security hardening, access controls, logging, and credential rotation.

