# ABC4RD Sensors and IoT Lab Open-Source Stack Map

ABC4RD Sensors and IoT Lab is the Academy block for sensor networks, MQTT, LoRaWAN, device management, telemetry, edge gateways, embedded systems, and digital infrastructure monitoring.

## First Scope

| Layer | Open-source stack | First pilot | Time | Cost |
|---|---|---|---:|---:|
| IoT platform | ThingsBoard | telemetry dashboard with mock sensors | 1-3 days | $10-60/month |
| Edge gateway | EdgeX Foundry, Fledge | sensor-to-cloud bridge | 3-10 days | $20-150/month |
| LoRaWAN | ChirpStack, The Things Stack | private LoRaWAN learning network | 3-14 days | $50-300/month plus hardware |
| MQTT | Mosquitto, EMQX | telemetry broker and topic map | same day-2 days | $0-50/month |
| Embedded OS | Zephyr | microcontroller sensor lesson | 2-10 days | $20-200 hardware |
| Mesh/thread | OpenThread | low-power mesh concept lab | 3-14 days | $50-300 hardware |

## Repositories Watched

- https://github.com/thingsboard/thingsboard
- https://github.com/thingsboard/thingsboard-gateway
- https://github.com/edgexfoundry/edgex-go
- https://github.com/fledge-iot/fledge
- https://github.com/chirpstack/chirpstack
- https://github.com/eclipse-mosquitto/mosquitto
- https://github.com/emqx/emqx
- https://github.com/zephyrproject-rtos/zephyr
- https://github.com/openthread/openthread
- https://github.com/TheThingsNetwork/lorawan-stack

## First Academy Product

Create an ABC4RD telemetry cockpit: simulated temperature, vibration, energy, and network sensors streaming through MQTT into a dashboard.

Production note: do not connect real industrial, medical, or safety-critical sensors without a deployment and privacy review.

