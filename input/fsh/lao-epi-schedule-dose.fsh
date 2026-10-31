// The Lao PDR Expanded Programme on Immunization schedule, one concept per dose as the Ministry's
// 2026 vaccination list gives it (Dr Theppouthone via Alvin Marcelo, 30 October 2026). It is a list
// of schedule doses, not a vaccine terminology: there is no Lao vaccine code system, so this is the
// national layer that WHO PreQual vaccine types map onto. Codes are stable ASCII; displays are the
// list's own English row text. The list has no BCG and no OPV birth dose; polio is OPV 1 to 3 and
// IPV 1 to 3. Open with the Ministry: whether BCG is absent from the schedule or only from the sheet,
// and whether three IPV doses is right.

CodeSystem: LaoEpiScheduleDose
Id: lao-epi-schedule-dose
Title: "Lao PDR EPI schedule dose"
Description: "The doses of the Lao PDR national immunization schedule, from the Ministry of Health 2026 vaccination list. One code per schedule dose, with the age band where the list gives one."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[0].code = #vaccineType
* ^property[0].description = "The vaccine the dose belongs to, as the list names it"
* ^property[0].type = #string
* ^property[1].code = #doseNumber
* ^property[1].description = "Dose number within the series, when the list gives one"
* ^property[1].type = #integer

* #HB0-24H "HB0 <24 Hours" "Hepatitis B birth dose, within 24 hours of birth"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "HB"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 0
* #HB0-7D "HB0 <7 days" "Hepatitis B birth dose, within 7 days of birth"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "HB"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 0
* #PENTA-1 "Penta 1"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "Penta"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #PENTA-2 "Penta 2"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "Penta"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #PENTA-3 "Penta 3"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "Penta"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 3
* #OPV-1 "OPV 1"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "OPV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #OPV-2 "OPV 2"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "OPV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #OPV-3 "OPV 3"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "OPV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 3
* #IPV-1 "IPV 1"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "IPV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #IPV-2 "IPV 2"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "IPV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #IPV-3 "IPV 3"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "IPV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 3
* #PCV-1 "PCV 1"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "PCV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #PCV-2 "PCV 2"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "PCV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #PCV-3 "PCV 3"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "PCV"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 3
* #ROTA-1 "Rota 1"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "Rota"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #ROTA-2 "Rota 2"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "Rota"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #ROTA-3 "Rota 3"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "Rota"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 3
* #MR1-9-11M "MR1 9-11 Months" "First measles-rubella dose, given at 9 to 11 months"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "MR"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #MR1-12-59M "MR1 12-59 Months" "First measles-rubella dose, caught up at 12 to 59 months"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "MR"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #MR2-12-18M "MR2 12-18 Months" "Second measles-rubella dose, given at 12 to 18 months"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "MR"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #MR2-19-59M "MR2 19-59 Months" "Second measles-rubella dose, caught up at 19 to 59 months"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "MR"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 2
* #JE-9-11M "JE 9-11 months" "Japanese encephalitis, given at 9 to 11 months"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "JE"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1
* #JE-OVER-1Y "JE over 1 year" "Japanese encephalitis, caught up after the first birthday"
  * ^property[0].code = #vaccineType
  * ^property[0].valueString = "JE"
  * ^property[1].code = #doseNumber
  * ^property[1].valueInteger = 1

ValueSet: LaoEpiScheduleDoseVS
Id: lao-epi-schedule-dose
Title: "Lao PDR EPI schedule doses"
Description: "Every dose of the Lao PDR national immunization schedule."
* ^status = #draft
* ^experimental = true
* include codes from system LaoEpiScheduleDose
