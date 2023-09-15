Instance: LabResult
InstanceOf: Bundle
Usage: #example
Title: "Lab Result Bundle"
Description: "Represents a Lab Result Bundle."
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabResultTaskExample"
* entry[=].resource = HIVLabResultTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabResultTaskExample"

* entry[+].fullUrl = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"

* entry[+].fullUrl = "Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"

* entry[+].fullUrl = "Observation/HIVTestResultViralLoadLogExample"
* entry[=].resource = HIVTestResultViralLoadLogExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultViralLoadLogExample"

* entry[+].fullUrl = "Observation/HIVTestResultAbsoluteDecimalExample"
* entry[=].resource = HIVTestResultAbsoluteDecimalExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultAbsoluteDecimalExample"

* entry[+].fullUrl = "ActivityDefinition/LabOrderTaskActivityExample"
* entry[=].resource = LabOrderTaskActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ActivityDefinition/LabOrderTaskActivityExample"