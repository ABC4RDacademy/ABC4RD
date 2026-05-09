# Source Review Issue Drafts: 2026-05-09

These drafts are ready to become GitHub issues after write access to
`ABC4RDacademy` is restored. They should be opened in the relevant curriculum
repositories. Do not use them for mass outreach.

## 1. Open Compute

Repository: `open-compute-curriculum`

Title:

```text
Source review: HPC, exascale, and reproducible compute
```

Body:

```text
Review the public sources used in `modules/02-exascale-and-hpc.md`.

Sources:
- DOE exascale explainer: https://www.energy.gov/science/doe-explainsexascale-computing
- OLCF Frontier: https://www.olcf.ornl.gov/olcf-resources/compute-systems/frontier/
- OLCF resources: https://www.olcf.ornl.gov/olcf-resources/
- MLCommons: https://mlcommons.org/

Check:
- Does each source directly support the module claim?
- Are we careful not to imply compute access?
- Are student exercises realistic and non-operational?
- Is license/access status clear enough for citation?
```

Labels:

```text
source-verification, requires-verification
```

## 2. Sensor Networks

Repository: `sensor-networks-curriculum`

Title:

```text
Source review: LPWAN, RPL, and IoT cybersecurity
```

Body:

```text
Review the public sources used in `modules/02-low-power-networks.md`.

Sources:
- LoRaWAN technical specifications: https://resources.lora-alliance.org/technical-specifications
- IETF RPL RFC 6550: https://www.rfc-editor.org/rfc/rfc6550
- The Things Network docs: https://www.thethingsnetwork.org/docs/
- NIST IoT cybersecurity: https://www.nist.gov/itl/applied-cybersecurity/nist-cybersecurity-iot-program

Check:
- Are standard/spec references linked, not copied?
- Is the beginner comparison technically careful?
- Are real keys, credentials, or facility details excluded?
- Should any source be marked `license unclear`?
```

Labels:

```text
source-verification, requires-verification
```

## 3. Robotics

Repository: `robotics-systems-curriculum`

Title:

```text
Source review: ROS 2 basics and simulation safety
```

Body:

```text
Review the public sources used in `modules/02-ros2-basics.md`.

Sources:
- ROS 2 documentation: https://docs.ros.org/en/rolling/
- ROS 2 GitHub: https://github.com/ros2/ros2
- ROS 2 tutorials: https://docs.ros.org/en/rolling/Tutorials.html
- ros2_control: https://control.ros.org/rolling/index.html

Check:
- Does the module distinguish tutorial examples from physical deployment?
- Is the simulation-only safety note strong enough?
- Are beginner terms accurate?
- Is there a good external docs contribution target?
```

Labels:

```text
source-verification, requires-verification
```

## 4. Digital Health

Repository: `digital-health-standards-curriculum`

Title:

```text
Source review: FHIR literacy and synthetic-data boundary
```

Body:

```text
Review the public sources used in `modules/02-fhir-literacy.md`.

Sources:
- HL7 FHIR: https://www.fhir.org/
- ONC FHIR introduction: https://www.healthit.gov/isp/fhir-introduction
- WHO SMART Guidelines: https://www.who.int/teams/digital-health-and-innovation/smart-guidelines
- OpenMRS documentation: https://openmrs.org/documentation/

Check:
- Does the module avoid medical advice and clinical claims?
- Is synthetic data required clearly enough?
- Is FHIR explained as interoperability, not clinical correctness?
- Should any exercise require expert review before publication?
```

Labels:

```text
source-verification, requires-verification
```

## 5. Digital Manufacturing

Repository: `digital-manufacturing-curriculum`

Title:

```text
Source review: additive manufacturing data and digital thread
```

Body:

```text
Review the public sources used in `modules/02-additive-manufacturing-data.md`.

Sources:
- NIST AM data science: https://www.nist.gov/additive-manufacturing/research-areas/data-science
- NIST systems integration for AM: https://www.nist.gov/programs-projects/systems-integration-additive-manufacturing
- OpenLearn additive manufacturing: https://www.open.edu/openlearn/science-maths-technology/additive-manufacturing/content-section-0
- NIST digital thread: https://www.nist.gov/programs-projects/digital-thread-smart-manufacturing

Check:
- Are certification and quality claims avoided?
- Are digital thread and provenance framed accurately?
- Is OpenLearn reusable only by link/annotation unless license allows more?
- Is the student exercise safe and non-operational?
```

Labels:

```text
source-verification, requires-verification
```

## 6. Nanomaterials

Repository: `nanomaterials-research-curriculum`

Title:

```text
Source review: nanomaterials, sensors, and safety boundaries
```

Body:

```text
Review the public sources used in `modules/02-nanomaterials-and-sensors.md`.

Sources:
- NNI reports and resources: https://www.nano.gov/reports-resources
- NNI education and outreach: https://www.nano.gov/resources/education-and-outreach
- nanoHUB: https://nanohub.org/
- OSHA nanotechnology resources: https://www.osha.gov/nanotechnology/resources
- Materials Project docs: https://docs.materialsproject.org/

Check:
- Are lab procedures excluded?
- Are biomedical and deployment claims avoided?
- Are safety boundaries explicit enough?
- Which nanoHUB materials are link-only vs reusable?
```

Labels:

```text
source-verification, requires-verification
```

## Opening Rule

Open these issues only after GitHub write access is restored. Do not open all
issues if labels/templates are missing; add labels first.
