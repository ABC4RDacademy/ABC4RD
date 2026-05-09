# Source Review Batch: 2026-05-09

This batch defines the next source-review work needed to move ABC4RD Academy
repositories from active to strong.

## Batch Rules

- Use official or primary sources first.
- Record license/access status.
- Do not copy full third-party materials.
- Mark uncertainty as `requires verification`.
- Add safety boundaries for medical, robotics, manufacturing, and
  nanomaterials topics.

## Priority Sources

| Track | Source | URL | Status | Review question |
|---|---|---|---|---|
| Open compute | Open Compute Project | https://www.opencompute.org/ | verified | Which materials are suitable for beginner infrastructure literacy? |
| Open compute | OLCF Frontier | https://www.olcf.ornl.gov/olcf-resources/compute-systems/frontier/ | verified | How should we describe exascale without implying access? |
| Sensors | LoRaWAN specifications | https://resources.lora-alliance.org/technical-specifications | verified | Which parts can be cited without copying standards text? |
| Sensors | IETF RPL RFC 6550 | https://www.rfc-editor.org/rfc/rfc6550 | verified | What beginner explanation is accurate enough? |
| Robotics | ROS 2 docs | https://docs.ros.org/en/rolling/ | verified | Which tutorial should become the first student reading task? |
| Robotics | Gazebo docs | https://gazebosim.org/docs/ | verified | How should simulation limitations be framed? |
| Digital health | HL7 FHIR | https://www.fhir.org/ | verified | Which FHIR resource is safest for synthetic examples? |
| Digital health | WHO SMART Guidelines | https://www.who.int/teams/digital-health-and-innovation/smart-guidelines | verified | What should remain high-level pending expert review? |
| Manufacturing | NIST digital thread | https://www.nist.gov/programs-projects/digital-thread-smart-manufacturing | verified | What is the cleanest beginner digital thread example? |
| Manufacturing | MTConnect | https://www.mtconnect.org/about | verified | Which concepts belong in glossary? |
| Nanomaterials | nanoHUB | https://nanohub.org/ | verified | Which materials are reusable vs link-only? |
| Nanomaterials | OSHA nanotechnology resources | https://www.osha.gov/nanotechnology/resources | verified | Which safety boundaries must be repeated in modules? |

## Output Needed

For each source:

- one 100-150 word annotation;
- license/access note;
- student use case;
- risk or safety note;
- repository/module destination.

## Do Not Publish Yet

- copied standards text;
- lab procedures;
- clinical examples with realistic patient data;
- private facility telemetry examples;
- partner-sensitive or unpublished technical claims.
