Instance: VLSMS-VL-Request-Transactional
InstanceOf: Bundle
Usage: #example
Title: "VLSMS VL Request Bundle"
Description: "Represents the VLSMS VL Request Bundle (Transactional Type)."
* type = #transaction

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIVPatientExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/VLSpecimenExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/RequestingOrganizationExample"
* entry[=].resource = RequestingOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/RequestingOrganizationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/PerformingOrganizationExample"
* entry[=].resource = PerformingOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/PerformingOrganizationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/HIVServiceRequestExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/RequestingPractitionerExample"
* entry[=].resource = RequestingPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/RequestingPractitionerExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/PerformingPractitionerExample"
* entry[=].resource = PerformingPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PerformingPractitionerExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ReasonForHIVTestingExample"
* entry[=].resource = ReasonForHIVTestingExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ReasonForHIVTestingExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/PatientPregnantExample"
* entry[=].resource = PatientPregnantExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/PatientPregnantExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVPatientIsNewExample"
* entry[=].resource = HIVPatientIsNewExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVPatientIsNewExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/BreastfeedingExample"
* entry[=].resource = BreastfeedingExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BreastfeedingExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/CarePlan/ARVTreatmentRegimenChangedExample"
* entry[=].resource = ARVTreatmentRegimenChangedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentRegimenChangedExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/CarePlan/ARVTreatmentInitiatedExample"
* entry[=].resource = ARVTreatmentInitiatedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentInitiatedExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/MedicationRequest/ARVRegimenMedicationRequestRegimenChangedExample"
* entry[=].resource = ARVRegimenMedicationRequestRegimenChangedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/ARVRegimenMedicationRequestRegimenChangedExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/MedicationRequest/ARVRegimenMedicationRequestARVExample"
* entry[=].resource = ARVRegimenMedicationRequestARVExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/ARVRegimenMedicationRequestARVExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/SpecimenDefinition/SpecimenConservationExample"
* entry[=].resource = SpecimenConservationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "SpecimenDefinition/SpecimenConservationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabResultTaskExample"
* entry[=].resource = HIVLabResultTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabResultTaskExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/ActivityDefinition/LabOrderTaskActivityExample"
* entry[=].resource = LabOrderTaskActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ActivityDefinition/LabOrderTaskActivityExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Transport/SampleDispatchedToLabExample"
* entry[=].resource = SampleDispatchedToLabExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Transport/SampleDispatchedToLabExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Transport/ResultDispatchedToRequestingFacilityExample"
* entry[=].resource = ResultDispatchedToRequestingFacilityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Transport/ResultDispatchedToRequestingFacilityExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Location/TransportRequestedLocationExample"
* entry[=].resource = TransportRequestedLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TransportRequestedLocationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Location/TransportCurrentLocationExample"
* entry[=].resource = TransportCurrentLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TransportCurrentLocationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/ResultsInterpreterExample"
* entry[=].resource = ResultsInterpreterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/ResultsInterpreterExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Consent/ReceiveSMSMessagesExample"
* entry[=].resource = ReceiveSMSMessagesExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent/ReceiveSMSMessagesExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARVAdherenceExample"
* entry[=].resource = ARVAdherenceExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARVAdherenceExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/RepeatHIVTestResultExample"
* entry[=].resource = RepeatHIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RepeatHIVTestResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/SuspendTreatmentHIVTestResultExample"
* entry[=].resource = SuspendTreatmentHIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/SuspendTreatmentHIVTestResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Device/TestingPlatformExample"
* entry[=].resource = TestingPlatformExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/TestingPlatformExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultViralLoadLogExample"
* entry[=].resource = HIVTestResultViralLoadLogExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultViralLoadLogExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultAbsoluteDecimalExample"
* entry[=].resource = HIVTestResultAbsoluteDecimalExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultAbsoluteDecimalExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/FundingOrganizationExample"
* entry[=].resource = FundingOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/FundingOrganizationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/ImplementingPartnerOrganizationExample"
* entry[=].resource = ImplementingPartnerOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/ImplementingPartnerOrganizationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARTInitiatedExample"
* entry[=].resource = ARTInitiatedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARTInitiatedExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARVRegimenChangeExample"
* entry[=].resource = ARVRegimenChangeExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARVRegimenChangeExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARTRegimenSwitchedOrSubstitutedExample"
* entry[=].resource = ARTRegimenSwitchedOrSubstitutedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARTRegimenSwitchedOrSubstitutedExample"

Instance: VLSMS-VL-Request-Document
InstanceOf: Bundle
Usage: #example
Title: "VLSMS VL Request Bundle"
Description: "Represents the VLSMS VL Request Bundle (Document Type)."
* type = #document
* identifier[+].value = "document-1"
* identifier[=].system = "http://openhie.org/fhir/rwanda-hiv/identifier/bundle-id"
* timestamp = "2023-08-22T13:28:17-05:00"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Composition/VLCompositionExample"
* entry[=].resource = VLCompositionExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/HIVOrganizationExample"
* entry[=].resource = HIVOrganizationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/ObservationPerformingPractitionerExample"
* entry[=].resource = ObservationPerformingPractitionerExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/RequestingOrganizationExample"
* entry[=].resource = RequestingOrganizationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/PerformingOrganizationExample"
* entry[=].resource = PerformingOrganizationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/RequestingPractitionerExample"
* entry[=].resource = RequestingPractitionerExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/PerformingPractitionerExample"
* entry[=].resource = PerformingPractitionerExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ReasonForHIVTestingExample"
* entry[=].resource = ReasonForHIVTestingExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/PatientPregnantExample"
* entry[=].resource = PatientPregnantExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVPatientIsNewExample"
* entry[=].resource = HIVPatientIsNewExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/BreastfeedingExample"
* entry[=].resource = BreastfeedingExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/CarePlan/ARVTreatmentRegimenChangedExample"
* entry[=].resource = ARVTreatmentRegimenChangedExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/CarePlan/ARVTreatmentInitiatedExample"
* entry[=].resource = ARVTreatmentInitiatedExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/MedicationRequest/ARVRegimenMedicationRequestRegimenChangedExample"
* entry[=].resource = ARVRegimenMedicationRequestRegimenChangedExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/MedicationRequest/ARVRegimenMedicationRequestARVExample"
* entry[=].resource = ARVRegimenMedicationRequestARVExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/SpecimenDefinition/SpecimenConservationExample"
* entry[=].resource = SpecimenConservationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabResultTaskExample"
* entry[=].resource = HIVLabResultTaskExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/ActivityDefinition/LabOrderTaskActivityExample"
* entry[=].resource = LabOrderTaskActivityExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Transport/SampleDispatchedToLabExample"
* entry[=].resource = SampleDispatchedToLabExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Transport/ResultDispatchedToRequestingFacilityExample"
* entry[=].resource = ResultDispatchedToRequestingFacilityExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Location/TransportRequestedLocationExample"
* entry[=].resource = TransportRequestedLocationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Location/TransportCurrentLocationExample"
* entry[=].resource = TransportCurrentLocationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/ResultsInterpreterExample"
* entry[=].resource = ResultsInterpreterExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Consent/ReceiveSMSMessagesExample"
* entry[=].resource = ReceiveSMSMessagesExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARVAdherenceExample"
* entry[=].resource = ARVAdherenceExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/RepeatHIVTestResultExample"
* entry[=].resource = RepeatHIVTestResultExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/SuspendTreatmentHIVTestResultExample"
* entry[=].resource = SuspendTreatmentHIVTestResultExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Device/TestingPlatformExample"
* entry[=].resource = TestingPlatformExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultViralLoadLogExample"
* entry[=].resource = HIVTestResultViralLoadLogExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultAbsoluteDecimalExample"
* entry[=].resource = HIVTestResultAbsoluteDecimalExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/FundingOrganizationExample"
* entry[=].resource = FundingOrganizationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/ImplementingPartnerOrganizationExample"
* entry[=].resource = ImplementingPartnerOrganizationExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARTInitiatedExample"
* entry[=].resource = ARTInitiatedExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARVRegimenChangeExample"
* entry[=].resource = ARVRegimenChangeExample

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/ARTRegimenSwitchedOrSubstitutedExample"
* entry[=].resource = ARTRegimenSwitchedOrSubstitutedExample