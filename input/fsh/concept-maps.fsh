// The three terminology layers of the vignette. A WHO vaccination certificate names the vaccine by
// PreQual product identifier. The product's vaccine type comes from WHO's PreQual dataset (a local,
// provisional map until WHO publishes one). The type maps to a Lao schedule dose through the national
// map below, which is deliberately partial: that gap is the governance point of the workshop.

Alias: $PreQualVaccineType = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType
Alias: $PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds

Instance: PreQualTypeToLaoDose
InstanceOf: ConceptMap
Usage: #definition
Title: "WHO PreQual vaccine type to Lao PDR schedule dose"
Description: "The national map from a WHO PreQual vaccine type to the Lao schedule dose a dose of that type counts as, at the first dose of each series. A type with no target here (BCG) is not on the Lao schedule, so a clinician has to decide what a foreign dose of it means. The dose number of a later dose comes from the child's immunization history, not from this map."
* name = "PreQualTypeToLaoDose"
* status = #draft
* experimental = true
* date = "2026-10-31"
* publisher = "Nawitech Limited"
* purpose = "Lets a clinic app propose the Lao schedule dose for a vaccine type read from a foreign certificate, and makes visible where no such dose exists."
* sourceCanonical = "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualVaccineType"
* targetCanonical = Canonical(LaoEpiScheduleDoseVS)
* group[0].source = $PreQualVaccineType
* group[0].target = Canonical(LaoEpiScheduleDose)
// Hepatitis B: the Thai birth dose counts as the Lao birth dose. Within 24 hours or within 7 days is
// decided from the dates on the certificate by the app, so the map names the stricter one.
* group[0].element[0].code = #HepB
* group[0].element[0].display = "HepB"
* group[0].element[0].target[0].code = #HB0-24H
* group[0].element[0].target[0].display = "HB0 <24 Hours"
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[0].target[0].comment = "A dose on the day of birth. One to six days after birth is HB0-7D; the app decides from the dates."
// BCG is not on the Lao list: left explicitly unmatched so the gap is data, not an omission.
* group[0].element[1].code = #BCG
* group[0].element[1].display = "BCG"
* group[0].element[1].target[0].equivalence = #unmatched
* group[0].element[1].target[0].comment = "Not on the Lao PDR 2026 schedule. A foreign BCG dose needs a clinician's decision."
* group[0].element[2].code = #DTwPHepBHib
* group[0].element[2].display = "DTwP-HepB+Hib"
* group[0].element[2].target[0].code = #PENTA-1
* group[0].element[2].target[0].display = "Penta 1"
* group[0].element[2].target[0].equivalence = #equivalent
* group[0].element[3].code = #bOPV
* group[0].element[3].display = "bOPV"
* group[0].element[3].target[0].code = #OPV-1
* group[0].element[3].target[0].display = "OPV 1"
* group[0].element[3].target[0].equivalence = #equivalent
* group[0].element[4].code = #tOPV
* group[0].element[4].display = "tOPV"
* group[0].element[4].target[0].code = #OPV-1
* group[0].element[4].target[0].display = "OPV 1"
* group[0].element[4].target[0].equivalence = #wider
* group[0].element[5].code = #nOPV2
* group[0].element[5].display = "nOPV2"
* group[0].element[5].target[0].code = #OPV-1
* group[0].element[5].target[0].display = "OPV 1"
* group[0].element[5].target[0].equivalence = #inexact
* group[0].element[5].target[0].comment = "A campaign monovalent vaccine; counting it as a routine OPV dose is a programme decision."
* group[0].element[6].code = #IPV
* group[0].element[6].display = "IPV"
* group[0].element[6].target[0].code = #IPV-1
* group[0].element[6].target[0].display = "IPV 1"
* group[0].element[6].target[0].equivalence = #equivalent
* group[0].element[7].code = #sIPV
* group[0].element[7].display = "sIPV"
* group[0].element[7].target[0].code = #IPV-1
* group[0].element[7].target[0].display = "IPV 1"
* group[0].element[7].target[0].equivalence = #equivalent
* group[0].element[8].code = #PCV
* group[0].element[8].display = "PCV"
* group[0].element[8].target[0].code = #PCV-1
* group[0].element[8].target[0].display = "PCV 1"
* group[0].element[8].target[0].equivalence = #equivalent
* group[0].element[9].code = #R
* group[0].element[9].display = "R"
* group[0].element[9].target[0].code = #ROTA-1
* group[0].element[9].target[0].display = "Rota 1"
* group[0].element[9].target[0].equivalence = #equivalent
* group[0].element[9].target[0].comment = "Assumes the PreQual type R is rotavirus; to confirm with WHO."
* group[0].element[10].code = #MR
* group[0].element[10].display = "MR"
* group[0].element[10].target[0].code = #MR1-9-11M
* group[0].element[10].target[0].display = "MR1 9-11 Months"
* group[0].element[10].target[0].equivalence = #equivalent
* group[0].element[11].code = #JE
* group[0].element[11].display = "JE"
* group[0].element[11].target[0].code = #JE-9-11M
* group[0].element[11].target[0].display = "JE 9-11 months"
* group[0].element[11].target[0].equivalence = #equivalent

Instance: PreQualProductToTypeLocal
InstanceOf: ConceptMap
Usage: #definition
Title: "WHO PreQual product to vaccine type (local, provisional)"
Description: "The vaccine type of each PreQual product the demo uses, read off the WHO PreQual vaccine database by hand. Local and provisional: WHO has been asked to publish this map in the vaxprequal IG, and this instance is replaced by it when that lands."
* name = "PreQualProductToTypeLocal"
* status = #draft
* experimental = true
* date = "2026-10-31"
* publisher = "Nawitech Limited"
* sourceCanonical = "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualProductIds"
* targetCanonical = "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualVaccineType"
* group[0].source = $PreQualProductIds
* group[0].target = $PreQualVaccineType
* group[0].element[0].code = #a3K3X000006MiiXUAS
* group[0].element[0].display = "Hepatitis B Vaccine (rDNA) (Paediatric), FVP-P-132"
* group[0].element[0].target[0].code = #HepB
* group[0].element[0].target[0].display = "HepB"
* group[0].element[0].target[0].equivalence = #wider
* group[0].element[1].code = #a3K3X000006MiiCUAS
* group[0].element[1].display = "BCG Vaccine, FVP-P-73"
* group[0].element[1].target[0].code = #BCG
* group[0].element[1].target[0].display = "BCG"
* group[0].element[1].target[0].equivalence = #wider
