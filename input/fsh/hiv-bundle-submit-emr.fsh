Instance: EMR
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit EMR Bundle Example"
Description: "HIV Submit EMR Bundle Example"
* type = #transaction

* entry[+].fullUrl = "Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIVPatientExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/HIVDiagnosisExample"

* entry[+].fullUrl = "Observation/DateHIVTestDoneExample"
* entry[=].resource = DateHIVTestDoneExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/DateHIVTestDoneExample"

* entry[+].fullUrl = "EpisodeOfCare/HIVEpisodeOfCareExample"
* entry[=].resource = HIVEpisodeOfCareExample
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/HIVEpisodeOfCareExample"

* entry[+].fullUrl = "Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"

* entry[+].fullUrl = "CarePlan/ARVTreatmentExample"
* entry[=].resource = ARVTreatmentExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentExample"