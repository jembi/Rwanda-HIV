Instance: LabCancellation
InstanceOf: Bundle
Usage: #example
Title: "Lab Order Cancellation Bundle"
Description: "Represents a Lab Order Cancellation Bundle."
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabOrderCancellationTaskExample"
* entry[=].resource = HIVLabOrderCancellationTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderCancellationTaskExample"