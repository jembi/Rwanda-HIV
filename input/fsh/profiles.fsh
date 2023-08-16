Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "HIV Patient"
Description: "Is used to document demographics and other administrative information about a HIV individual receiving care or other health-related services."
* name.given 1..* MS
* name.family 0..1 MS
* telecom 0..* MS
* gender 1..1
* birthDate 0..1 MS
* managingOrganization 1..1
* extension contains PatientAgeInMonths named PAM 0..1 MS
* extension contains PatientAgeInYears named PAY 0..1 MS

Extension: PatientAgeInMonths
Id: patient-age-months
Title: "Patient Age In Months"
Description: "Age of the patient calculated in months."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Patient"

Extension: PatientAgeInYears
Id: patient-age-years
Title: "Patient Age In Years"
Description: "Age of the patient calculated in years."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Patient"

Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV Organization"
Description: "Organization providing HIV Testing Services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/rwanda-hiv/identifier/hiv-organization" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
* name 1..1

Profile: HIVPatientIsNew
Parent: Observation
Id: hiv-patient-is-new
Title: "HIV Patient Is New Observation"
Description: "Represents whether this is a new patient."
* status = #final
* code = $SCT#769681006
* code.text = "New Patient Indication"
* subject 1..1
* encounter 1..1
* valueBoolean 1..1
* note 0..* MS

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status 1..1
* class 1..1
* subject 1..1
* actualPeriod 1..1

Profile: VLSpecimen
Parent: Specimen
Id: viral-load-specimen
Title: "Viral Load Specimen"
Description: "Represents the VL test sample that was collected for the service request."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    appSampleCode 1..1 and
    remoteSampleCode 1..1 and
    sampleCode 1..1
* identifier[appSampleCode].value 1..1
* identifier[appSampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/app-sample-code" (exactly)
* identifier[appSampleCode].type.coding.code = #USID
* identifier[appSampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[appSampleCode].type.coding.display = "Unique Specimen ID"
* identifier[appSampleCode].type.text = "App sample identifier"
* identifier[remoteSampleCode].value 1..1
* identifier[remoteSampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/remote-sample-code" (exactly)
* identifier[remoteSampleCode].type.coding.code = #USID
* identifier[remoteSampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[remoteSampleCode].type.coding.display = "Unique Specimen ID"
* identifier[remoteSampleCode].type.text = "Remote sample identifier"
* identifier[sampleCode].value 1..1
* identifier[sampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/sample-code" (exactly)
* identifier[sampleCode].type.coding.code = #USID
* identifier[sampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[sampleCode].type.coding.display = "Unique Specimen ID"
* identifier[sampleCode].type.text = "Sample identifier"
* type 1..1
* type from VSSpecimenType (required)
* type.text = "Specimen Type"
* subject 1..1
* collection.collectedDateTime 0..1 MS
* receivedTime 0..1 MS
* processing 0..1 MS
* processing.timeDateTime 1..1
* note 0..* MS
* extension contains SampleReordered named SampleReordered 0..1 MS

Extension: SampleReordered
Id: sample-reordered
Title: "Sample reordered"
Description: "An indication whether the sample was reordered."
* value[x] only boolean
* ^context[0].type = #element
* ^context[0].expression = "Specimen"

Profile: HIVServiceRequest
Parent: ServiceRequest
Id: HIV-lab-order
Title: "HIV VL Service Request"
Description: "Represents the record of request for the HIV VL lab order."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PLAC 0..1
* identifier[PLAC].value 0..1 MS
* identifier[PLAC].system = "http://openhie.org/fhir/rwanda-hiv/identifier/lab-order-identifier" (exactly)
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer Identifier"
* identifier[PLAC].type.text = "HIV lab service request identifier"
* status 1..1
* intent = #order
* code 1..1
* code from VSTestTypes (required)
* code.concept.text = "Test Type"
* subject 1..1
* encounter 1..1
* occurrenceDateTime 0..1 MS
* requester 1..1
* performer 1..1
* reason 1..*
* specimen 1..1
* note 0..* MS

Profile: ReasonForHIVTesting
Parent: Observation
Id: reason-for-hiv-testing
Title: "Reason for HIV testing Observation"
Description: "Represents the reason for HIV VL testing services."
* status 1..1
* code.coding.code = #165813002
* code.coding.system = "http://snomed.info/sct"
* code.text = "HIV Test"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept from VSReasonForAssessment (extensible)
* valueCodeableConcept.text = "Reason for testing"
* note 0..* MS

Profile: HIVTestResult
Parent: Observation
Id: viral-load-test-result
Title: "HIV VL Lab Result Observation"
Description: "Represents the result of the VL test."
* status 1..1
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
* code.text = "Viral Load Result"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueInteger 1..1
* interpretation 1..1
* interpretation from VSVLSuppression (required)
* interpretation.text = "Viral Load Suppression Status"
* performer 1..*
* note 0..* MS
* extension contains ResultEnteredManually named ResultEnteredManually 0..1 MS

Extension: ResultEnteredManually
Id: result-entered-manually
Title: "Test Result Entered Manually"
Description: "An indication whether the test result was entered manually."
* value[x] only boolean
* ^context[0].type = #element
* ^context[0].expression = "Observation"

Profile: HIVPractitioner
Parent: Practitioner
Id: hiv-practitioner
Title: "Practitioner"
Description: 
    "Represents the practitioners: (1) who requested the VL lab order, (2) who must perform the VL examination 
    and (3) who is responsible for interpreting the results."
* name 0..1 MS
* name.given 1..*
* name.family 1..1
* telecom 0..*
* telecom.system.value = #phone
* extension contains ClinicianUserIndex named ClinicianUserIndex 1..1

Extension: ClinicianUserIndex
Id: clinician-user-index
Title: "Clinician User Index"
Description: "The user index for the person who is requesting or performing the service request."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Practitioner"

Extension: ResultStatusIndex
Id: result-status-index
Title: "Result Status Index"
Description: "The result status index."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Task"

Extension: SampleRejectedIndex
Id: sample-rejected-index
Title: "Sample Rejected Index"
Description: "The sample rejection index."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Task"

Profile: HIVLabTask
Parent: Task
Id: hiv-lab-task
Title: "HIV VL Lab Order Task"
Description: 
        "Is primarily used to track the progress of a HIV VL lab order. More specifically, the lab order ID for the 
        service request is documented in this profile and is also used to document other key data such as the reason(s) for sample cancellation or 
        rejection and the type of output that, when applicable, will be produced by the task."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    FILL 1..1
* identifier[FILL].value 1..1
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number" (exactly)
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* identifier[FILL].type.text = "Lab order number"
* instantiatesCanonical 1..1
* basedOn 1..*
* status 1..1
* statusReason 0..1 MS
* statusReason from VSReasonForSampleCancellationOrRejection (extensible)
* statusReason.concept.text = "Reason For Canceling/Rejecting the Lab Order"
* intent = #order
* executionPeriod 0..1 MS
* lastModified 1..1
* note 0..* MS
* output 0..* MS
* output.type.coding.code = #398579006
* output.type.coding.system = "http://snomed.info/sct"
* output.type.text = "Viral Load Result"
* output.valueReference 1..1
* extension contains ResultStatusIndex named ResultStatusIndex 0..1 MS
* extension contains SampleRejectedIndex named SampleRejectedIndex 0..1 MS

Profile: HIVDiagnosticReport
Parent: DiagnosticReport
Id: hiv-diagnostic-report
Title: "HIV Viral Load Diagnostic Report"
Description: "Represents the findings and interpretations for a VL test."
* basedOn only Reference(ServiceRequest)
* status 1..1
* code from VSTestTypes (required)
* code.text = "Test Type"
* subject 1..1
* encounter 1..1
* effectiveDateTime 0..1
* performer 0..* MS
* result 0..1 MS
* resultsInterpreter 1..*
* conclusion 0..1 MS
* note 0..* MS
* extension contains TestedByIndex named TestedByIndex 0..1 MS

Profile: PatientPregnancyStatus
Parent: Observation
Id: hiv-patient-pregnant
Title: "Patient Pregnancy Status Observation"
Description: "Represents the pregnancy status of a patient."
* status = #final
* code = $SCT#250421003
* code.text = "Pregnancy status"
* subject 1..1
* encounter 1..1
* valueCodeableConcept from VSPatientPregnant (required)
* valueCodeableConcept.text = "Pregnancy test result"
* effectiveDateTime 1..1
* note 0..* MS

Profile: ARVTreatment
Parent: CarePlan
Id: hiv-arv-treatment
Title: "ARV Treatment CarePlan"
Description: "Represents a patient’s Antiretroviral Therapy (ART) treatment record, starting from ART initiation."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PLAC 1..1
* identifier[PLAC].value 1..1
* identifier[PLAC].system = "http://openhie.org/fhir/rwanda-hiv/identifier/uan" (exactly)
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer identifier"
* identifier[PLAC].type.text = "Unique ART number"
* status 1..1
* intent 1..1
* subject 1..1
* encounter 1..1
* period 1..1
* activity 1..* 
* activity.plannedActivityReference 1..1
* activity.plannedActivityReference only Reference (MedicationRequest)
* note 0..* MS

Profile: ARVRegimenMedicationRequest
Parent: MedicationRequest
Id: arv-regimen-medication-request
Title: "ARV Regimen Medication Request"
Description: "Represents a prescription request for an ARV regimen for a patient."
* status 1..1
* intent 1..1
* medication from VSARVRegimen (extensible)
* medication.concept.text = "ARV regimen"
* subject 1..1
* encounter 1..1
* reason 0..* MS
* note 0..* MS

Profile: ARVRegimenChange
Parent: Observation
Id: arv-regimen-change
Title: "ARV Regimen Change Observation"
Description: "Represents a patient whose ARV regimen was changed."
* status 1..1
* code.coding.code = #182838006
* code.coding.system = "http://snomed.info/sct"
* code.text = "ARV Regimen Change"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept from VSReasonsForARVRegimenChange (required)
* valueCodeableConcept.text = "Regimen change reason"
* note 0..* MS
* derivedFrom 1..1
* derivedFrom only Reference(Observation)

Profile: ARTInitiated
Parent: Observation
Id: art-initiated
Title: "ART Initiated Observation"
Description: "Represents a patient who is initiated on ART."
* status 1..1
* code.coding.code = #47241-5
* code.coding.system = "http://loinc.org"
* code.text = "ART initiated"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* note 0..* MS

Profile: ARTRegimenSwitchedOrSubstituted
Parent: Observation
Id: art-regimen-switched-or-substituted
Title: "ART Regimen Switched Or Substituted Observation"
Description: "Represents a patient whose ARV regimen has been switched to a new ARV regimen or has been substituted by another ARV regimen."
* status 1..1
* code.coding.code = #182838006
* code.coding.system = "http://snomed.info/sct"
* code.text = "ARV Regimen Change"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueBoolean 1..1
* note 0..* MS

Profile: LabOrderTaskActivity
Parent: ActivityDefinition
Id: hiv-lab-task-activity
Title: "HIV Lab Order Activity Definition"
Description: "Represents more specific information regarding the task’s lab order request."
* status 1..1
* reviewer 0..* MS
* reviewer.name 0..1 MS
* reviewer.extension contains LabTaskReviewedBy named LabTaskReviewer 0..1 MS
* lastReviewDate 0..1 MS
* editor 0..* MS
* editor.name 0..1 MS
* date 0..1 MS
* endorser 0..* MS
* endorser.name 0..1 MS
* endorser.extension contains LabTaskApprovedBy named LabTaskApprovedBy 0..1 MS
* approvalDate 0..1 MS
* specimenRequirement 0..* MS
* extension contains ResultRevisedBy named RevisedBy 0..1 MS

Extension: LabTaskReviewedBy
Id: task-reviewed-by-user-index
Title: "HIV Lab Task Reviewed By"
Description: "The user index for the person who reviewed the HIV lab task."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "ActivityDefinition.reviewer"

Extension: LabTaskApprovedBy
Id: task-approved-by-user-index
Title: "HIV Lab Task Approved By"
Description: "The user index for the person who approved the HIV lab task."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "ActivityDefinition.endorser"

Extension: ResultRevisedBy
Id: revised-by-user-index
Title: "HIV Viral Load Result Revised By"
Description: "The user index for the person who reviewed the viral load result."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "ActivityDefinition"

Profile: ARVAdherence
Parent: Observation
Id: hiv-arv-adherence
Title: "Adherence to ARV Treatment Observation"
Description: "Represents a patient’s adherence to ARV treatment."
* status 1..1
* code = $SCT#386091000
* code.text = "Treatment compliance"
* subject 1..1
* encounter 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSARVAdherence (required)
* valueCodeableConcept.text = "ARV adherence"
* note 0..* MS

Profile: Breastfeeding
Parent: Observation
Id: hiv-patient-breastfeeding
Title: "Breastfeeding Patient Observation"
Description: "Represents a breastfeeding patient."
* status 1..1
* code = $SCT#413712001
* code.text = "Breastfeeding"
* subject 1..1
* encounter 1..1
* valueBoolean 1..1
* note 0..* MS

Profile: SpecimenConservation
Parent: SpecimenDefinition
Id: specimen-preservation
Title: "Specimen Conservation"
Description: 
    "Is used to store specimen conservation data for the VL lab order. In other words, this profile is useful for documenting the ideal 
    preservation and/or transportation temperatures (low/high) of the specimen before it gets tested. In addition, this resource is used 
    to document the maximum preservation time for these temperatures and also includes preservation instructions."
* status 1..1
* typeTested 1..*
* typeTested.type 1..1
* typeTested.type from VSSpecimenType (required)
* typeTested.preference 1..1
* typeTested.handling 1..*
* typeTested.handling.temperatureRange 1..1
* typeTested.handling.temperatureRange.low 1..1
* typeTested.handling.temperatureRange.high 1..1
* typeTested.handling.maxDuration 1..1
* typeTested.handling.instruction 0..1 MS

Profile: SampleDispatchedToLab
Parent: Transport
Id: sample-dispatched-to-lab
Title: "Sample Dispatched"
Description: "Represents the transport request for the VL specimen to be sent to the lab."
* status 1..1
* intent 1..1
* authoredOn 1..1
* completionTime 0..1 MS
* requestedLocation 1..1
* currentLocation 1..1
* note 0..* MS

Profile: PerformingOrganization
Parent: Organization
Id: performing-organization
Title: "Performing Organization"
Description: "Organization responsible for carrying out the HIV testing services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    OrgID 1..1
* identifier[OrgID].value 1..1
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id" (exactly)
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Performing Organization identifier"
* name 1..1
* contact 0..* MS
* contact.address 1..1
* contact.address.state 1..1
* contact.address.district 1..1
* extension contains PerformingOrganizationProvinceIndex named ProvinceIndex 1..1
* extension contains PerformingOrganizationDistrictIndex named DistrictIndex 1..1

Extension: PerformingOrganizationProvinceIndex
Id: performing-organization-province-index
Title: "Performing Organization Province"
Description: "The province index for the performing organization."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Organization"

Extension: PerformingOrganizationDistrictIndex
Id: performing-organization-district-index
Title: "Performing Organization District"
Description: "The district index for the performing organization."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Organization"

Profile: RequestingOrganization
Parent: Organization
Id: requesting-organization
Title: "Requesting Organization"
Description: "Organization requesting for HIV testing services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    OrgID 1..1
* identifier[OrgID].value 1..1
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id" (exactly)
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Requesting Organization identifier"
* name 1..1

Profile: FundingOrganization
Parent: Organization
Id: funding-source
Title: "Funding Organization"
Description: "Funding organization."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    OrgID 0..1
* identifier[OrgID].value 0..1 MS
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id" (exactly)
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Funding Organization identifier"
* name 1..1
* extension contains FundingOrganizationIndex named FundingOrganizationIndex 1..1

Extension: FundingOrganizationIndex
Id: funding-source-index
Title: "Funding Organization"
Description: "The index for the funding organization."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Organization"

Profile: ImplementingPartnerOrganization
Parent: Organization
Id: implementing-partner
Title: "Implementing Partner Organization"
Description: "Implementing partner organization."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    OrgID 0..1
* identifier[OrgID].value 0..1 MS
* identifier[OrgID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/organization-id" (exactly)
* identifier[OrgID].type.coding.code = #XX
* identifier[OrgID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[OrgID].type.coding.display = "Organization identifier"
* identifier[OrgID].type.text = "Implementing Partner Organization identifier"
* name 1..1
* extension contains ImplementingPartnerOrganizationIndex named ImplementingPartnerOrganizationIndex 1..1

Extension: ImplementingPartnerOrganizationIndex
Id: implementing-partner-index
Title: "Implementing Partner Organization"
Description: "The index for the implementing partner organization."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "Organization"

Extension: TestedByIndex
Id: tested-by-user-index
Title: "HIV Viral Load Result Tested By"
Description: "The user index for the person who tested the viral load specimen."
* value[x] only integer
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"

Profile: ReceiveSMSMessages
Parent: Consent
Id: receive-sms-messages
Title: "Receive SMS Messages Consent"
Description: "Represents a patient’s consent to receive Short Message Service (SMS) messages."
* status 1..1
* subject 1..1
* subject only Reference(Patient)
* category = $LNC#89057-4
* category.text = "Patient consent for SMS messages"
* decision 1..1

Profile: RepeatHIVTestResult
Parent: Observation
Id: viral-load-repeat-test-result
Title: "Repeat HIV VL Lab Result Observation"
Description: "Represents the result of the repeat VL test."
* status 1..1
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
* code.text = "Viral Load Result"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueInteger 1..1
* performer 1..*
* note 0..* MS

Profile: ResultDispatchedToRequestingFacility
Parent: Transport
Id: result-dispatched-to-facility
Title: "Result Dispatched"
Description: "Represents the transport request for the VL examination result to be returned to the requesting facility."
* status 1..1
* intent 1..1
* authoredOn 1..1
* requestedLocation 1..1
* currentLocation 1..1
* note 0..* MS

Profile: SuspendTreatmentHIVTestResult
Parent: Observation
Id: viral-load-suspend-treatment-test-result
Title: "Suspended Treatment HIV VL Lab Result Observation"
Description: "Represents the result of the VL test for patient's who suspended treatment."
* status 1..1
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
* code.text = "Viral Load Result"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueInteger 1..1
* performer 1..*
* note 0..* MS

Profile: TestingPlatform
Parent: Device
Id: device-for-testing
Title: "Testing Platform"
Description: "The device platform used for testing."
* manufacturer 1..1
* note 0..* MS

Profile: HIVTestResultViralLoadLog
Parent: Observation
Id: viral-load-log
Title: "Viral Load Log Observation"
Description: "Represents the log value for the routine VL test result."
* status 1..1
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
* code.text = "Viral Load Result"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity 1..1
* valueQuantity.value 1..1
* performer 1..*
* derivedFrom 1..1
* note 0..* MS

Profile: HIVTestResultAbsoluteDecimal
Parent: Observation
Id: viral-load-test-result-absolute-decimal
Title: "Viral Load Result Absolute Decimal Observation"
Description: "Represents the absolute decimal value for the routine VL test result"
* status 1..1
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
* code.text = "Viral Load Result"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity 1..1
* valueQuantity.value 1..1
* performer 1..*
* derivedFrom 1..1
* note 0..* MS

Profile: TransportLocation
Parent: Location
Id: transport-location
Title: "Transport Location"
Description: "Represents the names of the requested and current locations associated with the transport activity (VL specimen sent to lab, VL result returned to facility)."
* status 1..1
* name 1..1