A reference Implementation Guide for carrying routine immunization records across a border and verifying them, built on the WHO Global Digital Health Certification Network (GDHCN). Thailand and Lao PDR are the worked pair; the pattern is written to be copied.

### The problem

When a child is vaccinated abroad, the record comes home as a WHO Digital Vaccination Certificate:
an HCERT QR code, signed with the issuing country's document signing certificate and verifiable
against the GDHCN trust list. The certificate names the vaccine by its WHO PreQual product identifier,
never by a national code. The receiving country runs its schedule on its own vaccine types and doses.
Something has to bridge the two, and that bridge is terminology, not code. This IG is that bridge,
written so another pair of countries can copy it.

### The three layers

| Layer | What it answers | Owner | Here |
|---|---|---|---|
| PreQual product identifier | What was given, exactly as the certificate carries it | WHO, [smart-pcmt-vaxprequal](https://worldhealthorganization.github.io/smart-pcmt-vaxprequal/) | Referenced |
| PreQual vaccine type | What kind of vaccine that product is | WHO; a local provisional map until WHO publishes one | `ConceptMap/PreQualProductToTypeLocal` |
| National schedule dose | What it counts as in the receiving country's schedule | The receiving country's Ministry of Health | One CodeSystem, ValueSet and ConceptMap per receiving country |

Two rules follow. Codes are stored exactly as the issuing country wrote them; nothing in the
pipeline translates a code on its own. A national coding is added only when the national map has a
target, recorded as automatic, or when a clinician confirms one, recorded as a decision.

The national map is deliberately partial. Where a foreign vaccine has no place in the receiving
schedule, the gap is stated as data, an explicit `unmatched` target, rather than left as an omission.
That gap is where governance begins: who decides what a foreign dose counts as, and under what
agreement between the two countries.

### The two countries

The roles swap during the story. First Thailand issues and Lao PDR receives: a Lao family's baby is
born in Thailand, gets Hepatitis B and BCG birth doses with two signed certificates, and comes home
to a community health worker and a clinic. A year later Lao PDR issues a Verifiable Health Link and
Thailand receives: the family travels back and a Thai clinic reads the child's record. Each country
therefore needs both an issuing side and a receiving side.

| | Issuing side | Receiving side |
|---|---|---|
| Thailand | GDHCN DEV participant XXR, PreQual product identifiers on the certificate; no national code system needed | Thai schedule layer: placeholder until the Ministry's list arrives |
| Lao PDR | Lao national system issuing the VHL (NE-4) | `CodeSystem/lao-epi-schedule-dose`, `ValueSet/lao-epi-schedule-dose`, `ConceptMap/PreQualTypeToLaoDose`, from the Ministry of Health 2026 list |

On the Lao schedule Hepatitis B maps cleanly to the birth dose HB0-24H. BCG is not on the Lao
schedule, so it is explicitly unmatched and a clinician has to decide. The two cards show both paths.

### Adopting this for another pair of countries

1. Keep the two WHO layers as they are; they are the same everywhere.
2. For each receiving country, author its schedule-dose CodeSystem and ValueSet from the national
   list, one code per schedule dose, with the age band where the list gives one.
3. Author its type-to-dose ConceptMap from WHO PreQual vaccine types. Map what maps; mark what the
   schedule lacks as `unmatched` with a comment, and leave out what the list never mentions.
4. Write the schedule PlanDefinition over that CodeSystem.
5. Load the generated resources to the national terminology server and bundle them into the apps.

Nothing on the issuing side changes: a certificate carries PreQual identifiers whichever country
signs it.

#### Where this goes

Authored by Nawi and intended to move to a WHO repository. The source of truth at run time is the Ontoserver at tx.fhirlab.net; the OHS Player configurations bundle the generated resources for offline use and never call it during the demo.
