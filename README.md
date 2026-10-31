# VaxLink terminology IG

Terminology and schedule content for the VaxLink vignette of the WHO Pre-GDHF workshop (Bangkok,
30 November to 1 December 2026), as a FHIR Implementation Guide in FHIR Shorthand.

| | |
|---|---|
| Canonical | `https://nawitech.github.io/vaxlink-ig` |
| FHIR version | 4.0.1 |
| Status | draft, 0.1.0 |
| Engineering ticket | [NE-5](https://github.com/nawitech/pre-gdhf-workshop/issues/7) |

## What is in it

| Artifact | Purpose |
|---|---|
| `CodeSystem/lao-epi-schedule-dose` | The 23 doses of the Lao PDR 2026 schedule, one code per row of the Ministry's list |
| `ValueSet/lao-epi-schedule-dose` | All of them |
| `ConceptMap/PreQualTypeToLaoDose` | WHO PreQual vaccine type to Lao dose, deliberately partial: HepB maps, BCG is unmatched |
| `ConceptMap/PreQualProductToTypeLocal` | The two demo products to their vaccine type, until WHO publishes this map |

The Lao schedule PlanDefinition (birth to first birthday) is the next artifact.

## Build

```bash
npm install -g fsh-sushi@3.20.1
sushi .                 # writes fsh-generated/resources/*.json
```

The full IG Publisher build (HTML pages) needs Java 17 and the publisher jar:

```bash
./_updatePublisher.sh   # once
./_genonce.sh           # writes output/
```

## Using the output

The OHS Player configurations copy `fsh-generated/resources/` into their bundled terminology, and
the Ontoserver at tx.fhirlab.net loads the same files. `vaxlink/hcert` in
[player-reference-examples](https://github.com/ohs-foundation/player-reference-examples) reads the two
ConceptMaps to resolve a scanned product to its type and proposed Lao dose.

## Licence

Apache 2.0, see [LICENSE](LICENSE). The Lao list belongs to the Lao PDR Ministry of Health; the WHO
PreQual code systems are WHO's.
