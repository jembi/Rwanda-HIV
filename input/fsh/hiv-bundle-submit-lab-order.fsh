Instance: LabOrder
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Order Bundle Example"
Description: "HIV Submit Lab Order Bundle Example"
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabOrderTaskExample"
* entry[=].resource = HIVLabOrderTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderTaskExample"

* entry[+].fullUrl = "ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/HIVServiceRequestExample"

* entry[+].fullUrl = "Practitioner/RequestingPractitionerExample"
* entry[=].resource = RequestingPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/RequestingPractitionerExample"

* entry[+].fullUrl = "Practitioner/PerformingPractitionerExample"
* entry[=].resource = PerformingPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PerformingPractitionerExample"

* entry[+].fullUrl = "Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/VLSpecimenExample"

* entry[+].fullUrl = "ActivityDefinition/LabOrderTaskActivityExample"
* entry[=].resource = LabOrderTaskActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ActivityDefinition/LabOrderTaskActivityExample"

* entry[+].fullUrl = "SpecimenDefinition/SpecimenConservationExample"
* entry[=].resource = SpecimenConservationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "SpecimenDefinition/SpecimenConservationExample"

* entry[+].fullUrl = "Transport/SampleDispatchedToLabExample"
* entry[=].resource = SampleDispatchedToLabExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Transport/SampleDispatchedToLabExample"