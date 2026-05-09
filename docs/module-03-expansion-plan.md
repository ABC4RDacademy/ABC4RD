# Module 03 Expansion Plan

This plan defines the next curriculum buildout batch. The goal is to make each
adjacent curriculum repository visibly deeper without creating new repositories.

## Batch Objective

Expand all `modules/03-*` files so each includes:

- purpose;
- learning goals;
- verified public sources;
- key concepts;
- student exercise;
- expected output;
- safety or governance boundary;
- external documentation contribution target.

## Targets

| Repository | Module 03 | Focus |
|---|---|---|
| `open-compute-curriculum` | `modules/03-cloud-native-infrastructure.md` | containers, orchestration, reproducibility |
| `sensor-networks-curriculum` | `modules/03-industrial-interoperability.md` | OPC UA, MTConnect, semantic data |
| `robotics-systems-curriculum` | `modules/03-simulation-with-gazebo.md` | Gazebo, simulation limits, safety |
| `digital-health-standards-curriculum` | `modules/03-smart-guidelines.md` | WHO SMART Guidelines, computable guidance |
| `digital-manufacturing-curriculum` | `modules/03-industrial-standards.md` | OPC UA, MTConnect, STEP/AP242, ASTM |
| `nanomaterials-research-curriculum` | `modules/03-simulation-and-materials-data.md` | Materials Project, NOMAD, Materials Commons |

## Source Priorities

| Track | Sources |
|---|---|
| Open compute | CNCF, OpenInfra, Jupyter, Kubernetes docs |
| Sensors | OPC Foundation, OPC UA, MTConnect, NIST smart manufacturing cybersecurity |
| Robotics | Gazebo docs, Gazebo GitHub, ROS 2 simulation docs |
| Digital health | WHO SMART Guidelines, smart.who.int, HL7 FHIR |
| Manufacturing | OPC Foundation, MTConnect, STEP AP242, ASTM AM standards, NIST |
| Nanomaterials | Materials Project docs, NOMAD, Materials Commons, nanoHUB |

## Acceptance Criteria

- No module contains one-line placeholder text.
- No module copies standards or third-party course material.
- Each module has at least four verified sources.
- Each module includes a concrete student exercise.
- Each module includes a safety/legal/IP boundary where relevant.

## Commit Strategy

Use one commit per repository:

```text
Build cloud native infrastructure lesson
Build industrial interoperability lesson
Build Gazebo simulation lesson
Build SMART Guidelines lesson
Build industrial standards lesson
Build materials data lesson
```

## Promotion Impact

After this batch, each adjacent curriculum repository should satisfy the
minimum standard for `Contributor-ready` in the repository promotion matrix.
