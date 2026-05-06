# ABC4RD Academy Research Tracks

This file defines the public research architecture for ABC4RD Academy. Tracks
are educational and research-oriented; they do not imply affiliation with any
listed organization.

## Maturity Levels

- `draft`: source map exists, curriculum not yet active.
- `active`: student tasks, issues, and reading path exist.
- `review`: expert feedback requested.
- `reviewed`: public feedback or merged external contribution confirms quality.

## Track Map

| Track | Mission | Maturity |
| --- | --- | --- |
| Bitcoin, cryptography, and open finance | Teach protocol literacy, self-custody, open-source contribution, and responsible settlement infrastructure. | active |
| AI and open compute | Connect AI education with reproducible computing, open infrastructure, data center literacy, and scientific workloads. | active |
| Sensors, IoT, and networks | Teach physical data capture, low-power networks, telemetry integrity, and secure connected devices. | draft |
| Robotics and autonomous systems | Connect robotics software, sensing, simulation, control, safety, and open-source workflows. | draft |
| Digital health and FHIR | Teach interoperability, computable guidelines, clinical data ethics, and standards literacy. | draft |
| Digital manufacturing and digital thread | Study traceability, digital thread, additive manufacturing, industrial data, and provenance limits. | draft |
| Nanomaterials and simulation | Build a source-backed path into nanoeducation, simulation tools, safety, nanosensors, and materials data. | draft |
| Governance, ethics, and standards | Maintain legal, medical, financial, privacy, safety, and licensing boundaries across all tracks. | active |

## 1. Bitcoin, Cryptography, And Open Finance

Mission: prepare students to read, verify, and contribute to Bitcoin and open
financial infrastructure without hype or investment advice.

Key sources:

- <https://bitcoin.org/bitcoin.pdf>
- <https://github.com/bitcoin/bitcoin>
- <https://bitcoincore.org/en/about/>
- <https://bitcoinops.org/en/topics/>
- <https://github.com/lightningdevkit/rust-lightning>
- <https://github.com/lightningnetwork/lnd>
- <https://github.com/ElementsProject/lightning>
- <https://github.com/btcpayserver/btcpayserver>
- <https://brink.dev/>
- <https://chaincode.com/projects>

Learning topics:

- UTXO model and transactions.
- Wallets, self-custody, and PSBT.
- Lightning architecture and liquidity.
- Open-source contribution workflow.
- Limits of blockchain traceability claims.

Exercises:

- Explain one Bitcoin Optech topic for beginners.
- Map a transaction into inputs, outputs, fee, and change.
- Review a Bitcoin project README and propose one documentation improvement.

Open-source projects:

- Bitcoin Core, LDK, Core Lightning, LND, BTCPay Server, Bitcoin Design.

Potential integration targets:

- Brink, Chaincode Labs, Spiral, Bitcoin Optech, BTCPay Server, Bitcoin Design.

## 2. AI And Open Compute

Mission: connect AI education to reproducible compute, open infrastructure,
scientific workloads, and data center literacy.

Key sources:

- <https://www.opencompute.org/>
- <https://www.olcf.ornl.gov/olcf-resources/compute-systems/frontier/>
- <https://www.energy.gov/science/doe-explainsexascale-computing>
- <https://www.cncf.io/>
- <https://openinfra.dev/>
- <https://www.linuxfoundation.org/projects>
- <https://pytorch.org/>
- <https://www.tensorflow.org/>
- <https://jupyter.org/>
- <https://mlcommons.org/>

Learning topics:

- Open hardware and data center architecture.
- GPU workloads and scientific computing.
- Reproducible notebooks and model documentation.
- Compute governance and energy literacy.
- Open benchmarks and evaluation limits.

Exercises:

- Compare exascale, cloud, and edge compute.
- Create a reproducible notebook with source metadata.
- Write a compute ethics note for AI course deployment.

Open-source projects:

- Jupyter, PyTorch, TensorFlow, Kubernetes, MLCommons docs.

Potential integration targets:

- Open Compute Project, CNCF, OpenInfra, Linux Foundation AI & Data, OLCF
  public education resources.

## 3. Sensors, IoT, And Networks

Mission: teach physical-world data capture, constrained networking,
cybersecurity, and telemetry integrity.

Key sources:

- <https://resources.lora-alliance.org/technical-specifications>
- <https://www.rfc-editor.org/rfc/rfc6550>
- <https://www.nist.gov/itl/applied-cybersecurity/nist-cybersecurity-iot-program>
- <https://www.nist.gov/programs-projects/cybersecurity-smart-manufacturing-systems>
- <https://opcfoundation.org/about/what-is-opc/>
- <https://opcfoundation.org/about/opc-technologies/opc-ua/>
- <https://www.mtconnect.org/about>
- <https://www.ietf.org/>
- <https://www.rfc-editor.org/>
- <https://www.thethingsnetwork.org/docs/>

Learning topics:

- Sensor calibration and metadata.
- LPWAN and constrained routing.
- Industrial IoT cybersecurity.
- OPC UA / MTConnect data semantics.
- Telemetry provenance and audit boundaries.

Exercises:

- Create a sensor metadata template.
- Explain LoRaWAN vs RPL in one table.
- Write a threat model for an industrial sensor gateway.

Open-source projects:

- The Things Network docs, Eclipse IoT projects, open62541, Node-RED.

Potential integration targets:

- LoRa Alliance, IETF, NIST IoT, OPC Foundation, MTConnect.

## 4. Robotics And Autonomous Systems

Mission: connect robotics software, simulation, sensing, control, and safety to
open-source engineering practice.

Key sources:

- <https://docs.ros.org/en/rolling/>
- <https://github.com/ros2/ros2>
- <https://gazebosim.org/docs/>
- <https://github.com/gazebosim>
- <https://moveit.ai/>
- <https://github.com/moveit>
- <https://foundations-of-robotics.org/>
- <https://link.springer.com/book/10.1007/978-3-319-62533-1>
- <https://www.nist.gov/programs-projects/robotic-systems-smart-manufacturing-program>
- <https://control.ros.org/rolling/index.html>

Learning topics:

- ROS 2 basics and package structure.
- Simulation with Gazebo.
- Motion planning and MoveIt.
- Sensors, perception, and control loops.
- Safety boundaries for autonomous systems.

Exercises:

- Summarize a ROS 2 tutorial for a beginner.
- Map a simple robot system into sensors, actuators, controller, and network.
- Write a safety note for a simulated robot demo.

Open-source projects:

- ROS 2, Gazebo, MoveIt, ros2_control.

Potential integration targets:

- Open Robotics ecosystem, ROS maintainers, Gazebo, MoveIt, NIST robotics.

## 5. Digital Health And FHIR

Mission: teach interoperability, computable care guidelines, privacy, and
responsible digital health standards.

Key sources:

- <https://www.who.int/health-topics/digital-health>
- <https://www.who.int/teams/digital-health-and-innovation/smart-guidelines>
- <https://smart.who.int/>
- <https://www.fhir.org/>
- <https://www.healthit.gov/isp/fhir-introduction>
- <https://openmrs.org/documentation/>
- <https://github.com/openmrs>
- <https://docs.gnuhealth.org/>
- <https://www.openmhealth.org/organization/about/>
- <https://github.openmhealth.org/>

Learning topics:

- FHIR resources and interoperability.
- WHO SMART Guidelines.
- Open-source EMR systems.
- Privacy and clinical safety boundaries.
- Data mapping and semantic interoperability.

Exercises:

- Explain one FHIR resource in non-clinical language.
- Compare OpenMRS, GNU Health, and Open mHealth.
- Write a medical-data disclaimer for a student project.

Open-source projects:

- OpenMRS, GNU Health, Open mHealth, HAPI FHIR.

Potential integration targets:

- WHO public resources, HL7 community, OpenMRS, GNU Health, Open mHealth.

## 6. Digital Manufacturing And Digital Thread

Mission: study manufacturing traceability, additive manufacturing, digital
thread, industrial data, and the limits of blockchain provenance claims.

Key sources:

- <https://www.nist.gov/smart-manufacturing>
- <https://www.nist.gov/programs-projects/digital-thread-smart-manufacturing>
- <https://www.nist.gov/additive-manufacturing/research-areas/data-science>
- <https://www.nist.gov/news-events/news/2019/02/nist-blockchain-provides-security-traceability-smart-manufacturing>
- <https://www.open.edu/openlearn/science-maths-technology/additive-manufacturing/content-section-0>
- <https://www.mtconnect.org/about>
- <https://opcfoundation.org/about/what-is-opc/>
- <https://store.astm.org/products-services/standards-and-publications/standards/additive-manufacturing-standards.html>
- <https://www.ap242.org/ap242-standard.html>
- <https://www.nist.gov/programs-projects/systems-integration-additive-manufacturing>

Learning topics:

- Digital thread and product lifecycle.
- Additive manufacturing data.
- Industrial interoperability standards.
- Traceability vs privacy.
- Blockchain anchoring limits.

Exercises:

- Map a digital thread for a 3D printed part.
- Identify which data should be public, private, or hashed.
- Summarize a NIST manufacturing source for students.

Open-source projects:

- open62541, Node-RED, FreeCAD, MTConnect examples.

Potential integration targets:

- NIST, OPC Foundation, MTConnect, ASTM, STEP/AP242 ecosystem.

## 7. Nanomaterials And Simulation

Mission: build a careful path into nanomaterials, simulation, safety, and
materials data without overstating biomedical or industrial claims.

Key sources:

- <https://www.nano.gov/reports-resources>
- <https://www.nano.gov/resources/education-and-outreach>
- <https://nanohub.org/>
- <https://www.nist.gov/mgi/mgi-impact-stories/nanohub>
- <https://www.osha.gov/nanotechnology/resources>
- <https://materialsproject.org/>
- <https://docs.materialsproject.org/>
- <https://nomad-lab.eu/>
- <https://materialscommons.org/>
- <https://www.nist.gov/materials-genome-initiative>

Learning topics:

- Nanoscale science foundations.
- Simulation and materials databases.
- Nanosensors and nanomedicine boundaries.
- Safety and exposure resources.
- FAIR data in materials science.

Exercises:

- Annotate one nanoHUB resource with license and student use.
- Compare Materials Project, NOMAD, and Materials Commons.
- Write a responsible nanomaterials claim checklist.

Open-source projects:

- Materials Project API, NOMAD tools, Materials Commons, nanoHUB resources.

Potential integration targets:

- NNI, nanoHUB, Materials Project, NOMAD, Materials Commons, NIST MGI.

## 8. Governance, Ethics, And Standards

Mission: keep ABC4RD Academy safe, useful, source-backed, and legally clean.

Key sources:

- <https://creativecommons.org/licenses/>
- <https://opensource.org/licenses>
- <https://docs.github.com/en/site-policy>
- <https://www.who.int/health-topics/digital-health>
- <https://www.nist.gov/itl/applied-cybersecurity/nist-cybersecurity-iot-program>
- <https://www.nist.gov/smart-manufacturing>
- <https://www.nano.gov/reports-resources>
- <https://www.finra.org/investors/insights/crypto-assets>
- <https://www.sec.gov/securities-topics/crypto-assets>
- <https://www.fda.gov/medical-devices/digital-health-center-excellence>

Learning topics:

- Source verification.
- Licensing and redistribution.
- Medical and financial disclaimers.
- Safety-critical robotics boundaries.
- Contributor privacy.

Exercises:

- Review a source for license risk.
- Convert a hype claim into a narrow evidence-backed claim.
- Draft a privacy-safe contributor intake process.

Open-source projects:

- Repository governance docs, Markdown checks, link checkers, issue templates.

Potential integration targets:

- Standards bodies, public education programs, open-source governance projects.
