Instance: LabResult
InstanceOf: Bundle
Usage: #example
Title: "Lab Result Bundle"
Description: "Represents a Lab Result Bundle."
* type = #transaction
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabResultTaskExample"
* entry[=].resource = HIVLabResultTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabResultTaskExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultViralLoadLogExample"
* entry[=].resource = HIVTestResultViralLoadLogExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultViralLoadLogExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultAbsoluteDecimalExample"
* entry[=].resource = HIVTestResultAbsoluteDecimalExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultAbsoluteDecimalExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/ActivityDefinition/LabOrderTaskActivityExample"
* entry[=].resource = LabOrderTaskActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ActivityDefinition/LabOrderTaskActivityExample"