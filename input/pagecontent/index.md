Terminology for the VaxLink vignette of the WHO Pre-GDHF workshop: a Lao PDR family's baby is born in
Thailand, receives Hepatitis B and BCG birth doses with signed WHO vaccination certificates, comes
home, and is seen by a community health worker and then a clinic.

### The three layers

A certificate names the vaccine by WHO PreQual product identifier. Schedules run on vaccine types
and doses. Three layers connect them:

| Layer | Owner | Here |
|---|---|---|
| PreQual product identifier, what the certificate carries | WHO (smart-pcmt-vaxprequal) | Referenced |
| PreQual vaccine type, derived from the product | WHO; a local provisional map until published | `ConceptMap/PreQualProductToTypeLocal` |
| Lao PDR schedule dose | Lao Ministry of Health | `CodeSystem/lao-epi-schedule-dose`, `ValueSet/lao-epi-schedule-dose`, `ConceptMap/PreQualTypeToLaoDose` |

The type-to-dose map is deliberately partial. Hepatitis B maps to the Lao birth dose; BCG is not on
the Lao schedule and has no target, so a clinic has to decide what a foreign BCG dose means. That
decision, and who governs it, is the policy question the workshop is built around.

Codes are stored as the certificate issued them. A Lao coding is added to a record only when this
map has a target, recorded as automatic, or when a clinician confirms one.

#### Source

The Lao list is the Ministry of Health 2026 vaccination list, received 30 October 2026 through
Alvin Marcelo. Open questions for the Ministry: whether BCG is absent from the schedule or only from
the list, and whether three IPV doses is right.

#### Where this goes

Authored by Nawi for the workshop and intended to move to a WHO repository. The source of truth at
run time is the Ontoserver instance at tx.fhirlab.net; the OHS Player configurations bundle the
generated resources for offline use and never call it during the demo.
