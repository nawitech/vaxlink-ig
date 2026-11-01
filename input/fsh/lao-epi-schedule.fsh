// The Lao PDR schedule as a protocol: one action per dose from birth to the first birthday, plus
// MR2. Written in the eCHIS convention (schedule-offset and enrollment extensions, a FHIRPath
// applicability condition over %immunizations, one ActivityDefinition per dose), so the same plan
// runs in the OHS Player through fhir-workflow $apply and in Nawi's eCHIS. The Player reads the
// offsets to set each Task's due window after $apply. A dose counts as given when a completed
// Immunization carries its Lao coding, which a verified foreign certificate gets automatically
// when the type-to-dose map has a target (HepB) and never when it does not (BCG).

Alias: $offset = http://smartregister.org/fhir/StructureDefinition/schedule-offset
Alias: $enrollment = http://smartregister.org/fhir/StructureDefinition/enrollment
Alias: $doseNumber = http://smartregister.org/fhir/StructureDefinition/dose-number
Alias: $lao = https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose

Instance: LaoEpi-hb0
InstanceOf: ActivityDefinition
Usage: #definition
Title: "HB0"
Description: "Lao PDR schedule dose HB0: Birth dose; HB0-24H on the birth date, HB0-7D within the week."
* name = "LaoEpiHB0"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "0"
* code = $lao#HB0-24H "HB0"

Instance: LaoEpi-penta-1
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Penta 1"
Description: "Lao PDR schedule dose Penta 1."
* name = "LaoEpiPENTA1"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#PENTA-1 "Penta 1"

Instance: LaoEpi-opv-1
InstanceOf: ActivityDefinition
Usage: #definition
Title: "OPV 1"
Description: "Lao PDR schedule dose OPV 1."
* name = "LaoEpiOPV1"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#OPV-1 "OPV 1"

Instance: LaoEpi-pcv-1
InstanceOf: ActivityDefinition
Usage: #definition
Title: "PCV 1"
Description: "Lao PDR schedule dose PCV 1."
* name = "LaoEpiPCV1"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#PCV-1 "PCV 1"

Instance: LaoEpi-rota-1
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Rota 1"
Description: "Lao PDR schedule dose Rota 1."
* name = "LaoEpiROTA1"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#ROTA-1 "Rota 1"

Instance: LaoEpi-ipv-1
InstanceOf: ActivityDefinition
Usage: #definition
Title: "IPV 1"
Description: "Lao PDR schedule dose IPV 1: Ages for the three IPV doses to confirm with the Ministry."
* name = "LaoEpiIPV1"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#IPV-1 "IPV 1"

Instance: LaoEpi-penta-2
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Penta 2"
Description: "Lao PDR schedule dose Penta 2."
* name = "LaoEpiPENTA2"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "2"
* code = $lao#PENTA-2 "Penta 2"

Instance: LaoEpi-opv-2
InstanceOf: ActivityDefinition
Usage: #definition
Title: "OPV 2"
Description: "Lao PDR schedule dose OPV 2."
* name = "LaoEpiOPV2"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "2"
* code = $lao#OPV-2 "OPV 2"

Instance: LaoEpi-pcv-2
InstanceOf: ActivityDefinition
Usage: #definition
Title: "PCV 2"
Description: "Lao PDR schedule dose PCV 2."
* name = "LaoEpiPCV2"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "2"
* code = $lao#PCV-2 "PCV 2"

Instance: LaoEpi-rota-2
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Rota 2"
Description: "Lao PDR schedule dose Rota 2."
* name = "LaoEpiROTA2"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "2"
* code = $lao#ROTA-2 "Rota 2"

Instance: LaoEpi-ipv-2
InstanceOf: ActivityDefinition
Usage: #definition
Title: "IPV 2"
Description: "Lao PDR schedule dose IPV 2."
* name = "LaoEpiIPV2"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "2"
* code = $lao#IPV-2 "IPV 2"

Instance: LaoEpi-penta-3
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Penta 3"
Description: "Lao PDR schedule dose Penta 3."
* name = "LaoEpiPENTA3"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "3"
* code = $lao#PENTA-3 "Penta 3"

Instance: LaoEpi-opv-3
InstanceOf: ActivityDefinition
Usage: #definition
Title: "OPV 3"
Description: "Lao PDR schedule dose OPV 3."
* name = "LaoEpiOPV3"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "3"
* code = $lao#OPV-3 "OPV 3"

Instance: LaoEpi-pcv-3
InstanceOf: ActivityDefinition
Usage: #definition
Title: "PCV 3"
Description: "Lao PDR schedule dose PCV 3."
* name = "LaoEpiPCV3"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "3"
* code = $lao#PCV-3 "PCV 3"

Instance: LaoEpi-rota-3
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Rota 3"
Description: "Lao PDR schedule dose Rota 3."
* name = "LaoEpiROTA3"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "3"
* code = $lao#ROTA-3 "Rota 3"

Instance: LaoEpi-ipv-3
InstanceOf: ActivityDefinition
Usage: #definition
Title: "IPV 3"
Description: "Lao PDR schedule dose IPV 3."
* name = "LaoEpiIPV3"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "3"
* code = $lao#IPV-3 "IPV 3"

Instance: LaoEpi-mr-1
InstanceOf: ActivityDefinition
Usage: #definition
Title: "MR 1"
Description: "Lao PDR schedule dose MR 1: Given at 9 to 11 months; MR1-12-59M is the catch-up coding."
* name = "LaoEpiMR1"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#MR1-9-11M "MR 1"

Instance: LaoEpi-je
InstanceOf: ActivityDefinition
Usage: #definition
Title: "JE"
Description: "Lao PDR schedule dose JE."
* name = "LaoEpiJE"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "1"
* code = $lao#JE-9-11M "JE"

Instance: LaoEpi-mr-2
InstanceOf: ActivityDefinition
Usage: #definition
Title: "MR 2"
Description: "Lao PDR schedule dose MR 2: Given at 12 to 18 months; MR2-19-59M is the catch-up coding."
* name = "LaoEpiMR2"
* status = #active
* kind = #Task
* extension[0].url = $doseNumber
* extension[0].valueString = "2"
* code = $lao#MR2-12-18M "MR 2"

Instance: LaoEpiSchedule
InstanceOf: PlanDefinition
Usage: #definition
Title: "Lao PDR immunization schedule, birth to first birthday"
Description: "The Lao PDR Expanded Programme on Immunization schedule from the Ministry of Health 2026 list, as a protocol over a child's immunization history. One Task per dose not yet given, due by age."
* name = "LaoEpiSchedule"
* status = #active
* date = "2026-11-01"
* publisher = "Nawitech Limited"
* extension[0].url = $enrollment
* extension[0].extension[0].url = "mode"
* extension[0].extension[0].valueString = "auto"
* extension[0].extension[1].url = "eligibility"
* extension[0].extension[1].valueString = "Patient.birthDate > (today() - 5 years)"

* action[0].id = "hb0"
* action[0].title = "HB0"
* action[0].priority = #routine
* action[0].extension[0].url = $offset
* action[0].extension[0].extension[0].url = "anchor"
* action[0].extension[0].extension[0].valueString = "birthDate"
* action[0].extension[0].extension[1].url = "offset"
* action[0].extension[0].extension[1].valueString = "P0D"
* action[0].extension[0].extension[2].url = "windowBefore"
* action[0].extension[0].extension[2].valueString = "P0D"
* action[0].extension[0].extension[3].url = "windowAfter"
* action[0].extension[0].extension[3].valueString = "P7D"
* action[0].condition[0].kind = #applicability
* action[0].condition[0].expression.language = #text/fhirpath
* action[0].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='HB0-24H' or code='HB0-7D')).exists() and status='completed').empty()"
* action[0].definitionCanonical = Canonical(LaoEpi-hb0)

* action[1].id = "penta-1"
* action[1].title = "Penta 1"
* action[1].priority = #routine
* action[1].extension[0].url = $offset
* action[1].extension[0].extension[0].url = "anchor"
* action[1].extension[0].extension[0].valueString = "birthDate"
* action[1].extension[0].extension[1].url = "offset"
* action[1].extension[0].extension[1].valueString = "P42D"
* action[1].extension[0].extension[2].url = "windowBefore"
* action[1].extension[0].extension[2].valueString = "P7D"
* action[1].extension[0].extension[3].url = "windowAfter"
* action[1].extension[0].extension[3].valueString = "P28D"
* action[1].condition[0].kind = #applicability
* action[1].condition[0].expression.language = #text/fhirpath
* action[1].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='PENTA-1')).exists() and status='completed').empty()"
* action[1].definitionCanonical = Canonical(LaoEpi-penta-1)

* action[2].id = "opv-1"
* action[2].title = "OPV 1"
* action[2].priority = #routine
* action[2].extension[0].url = $offset
* action[2].extension[0].extension[0].url = "anchor"
* action[2].extension[0].extension[0].valueString = "birthDate"
* action[2].extension[0].extension[1].url = "offset"
* action[2].extension[0].extension[1].valueString = "P42D"
* action[2].extension[0].extension[2].url = "windowBefore"
* action[2].extension[0].extension[2].valueString = "P7D"
* action[2].extension[0].extension[3].url = "windowAfter"
* action[2].extension[0].extension[3].valueString = "P28D"
* action[2].condition[0].kind = #applicability
* action[2].condition[0].expression.language = #text/fhirpath
* action[2].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='OPV-1')).exists() and status='completed').empty()"
* action[2].definitionCanonical = Canonical(LaoEpi-opv-1)

* action[3].id = "pcv-1"
* action[3].title = "PCV 1"
* action[3].priority = #routine
* action[3].extension[0].url = $offset
* action[3].extension[0].extension[0].url = "anchor"
* action[3].extension[0].extension[0].valueString = "birthDate"
* action[3].extension[0].extension[1].url = "offset"
* action[3].extension[0].extension[1].valueString = "P42D"
* action[3].extension[0].extension[2].url = "windowBefore"
* action[3].extension[0].extension[2].valueString = "P7D"
* action[3].extension[0].extension[3].url = "windowAfter"
* action[3].extension[0].extension[3].valueString = "P28D"
* action[3].condition[0].kind = #applicability
* action[3].condition[0].expression.language = #text/fhirpath
* action[3].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='PCV-1')).exists() and status='completed').empty()"
* action[3].definitionCanonical = Canonical(LaoEpi-pcv-1)

* action[4].id = "rota-1"
* action[4].title = "Rota 1"
* action[4].priority = #routine
* action[4].extension[0].url = $offset
* action[4].extension[0].extension[0].url = "anchor"
* action[4].extension[0].extension[0].valueString = "birthDate"
* action[4].extension[0].extension[1].url = "offset"
* action[4].extension[0].extension[1].valueString = "P42D"
* action[4].extension[0].extension[2].url = "windowBefore"
* action[4].extension[0].extension[2].valueString = "P7D"
* action[4].extension[0].extension[3].url = "windowAfter"
* action[4].extension[0].extension[3].valueString = "P28D"
* action[4].condition[0].kind = #applicability
* action[4].condition[0].expression.language = #text/fhirpath
* action[4].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='ROTA-1')).exists() and status='completed').empty()"
* action[4].definitionCanonical = Canonical(LaoEpi-rota-1)

* action[5].id = "ipv-1"
* action[5].title = "IPV 1"
* action[5].priority = #routine
* action[5].extension[0].url = $offset
* action[5].extension[0].extension[0].url = "anchor"
* action[5].extension[0].extension[0].valueString = "birthDate"
* action[5].extension[0].extension[1].url = "offset"
* action[5].extension[0].extension[1].valueString = "P42D"
* action[5].extension[0].extension[2].url = "windowBefore"
* action[5].extension[0].extension[2].valueString = "P7D"
* action[5].extension[0].extension[3].url = "windowAfter"
* action[5].extension[0].extension[3].valueString = "P28D"
* action[5].condition[0].kind = #applicability
* action[5].condition[0].expression.language = #text/fhirpath
* action[5].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='IPV-1')).exists() and status='completed').empty()"
* action[5].definitionCanonical = Canonical(LaoEpi-ipv-1)

* action[6].id = "penta-2"
* action[6].title = "Penta 2"
* action[6].priority = #routine
* action[6].extension[0].url = $offset
* action[6].extension[0].extension[0].url = "anchor"
* action[6].extension[0].extension[0].valueString = "birthDate"
* action[6].extension[0].extension[1].url = "offset"
* action[6].extension[0].extension[1].valueString = "P70D"
* action[6].extension[0].extension[2].url = "windowBefore"
* action[6].extension[0].extension[2].valueString = "P7D"
* action[6].extension[0].extension[3].url = "windowAfter"
* action[6].extension[0].extension[3].valueString = "P28D"
* action[6].condition[0].kind = #applicability
* action[6].condition[0].expression.language = #text/fhirpath
* action[6].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='PENTA-2')).exists() and status='completed').empty()"
* action[6].definitionCanonical = Canonical(LaoEpi-penta-2)

* action[7].id = "opv-2"
* action[7].title = "OPV 2"
* action[7].priority = #routine
* action[7].extension[0].url = $offset
* action[7].extension[0].extension[0].url = "anchor"
* action[7].extension[0].extension[0].valueString = "birthDate"
* action[7].extension[0].extension[1].url = "offset"
* action[7].extension[0].extension[1].valueString = "P70D"
* action[7].extension[0].extension[2].url = "windowBefore"
* action[7].extension[0].extension[2].valueString = "P7D"
* action[7].extension[0].extension[3].url = "windowAfter"
* action[7].extension[0].extension[3].valueString = "P28D"
* action[7].condition[0].kind = #applicability
* action[7].condition[0].expression.language = #text/fhirpath
* action[7].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='OPV-2')).exists() and status='completed').empty()"
* action[7].definitionCanonical = Canonical(LaoEpi-opv-2)

* action[8].id = "pcv-2"
* action[8].title = "PCV 2"
* action[8].priority = #routine
* action[8].extension[0].url = $offset
* action[8].extension[0].extension[0].url = "anchor"
* action[8].extension[0].extension[0].valueString = "birthDate"
* action[8].extension[0].extension[1].url = "offset"
* action[8].extension[0].extension[1].valueString = "P70D"
* action[8].extension[0].extension[2].url = "windowBefore"
* action[8].extension[0].extension[2].valueString = "P7D"
* action[8].extension[0].extension[3].url = "windowAfter"
* action[8].extension[0].extension[3].valueString = "P28D"
* action[8].condition[0].kind = #applicability
* action[8].condition[0].expression.language = #text/fhirpath
* action[8].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='PCV-2')).exists() and status='completed').empty()"
* action[8].definitionCanonical = Canonical(LaoEpi-pcv-2)

* action[9].id = "rota-2"
* action[9].title = "Rota 2"
* action[9].priority = #routine
* action[9].extension[0].url = $offset
* action[9].extension[0].extension[0].url = "anchor"
* action[9].extension[0].extension[0].valueString = "birthDate"
* action[9].extension[0].extension[1].url = "offset"
* action[9].extension[0].extension[1].valueString = "P70D"
* action[9].extension[0].extension[2].url = "windowBefore"
* action[9].extension[0].extension[2].valueString = "P7D"
* action[9].extension[0].extension[3].url = "windowAfter"
* action[9].extension[0].extension[3].valueString = "P28D"
* action[9].condition[0].kind = #applicability
* action[9].condition[0].expression.language = #text/fhirpath
* action[9].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='ROTA-2')).exists() and status='completed').empty()"
* action[9].definitionCanonical = Canonical(LaoEpi-rota-2)

* action[10].id = "ipv-2"
* action[10].title = "IPV 2"
* action[10].priority = #routine
* action[10].extension[0].url = $offset
* action[10].extension[0].extension[0].url = "anchor"
* action[10].extension[0].extension[0].valueString = "birthDate"
* action[10].extension[0].extension[1].url = "offset"
* action[10].extension[0].extension[1].valueString = "P70D"
* action[10].extension[0].extension[2].url = "windowBefore"
* action[10].extension[0].extension[2].valueString = "P7D"
* action[10].extension[0].extension[3].url = "windowAfter"
* action[10].extension[0].extension[3].valueString = "P28D"
* action[10].condition[0].kind = #applicability
* action[10].condition[0].expression.language = #text/fhirpath
* action[10].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='IPV-2')).exists() and status='completed').empty()"
* action[10].definitionCanonical = Canonical(LaoEpi-ipv-2)

* action[11].id = "penta-3"
* action[11].title = "Penta 3"
* action[11].priority = #routine
* action[11].extension[0].url = $offset
* action[11].extension[0].extension[0].url = "anchor"
* action[11].extension[0].extension[0].valueString = "birthDate"
* action[11].extension[0].extension[1].url = "offset"
* action[11].extension[0].extension[1].valueString = "P98D"
* action[11].extension[0].extension[2].url = "windowBefore"
* action[11].extension[0].extension[2].valueString = "P7D"
* action[11].extension[0].extension[3].url = "windowAfter"
* action[11].extension[0].extension[3].valueString = "P28D"
* action[11].condition[0].kind = #applicability
* action[11].condition[0].expression.language = #text/fhirpath
* action[11].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='PENTA-3')).exists() and status='completed').empty()"
* action[11].definitionCanonical = Canonical(LaoEpi-penta-3)

* action[12].id = "opv-3"
* action[12].title = "OPV 3"
* action[12].priority = #routine
* action[12].extension[0].url = $offset
* action[12].extension[0].extension[0].url = "anchor"
* action[12].extension[0].extension[0].valueString = "birthDate"
* action[12].extension[0].extension[1].url = "offset"
* action[12].extension[0].extension[1].valueString = "P98D"
* action[12].extension[0].extension[2].url = "windowBefore"
* action[12].extension[0].extension[2].valueString = "P7D"
* action[12].extension[0].extension[3].url = "windowAfter"
* action[12].extension[0].extension[3].valueString = "P28D"
* action[12].condition[0].kind = #applicability
* action[12].condition[0].expression.language = #text/fhirpath
* action[12].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='OPV-3')).exists() and status='completed').empty()"
* action[12].definitionCanonical = Canonical(LaoEpi-opv-3)

* action[13].id = "pcv-3"
* action[13].title = "PCV 3"
* action[13].priority = #routine
* action[13].extension[0].url = $offset
* action[13].extension[0].extension[0].url = "anchor"
* action[13].extension[0].extension[0].valueString = "birthDate"
* action[13].extension[0].extension[1].url = "offset"
* action[13].extension[0].extension[1].valueString = "P98D"
* action[13].extension[0].extension[2].url = "windowBefore"
* action[13].extension[0].extension[2].valueString = "P7D"
* action[13].extension[0].extension[3].url = "windowAfter"
* action[13].extension[0].extension[3].valueString = "P28D"
* action[13].condition[0].kind = #applicability
* action[13].condition[0].expression.language = #text/fhirpath
* action[13].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='PCV-3')).exists() and status='completed').empty()"
* action[13].definitionCanonical = Canonical(LaoEpi-pcv-3)

* action[14].id = "rota-3"
* action[14].title = "Rota 3"
* action[14].priority = #routine
* action[14].extension[0].url = $offset
* action[14].extension[0].extension[0].url = "anchor"
* action[14].extension[0].extension[0].valueString = "birthDate"
* action[14].extension[0].extension[1].url = "offset"
* action[14].extension[0].extension[1].valueString = "P98D"
* action[14].extension[0].extension[2].url = "windowBefore"
* action[14].extension[0].extension[2].valueString = "P7D"
* action[14].extension[0].extension[3].url = "windowAfter"
* action[14].extension[0].extension[3].valueString = "P28D"
* action[14].condition[0].kind = #applicability
* action[14].condition[0].expression.language = #text/fhirpath
* action[14].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='ROTA-3')).exists() and status='completed').empty()"
* action[14].definitionCanonical = Canonical(LaoEpi-rota-3)

* action[15].id = "ipv-3"
* action[15].title = "IPV 3"
* action[15].priority = #routine
* action[15].extension[0].url = $offset
* action[15].extension[0].extension[0].url = "anchor"
* action[15].extension[0].extension[0].valueString = "birthDate"
* action[15].extension[0].extension[1].url = "offset"
* action[15].extension[0].extension[1].valueString = "P98D"
* action[15].extension[0].extension[2].url = "windowBefore"
* action[15].extension[0].extension[2].valueString = "P7D"
* action[15].extension[0].extension[3].url = "windowAfter"
* action[15].extension[0].extension[3].valueString = "P28D"
* action[15].condition[0].kind = #applicability
* action[15].condition[0].expression.language = #text/fhirpath
* action[15].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='IPV-3')).exists() and status='completed').empty()"
* action[15].definitionCanonical = Canonical(LaoEpi-ipv-3)

* action[16].id = "mr-1"
* action[16].title = "MR 1"
* action[16].priority = #routine
* action[16].extension[0].url = $offset
* action[16].extension[0].extension[0].url = "anchor"
* action[16].extension[0].extension[0].valueString = "birthDate"
* action[16].extension[0].extension[1].url = "offset"
* action[16].extension[0].extension[1].valueString = "P270D"
* action[16].extension[0].extension[2].url = "windowBefore"
* action[16].extension[0].extension[2].valueString = "P0D"
* action[16].extension[0].extension[3].url = "windowAfter"
* action[16].extension[0].extension[3].valueString = "P60D"
* action[16].condition[0].kind = #applicability
* action[16].condition[0].expression.language = #text/fhirpath
* action[16].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='MR1-9-11M' or code='MR1-12-59M')).exists() and status='completed').empty()"
* action[16].definitionCanonical = Canonical(LaoEpi-mr-1)

* action[17].id = "je"
* action[17].title = "JE"
* action[17].priority = #routine
* action[17].extension[0].url = $offset
* action[17].extension[0].extension[0].url = "anchor"
* action[17].extension[0].extension[0].valueString = "birthDate"
* action[17].extension[0].extension[1].url = "offset"
* action[17].extension[0].extension[1].valueString = "P270D"
* action[17].extension[0].extension[2].url = "windowBefore"
* action[17].extension[0].extension[2].valueString = "P0D"
* action[17].extension[0].extension[3].url = "windowAfter"
* action[17].extension[0].extension[3].valueString = "P60D"
* action[17].condition[0].kind = #applicability
* action[17].condition[0].expression.language = #text/fhirpath
* action[17].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='JE-9-11M' or code='JE-OVER-1Y')).exists() and status='completed').empty()"
* action[17].definitionCanonical = Canonical(LaoEpi-je)

* action[18].id = "mr-2"
* action[18].title = "MR 2"
* action[18].priority = #routine
* action[18].extension[0].url = $offset
* action[18].extension[0].extension[0].url = "anchor"
* action[18].extension[0].extension[0].valueString = "birthDate"
* action[18].extension[0].extension[1].url = "offset"
* action[18].extension[0].extension[1].valueString = "P365D"
* action[18].extension[0].extension[2].url = "windowBefore"
* action[18].extension[0].extension[2].valueString = "P0D"
* action[18].extension[0].extension[3].url = "windowAfter"
* action[18].extension[0].extension[3].valueString = "P180D"
* action[18].condition[0].kind = #applicability
* action[18].condition[0].expression.language = #text/fhirpath
* action[18].condition[0].expression.expression = "%immunizations.entry.resource.where(vaccineCode.coding.where(system='https://nawitech.github.io/vaxlink-ig/CodeSystem/lao-epi-schedule-dose' and (code='MR2-12-18M' or code='MR2-19-59M')).exists() and status='completed').empty()"
* action[18].definitionCanonical = Canonical(LaoEpi-mr-2)
