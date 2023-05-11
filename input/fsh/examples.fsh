Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Organization Example"
Description: "Organization example"
* identifier[XX].value = "facility1"
* identifier[XX].system = "http://openhie.org/fhir/rwanda-hiv/identifier/hiv-organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
* name = "HIV Test Services Health Facility"

Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "Patient example"
Description: "Patient example"
* name.use = #official
* name.family = "Smith"
* name.given[0] = "Jane"
* name.given[1] = "Maria"
* telecom[0].system = #phone
* telecom[0].value = "+27821234567"
* telecom[1].system = #email
* telecom[1].value = "someone@example.com"
* gender = #female
* birthDate = "1990-12-12"
* managingOrganization = Reference(HIVOrganizationExample)
* extension[PAM].valueInteger = 388
* extension[PAY].valueInteger = 32

Instance: HIVPatientIsNewExample
InstanceOf: HIVPatientIsNew
Usage: #example
Title: "Patient Is New example"
Description: "Patient Is New example"
* status = #final
* code = $SCT#769681006
* code.text = "New Patient Indication"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* valueBoolean = true
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: PatientPregnantExample
InstanceOf: PatientPregnancyStatus
Usage: #example
Title: "Patient Pregnant example"
Description: "Patient Pregnant example"
* status = #final
* code = $SCT#250421003
* code.text = "Pregnancy status"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $SCT#250423000
* valueCodeableConcept.text = "Pregnancy test result"
* valueCodeableConcept.coding.display = "Pregnancy test positive"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter example" 
Description: "Target Facility Encounter example"
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(HIVPatientExample)
* actualPeriod.start = "2022-12-01"
* actualPeriod.end = "2023-01-20"

Instance: VLSpecimenExample
InstanceOf: VLSpecimen
Usage: #example
Title: "Viral Load Specimen example"
Description: "Viral Load Specimen example"
* extension[SampleReordered].valueBoolean = false
* identifier[appSampleCode].value = "abc123"
* identifier[appSampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/app-sample-code" (exactly)
* identifier[appSampleCode].type.coding.code = #USID
* identifier[appSampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[appSampleCode].type.coding.display = "Unique Specimen ID"
* identifier[appSampleCode].type.text = "App sample identifier"
* identifier[remoteSampleCode].value = "def456"
* identifier[remoteSampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/remote-sample-code" (exactly)
* identifier[remoteSampleCode].type.coding.code = #USID
* identifier[remoteSampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[remoteSampleCode].type.coding.display = "Unique Specimen ID"
* identifier[remoteSampleCode].type.text = "Remote sample identifier"
* identifier[sampleCode].value = "ghi789"
* identifier[sampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/sample-code" (exactly)
* identifier[sampleCode].type.coding.code = #USID
* identifier[sampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[sampleCode].type.coding.display = "Unique Specimen ID"
* identifier[sampleCode].type.text = "Sample identifier"
* type = $SCT#119361006
* type.text = "Specimen Type"
* type.coding.display = "Plasma specimen (specimen)"
* subject = Reference(HIVPatientExample)
* collection.collectedDateTime = "2022-07-28"
* receivedTime = "2022-07-28"
* processing.timeDateTime = "2022-07-28"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: RequestingPractitionerExample
InstanceOf: HIVPractitioner
Usage: #example
Title: "Practitioner example"
Description: "Practitioner example"
* extension[ClinicianUserIndex].valueInteger = 2
* name.given = "James"
* name.family = "Smith"
* telecom.system = #phone
* telecom.value = "27537652509"

Instance: PerformingPractitionerExample
InstanceOf: HIVPractitioner
Usage: #example
Title: "Practitioner example"
Description: "Practitioner example"
* extension[ClinicianUserIndex].valueInteger = 6
* name.given = "Amy"
* name.family = "White"
* telecom.system = #phone
* telecom.value = "27537687534"

Instance: HIVServiceRequestExample
InstanceOf: HIVServiceRequest
Usage: #example
Title: "HIV Lab Order example"
Description: "HIV Lab Order example"
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://openhie.org/fhir/rwanda-hiv/identifier/lab-order-identifier"
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer Identifier"
* identifier[PLAC].type.text = "HIV lab service request identifier"
* status = #completed
* intent = #order
* code.concept = $LNC#25836-8
* code.concept.text = "Test Type"
* code.concept.coding.display = "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(RequestingPractitionerExample)
* performer = Reference(PerformingPractitionerExample)
* reason.reference = Reference(ReasonForHIVTestingExample)
* specimen = Reference(VLSpecimenExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabOrderTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "Lab Order example"
Description: "Lab Order example"
* extension[ResultStatusIndex].valueInteger = 1
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn = Reference(HIVServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2022-07-28"
* lastModified = "2022-07-28"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabResultTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "Lab Result Task example"
Description: "Lab Result Task example"
* extension[ResultStatusIndex].valueInteger = 4
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* identifier[FILL].type.text = "Lab order number"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn = Reference(HIVServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"
* output.type = $SCT#398579006
* output.type.text = "Viral Load Result"
* output.type.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* output.valueReference = Reference(HIVLabResultsDiagnosticReportExample)

Instance: HIVLabOrderCancellationTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV Lab Order Cancellation  example"
Description: "HIV Lab Order Cancellation Task example"
* extension[ResultStatusIndex].valueInteger = 2
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn = Reference(HIVServiceRequestExample)
* status = #cancelled
* statusReason.concept = $SCT#281264009
* statusReason.concept.text = "Reason For Canceling/Rejecting the Lab Order"
* statusReason.concept.coding.display = "Inappropriate bottle or container for sample (finding)"
* intent = #order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabOrderRejectionTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV Lab Order Rejection  example"
Description: "HIV Lab Order Rejection Task example"
* extension[ResultStatusIndex].valueInteger = 3
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn = Reference(HIVServiceRequestExample)
* status = #rejected
* statusReason.concept = $SCT#123840003
* statusReason.concept.text = "Reason For Canceling/Rejecting the Lab Order"
* statusReason.concept.coding.display = "Sample contaminated"
* intent = #order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabResultsDiagnosticReportExample
InstanceOf: HIVDiagnosticReport
Usage: #example
Title: "HIV Lab Results Diagnostic Report example"
Description: "HIV Lab Results Diagnostic Report example"
* extension[TestedByIndex].valueInteger = 7
* basedOn = Reference(HIVServiceRequestExample)
* status = #final
* code = $LNC#25836-8 
* code.text = "Test Type"
* code.coding.display = "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* performer = Reference(PerformingPractitionerExample)
* result = Reference(HIVTestResultExample)
* resultsInterpreter = Reference(ResultsInterpreterExample)
* conclusion = "Some conclusion text"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: ResultsInterpreterExample
InstanceOf: HIVPractitioner
Usage: #example
Title: "Results Interpreter example"
Description: "Results interpreter example"
* extension[ClinicianUserIndex].valueInteger = 11
* name.given = "Jhon"
* name.family = "Smith"
* telecom.system = #phone
* telecom.value = "27539887534"

Instance: HIVTestResultExample
InstanceOf: HIVTestResult
Usage: #example
Title: "Viral Load Suppression example" 
Description: "Viral Load Suppression example"
* extension[ResultEnteredManually].valueBoolean = false
* status = #final
* code = $SCT#398579006
* code.text = "Viral Load Result"
* code.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueInteger = 1001
* interpretation = $SCT#19032002
* interpretation.text = "Viral Load Suppression Status"
* interpretation.coding.display = "Uncontrolled"
* note.text = "Viral load not suppressed"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(HIVOrganizationExample)

Instance: ARVTreatmentExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV CarePlan example"
Description: "ARV CarePlan example"
* identifier[PLAC].value = "UAN000123"
* identifier[PLAC].system = "http://openhie.org/fhir/rwanda-hiv/identifier/uan"
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer identifier"
* identifier[PLAC].type.text = "Unique ART number"
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* period.end = "2022-12-01"
* activity.plannedActivityReference = Reference(ARVRegimenMedicationRequestExample)
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: SpecimenConservationExample
InstanceOf: SpecimenConservation
Usage: #example
Title: "Specimen Conservation"
Description: "Specimen conservation information."
* status = #active
* typeTested.type = $SCT#119361006
* typeTested.preference = #preferred
* typeTested.handling.temperatureRange.low.value = 5
* typeTested.handling.temperatureRange.high.value = 10
* typeTested.handling.maxDuration.value = 20
* typeTested.handling.instruction = "Comments regarding the specimen conservation."

Instance: ARVAdherenceExample
InstanceOf: ARVAdherence
Usage: #example
Title: "Patient's Adherence to ARV Treatment"
Description: "ARV adherence."
* status = #final
* code = $SCT#386091000
* code.text = "Treatment compliance"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* valueCodeableConcept = $LNC#LA6763-2
* valueCodeableConcept.text = "ARV adherence"
* valueCodeableConcept.coding.display = "Good = 95% adherence"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: BreastfeedingExample
InstanceOf: Breastfeeding
Usage: #example
Title: "Breastfeeding Patient"
Description: "Breastfeeding patient."
* status = #final
* code = $SCT#413712001
* code.text = "Breastfeeding"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* valueBoolean = true
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: LabOrderTaskActivityExample
InstanceOf: LabOrderTaskActivity
Usage: #example
Title: "HIV Lab Order Task Activity"
Description: "HIV lab order task activity."
* extension[RevisedBy].valueInteger = 2
* url.value = "http://openhie.org/fhir/rwanda-hiv/hiv-lab-task-activity-defintion"
* status = #active
* reviewer.name = "Someone"
* lastReviewDate = "2023-01-01"
* editor.name = "Someone"
* date = "2023-01-01"
* endorser.name = "Someone"
* approvalDate = "2023-01-01"
* specimenRequirement = Canonical(SpecimenConservationExample)

Instance: SampleDisptachedToLabTaskExample
InstanceOf: SampleDisptachedToLabTask
Usage: #example
Title: "Sample Dispatched to Lab Task"
Description: "Sample dispatched to lab task."
* status = #in-progress
* intent = #order
* authoredOn = "2022-07-28"
* completionTime = "2022-07-28"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: PerformingOrganizationExample
InstanceOf: PerformingOrganization
Usage: #example
Title: "Performing Organization"
Description: "Organization responsible for carrying out the HIV testing services."
* extension[ProvinceIndex].valueInteger = 4
* extension[DistrictIndex].valueInteger = 9
* identifier[OrgID].value = "laboratory1"
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id"
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Performing Organization identifier"
* name = "A Laboratory name"
* contact.address[+].state = "A province name"
* contact.address[=].district = "A district name"

Instance: RequestingOrganizationExample
InstanceOf: RequestingOrganization
Usage: #example
Title: "Requesting Organization"
Description: "Organization requesting for HIV testing services."
* identifier[OrgID].value = "facility5"
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id"
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Requesting Organization identifier"
* name = "A facility name"

Instance: FundingOrganizationExample
InstanceOf: FundingOrganization
Usage: #example
Title: "Funding Organization"
Description: "Funding organization."
* extension[FundingOrganizationIndex].valueInteger = 1
* identifier[OrgID].value = "funder1"
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id"
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Funding Organization identifier"
* name = "A funding organization name"

Instance: ImplementingPartnerOrganizationExample
InstanceOf: ImplementingPartnerOrganization
Usage: #example
Title: "Implementing Partner Organization"
Description: "Implementing partner organization."
* extension[ImplementingPartnerOrganizationIndex].valueInteger = 14
* identifier[OrgID].value = "implementing-partner-org1"
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id"
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Implementing Partner Organization identifier"
* name = "An implementing partner organization name"

Instance: DoNotReceiveSMSMessagesExample
InstanceOf: ReceiveSMSMessages
Usage: #example
Title: "Do Not Receive SMS Messages"
Description: "Indication that a patient does not consent to receiving SMS messages."
* status = #inactive
* decision = #deny
* subject = Reference(HIVPatientExample)
* category.coding.code = #59284-0
* category.coding.system = "http://loinc.org"
* regulatoryBasis = $SCT#398227009
* regulatoryBasis.coding.display = "Inadequate consent"
* regulatoryBasis.text = "Consent policy"

Instance: ReceiveSMSMessagesExample
InstanceOf: ReceiveSMSMessages
Usage: #example
Title: "Receive SMS Messages"
Description: "Indication that a patient does consent to receiving SMS messages."
* status = #active
* decision = #permit
* subject = Reference(HIVPatientExample)
* category.coding.code = #59284-0
* category.coding.system = "http://loinc.org"
* regulatoryBasis = $SCT#699237001
* regulatoryBasis.coding.display = "Consent given for communication by short message service text messaging"
* regulatoryBasis.text = "Consent policy"

Instance: RepeatHIVTestResultExample
InstanceOf: RepeatHIVTestResult
Usage: #example
Title: "Repeat Viral Load Suppression example" 
Description: "Repeat Viral Load Suppression example"
* status = #final
* code = $SCT#398579006
* code.text = "Viral Load Result"
* code.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueInteger = 1001
* note.text = "Viral load not suppressed"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(HIVOrganizationExample)

Instance: ResultDisptachedTaskExample
InstanceOf: ResultDisptachedTask
Usage: #example
Title: "Result Dispatched"
Description: "Result Dispatched"
* status = #in-progress
* intent = #order
* authoredOn = "2022-07-28"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: SuspendTreatmentHIVTestResultExample
InstanceOf: SuspendTreatmentHIVTestResult
Usage: #example
Title: "Suspend Treatment Lab Results"
Description: "Suspend treatment lab results."
* status = #final
* code = $SCT#398579006
* code.text = "Viral Load Result"
* code.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueInteger = 1001
* note.text = "Viral load not suppressed"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(HIVOrganizationExample)

Instance: TestingPlatformExample
InstanceOf: TestingPlatform
Usage: #example
Title: "Testing Platform"
Description: "The device platform used for testing."
* manufacturer = "My testing platform"
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVTestResultViralLoadLogExample
InstanceOf: HIVTestResultViralLoadLog
Usage: #example
Title: "Viral Load Log"
Description: "Viral Load Log"
* status = #final
* code = $SCT#398579006
* code.text = "Viral Load Result"
* code.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 2.55
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(HIVOrganizationExample)
* derivedFrom = Reference(HIVTestResultExample)

Instance: HIVTestResultAbsoluteDecimalExample
InstanceOf: HIVTestResultAbsoluteDecimal
Usage: #example
Title: "Viral Load Result Absolute Decimal"
Description: "Viral load result absolute decimal"
* status = #final
* code = $SCT#398579006
* code.text = "Viral Load Result"
* code.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 2.55
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(HIVOrganizationExample)
* derivedFrom = Reference(HIVTestResultExample)

Instance: ARVRegimenMedicationRequestRegimenChangedExample
InstanceOf: ARVRegimenMedicationRequest
Usage: #example
Title: "ARV Regimen Medication Request: Regimen Changed"
Description: "ARV Regimen Medication Request: Regimen Changed."
* status = #completed
* intent = #order
* medication[0].concept = $SCT#427314002
* medication[0].concept.coding.display = "Antiviral therapy"
* medication[0].concept.text = "ARV regimen"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* reason.reference = Reference(ARTRegimenSwitchedOrSubstitutedExample)

Instance: ReasonForHIVTestingExample
InstanceOf: ReasonForHIVTesting
Usage: #example
Title: "Reason for HIV testing"
Description: "The reason for HIV testing."
* status = #final
* code = $SCT#165813002
* code.text = "HIV Test"
* code.coding.display = "Human immunodeficiency virus antibody test"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $SCT#2528003
* valueCodeableConcept.text = "Reason for testing"
* valueCodeableConcept.coding.display = "Viremia"
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: ARVRegimenChangeExample
InstanceOf: ARVRegimenChange
Usage: #example
Title: "ARV Regimen Change"
Description: "ARV regimen change."
* status = #final
* code = $SCT#182838006
* code.text = "ARV Regimen Change"
* code.coding.display = "Change of medication"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $SCT#271737000
* valueCodeableConcept.text = "Regimen change reason"
* valueCodeableConcept.coding.display = "Anemia"
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"
* derivedFrom = Reference(ARTRegimenSwitchedOrSubstitutedExample)

Instance: ARVRegimenMedicationRequestInitiatedARTExample
InstanceOf: ARVRegimenMedicationRequest
Usage: #example
Title: "ARV Regimen Medication Request: Initiated ART"
Description: "ARV Regimen Medication Request: Initiated ART"
* status = #completed
* intent = #order
* medication[0].concept = $SCT#427314002
* medication[0].concept.coding.display = "Antiviral therapy"
* medication[0].concept.text = "ARV regimen"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* reason.reference = Reference(ARTInitiatedExample)

Instance: ARTInitiatedExample
InstanceOf: ARTInitiated
Usage: #example
Title: "ART Initiated"
Description: "ART initiated."
* status = #final
* code = $LNC#47241-5
* code.text = "ART initiated"
* code.coding.display = "Date determined medically eligible and ready to start HIV treatment"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: ARTRegimenSwitchedOrSubstitutedExample
InstanceOf: ARTRegimenSwitchedOrSubstituted
Usage: #example
Title: "ART Regimen Switched Or Substituted"
Description: "The ARV regimen has been switched to a new ARV regimen or has been substituted by another ARV regimen."
* status = #final
* code = $SCT#182838006
* code.text = "ARV Regimen Change"
* code.coding.display = "Change of medication"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueBoolean = true
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"