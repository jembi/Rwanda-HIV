Instance: LabOrder
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Order Bundle Example"
Description: "HIV Submit Lab Order Bundle Example"
* type = #transaction
* entry[+].fullUrl = "Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIVPatientExample"

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

* entry[+].fullUrl = "Organization/RequestingOrganizationExample"
* entry[=].resource = RequestingOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/RequestingOrganizationExample"

* entry[+].fullUrl = "Organization/PerformingOrganizationExample"
* entry[=].resource = PerformingOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/PerformingOrganizationExample"

* entry[+].fullUrl = "Observation/PatientPregnantExample"
* entry[=].resource = PatientPregnantExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/PatientPregnantExample"

* entry[+].fullUrl = "Observation/HIVPatientIsNewExample"
* entry[=].resource = HIVPatientIsNewExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVPatientIsNewExample"

* entry[+].fullUrl = "Observation/BreastfeedingExample"
* entry[=].resource = BreastfeedingExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BreastfeedingExample"

* entry[+].fullUrl = "CarePlan/ARVTreatmentRegimenChangedExample"
* entry[=].resource = ARVTreatmentRegimenChangedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentRegimenChangedExample"

* entry[+].fullUrl = "Observation/ReasonForHIVTestingExample"
* entry[=].resource = ReasonForHIVTestingExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ReasonForHIVTestingExample"

* entry[+].fullUrl = "MedicationRequest/ARVRegimenMedicationRequestRegimenChangedExample"
* entry[=].resource = ARVRegimenMedicationRequestRegimenChangedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/ARVRegimenMedicationRequestRegimenChangedExample"

* entry[+].fullUrl = "Observation/ARTRegimenSwitchedOrSubstitutedExample"
* entry[=].resource = ARTRegimenSwitchedOrSubstitutedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARTRegimenSwitchedOrSubstitutedExample"

* entry[+].fullUrl = "Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"

* entry[+].fullUrl = "SpecimenDefinition/SpecimenConservationExample"
* entry[=].resource = SpecimenConservationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "SpecimenDefinition/SpecimenConservationExample"

* entry[+].fullUrl = "ActivityDefinition/LabOrderTaskActivityExample"
* entry[=].resource = LabOrderTaskActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ActivityDefinition/LabOrderTaskActivityExample"

* entry[+].fullUrl = "Consent/ReceiveSMSMessagesExample"
* entry[=].resource = ReceiveSMSMessagesExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent/ReceiveSMSMessagesExample"

* entry[+].fullUrl = "Observation/ARVAdherenceExample"
* entry[=].resource = ARVAdherenceExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARVAdherenceExample"

* entry[+].fullUrl = "Observation/RepeatHIVTestResultExample"
* entry[=].resource = RepeatHIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RepeatHIVTestResultExample"

* entry[+].fullUrl = "Observation/SuspendTreatmentHIVTestResultExample"
* entry[=].resource = SuspendTreatmentHIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/SuspendTreatmentHIVTestResultExample"

* entry[+].fullUrl = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"

* entry[+].fullUrl = "Practitioner/ResultsInterpreterExample"
* entry[=].resource = ResultsInterpreterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/ResultsInterpreterExample"

* entry[+].fullUrl = "Device/TestingPlatformExample"
* entry[=].resource = TestingPlatformExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/TestingPlatformExample"

* entry[+].fullUrl = "Transport/SampleDisptachedToLabTaskExample"
* entry[=].resource = SampleDisptachedToLabTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Transport/SampleDisptachedToLabTaskExample"

* entry[+].fullUrl = "Transport/ResultDisptachedTaskExample"
* entry[=].resource = ResultDisptachedTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Transport/ResultDisptachedTaskExample"

* entry[+].fullUrl = "Observation/HIVTestResultAbsoluteDecimalExample"
* entry[=].resource = HIVTestResultAbsoluteDecimalExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultAbsoluteDecimalExample"

* entry[+].fullUrl = "Observation/HIVTestResultViralLoadLogExample"
* entry[=].resource = HIVTestResultViralLoadLogExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultViralLoadLogExample"

* entry[+].fullUrl = "Organization/FundingOrganizationExample"
* entry[=].resource = FundingOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/FundingOrganizationExample"

* entry[+].fullUrl = "Organization/ImplementingPartnerOrganizationExample"
* entry[=].resource = ImplementingPartnerOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/ImplementingPartnerOrganizationExample"

* entry[+].fullUrl = "Location/TransportRequestedLocationExample"
* entry[=].resource = TransportRequestedLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TransportRequestedLocationExample"

* entry[+].fullUrl = "Location/TransportCurrentLocationExample"
* entry[=].resource = TransportCurrentLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TransportCurrentLocationExample"