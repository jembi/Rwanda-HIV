Instance: LabRejection
InstanceOf: Bundle
Usage: #example
Title: "Lab Order Rejection Bundle"
Description: "Represents a Lab Rejection Bundle."
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabOrderRejectionTaskExample"
* entry[=].resource = HIVLabOrderRejectionTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderRejectionTaskExample"

* entry[+].fullUrl = "Transport/SampleDispatchedToLabExample"
* entry[=].resource = SampleDispatchedToLabExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Transport/SampleDispatchedToLabExample"