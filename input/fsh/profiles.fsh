Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "Patient"
Description: "A patient resource for an HIV Patient"
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
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
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
Title: "HIV Patient Is New"
Description: "This profile is to record whether an HIV patient is new."
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
Description: "This profile represents the current facility at which the patient is receiving treatment."
* status 1..1
* class 1..1
* subject 1..1
* period 1..1
* episodeOfCare 1..*

Profile: HIVEpisodeOfCare
Parent: EpisodeOfCare
Id: hiv-episode-of-care
Title: "Patient Enrollment Type"
Description: "This profile is used to enrol the patient into HIV care."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    PI 1..1
* identifier[PI].value 1..1
* identifier[PI].system = "http://openhie.org/fhir/rwanda-hiv/identifier/enrollment-unique-id" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PI].type.coding.display = "Patient internal identifier"
* identifier[PI].type.text = "Enrollment identifier"
* status 1..1
* diagnosis 1..* 
* diagnosis.condition 1..1 
* patient 1..1
* managingOrganization 1..1
* period 1..1 

Profile: HIVDiagnosis
Parent: Condition
Id: hiv-diagnosis
Title: "Diagnosis"
Description: "This profile represents the confirmation of HIV diagnosis."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    PI 1..1
* identifier[PI].value 1..1
* identifier[PI].system = "http://openhie.org/fhir/rwanda-hiv/identifier/hiv-diagnosis" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PI].type.coding.display = "Patient internal identifier"
* identifier[PI].type.text = "HIV positive testing identifier"
* code 1..1
* code from VSCondition (required)
* code.text = "Diagnosis"
* subject 1..1
* encounter 1..1
* recordedDate 1..1
* note 0..* MS

Profile: VLSpecimen
Parent: Specimen
Id: viral-load-specimen
Title: "Viral Load Specimen"
Description: "The test sample that was collected for the initiated lab order."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
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
Description: "The sample was reordered."
* value[x] only boolean
* ^context[0].type = #element
* ^context[0].expression = "Specimen"

/*Profile: HIVServiceRequestLocation
Parent: Organization
Id: hiv-service-request-location
Title: "Lab Order Request Location"
Description: "What is the location of the organization responsible for conducting the examination of the individual's sample?"
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/rwanda-hiv/identifier/hiv-service-request-location" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
* address 1..1
//* address.country 1..1
* address.state 1..1
* address.district 1..1
//* address.city 1..1
* name 1..1*/

Profile: HIVServiceRequest
Parent: ServiceRequest
Id: HIV-lab-order
Title: "Lab Order"
Description: "A service request that initiates the need for the lab to collect the test sample."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier"
* identifier contains
    PLAC 0..1 MS
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
* code.text = "Test Type"
* subject 1..1
* encounter 1..1
* occurrenceDateTime 0..1 MS
* requester 1..1
* performer 1..1
* reasonCode 1..*
* reasonCode from VSReasonForAssessment (required)
* reasonCode.text = "Reason for testing"
* specimen 1..1
* note 0..* MS

Profile: HIVTestResult
Parent: Observation
Id: viral-load-test-result
Title: "Lab Results"
Description: "The result of the lab test which determines whether the patient is infected with HIV or not."
* status 1..1
* code from VSVLResultCode (required)
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
Description: "The test result was entered manually."
* value[x] only boolean
* ^context[0].type = #element
* ^context[0].expression = "Observation"

Profile: HIVPractitioner
Parent: Practitioner
Id: hiv-practitioner
Title: "Practitioner"
Description: "The healthcare professional who has been assigned to a given lab task."
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

Profile: HIVLabTask
Parent: Task
Id: hiv-lab-task
Title: "Lab Task"
Description: "Assists with tracking the state of the lab order and its completion status."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
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
* basedOn only Reference(ServiceRequest)
* status 1..1
* statusReason 0..1 MS
* statusReason from VSReasonForSampleCancellationOrRejection (required)
* statusReason.text = "Reason For Canceling/Rejecting the Lab Order"
* intent = #order
* executionPeriod 0..1 MS
* lastModified 1..1
* note 0..* MS
* output 0..* MS
* output.type.coding.code from VSVLResultCode (required)
* output.type.text = "Viral Load Result"
* output.valueReference 1..1
* extension contains ResultStatusIndex named ResultStatusIndex 0..1 MS

Profile: HIVDiagnosticReport
Parent: DiagnosticReport
Id: hiv-diagnostic-report
Title: "Diagnostic Report"
Description: "A report as a result of the lab task being completed."
* basedOn only Reference(ServiceRequest)
* status 1..1
* code from VSTestTypes (required)
* code.text = "Test Type"
* subject 1..1
* encounter 1..1
* performer 1..*
* result 1..1
* conclusion 0..1 MS
* extension contains TestedByIndex named TestedByIndex 1..1

Profile: DateHIVTestDone
Parent: Observation
Id: date-hiv-test-done
Title: "Date HIV Test Done"
Description: "This profile is to record the date when HIV test was done for a patient."
* status = #final
* code from VSHIVTestDone (required)
* code.text = "Viral Load Examination"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* note 0..* MS

Profile: PatientPregnancyStatus
Parent: Observation
Id: hiv-patient-pregnant
Title: "Patient Pregnancy Status"
Description: "This profile is to record the pregnacy status for the patient."
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
Title: "ARV Treatment"
Description: "This profile is to record prescribed ARV regimen"
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
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
* activity.detail 0..1
* activity.detail.scheduledPeriod 0..1
* activity.detail.kind 0..1 MS
* activity.detail.kind = #MedicationRequest
* activity.detail.code 0..1 MS
* activity.detail.code from VSARVMedicationRequest (required)
* activity.detail.code.text = "HIV medication request"
* activity.detail.reasonCode 0..1 MS
* activity.detail.reasonCode from VSReasonSForARVRegimenChange (required)
* activity.detail.reasonCode.text = "Regimen change reason"
* activity.detail.status 1..1
* activity.detail.productCodeableConcept 0..1 MS
* activity.detail.productCodeableConcept from VSARVRegimen (required)
* activity.detail.productCodeableConcept.text = "ARV regimen"
* activity.detail.extension contains ARTRegimenSwitchedOrSubstituted named artRegimenSwitchedOrSubstituted 0..1 MS
* note 0..1

Extension: ARTRegimenSwitchedOrSubstituted
Id: art-regimen-switched-or-substituted
Title: "ART Regimen Switched Or Substituted"
Description: "The ARV regimen has been switched to a new ARV regimen or has been substituted by another ARV regimen."
* value[x] only boolean
* ^context[0].type = #element
* ^context[0].expression = "CarePlan.activity.detail"

Profile: LabOrderTaskActivity
Parent: ActivityDefinition
Id: hiv-lab-task-activity
Title: "HIV Lab Order Task Activity"
Description: "HIV lab order task activity."
* url 1..1
* status 1..1
* reviewer 0..* MS
* reviewer.name 1..1
* lastReviewDate 0..1 MS
* editor 0..* MS
* editor.name 1..1
* date 0..1 MS
* endorser 0..* MS
* endorser.name 1..1
* approvalDate 0..1 MS
* specimenRequirement 1..*
* extension contains ResultRevisedBy named RevisedBy 0..1 MS

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
Title: "Patient's Adherence to ARV Treatment"
Description: "ARV adherence."
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
Title: "Breastfeeding Patient"
Description: "Breastfeeding patient."
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
Description: "Specimen conservation information."
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

Profile: SampleDisptachedToLabTask
Parent: Task
Id: sample-dispatched-to-lab
Title: "Sample Dispatched to Lab Task"
Description: "Sample dispatched to lab task."
* status 1..1
* intent 1..1
* executionPeriod 1..1
* note 0..* MS

Profile: PerformingOrganization
Parent: Organization
Id: performing-organization
Title: "Performing Organization"
Description: "Organization responsible for carrying out the HIV testing services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
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
* address 0..* MS
* address.state 1..1
* address.district 1..1
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
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
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
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    OrgID 0..1 MS
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
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    OrgID 0..1 MS
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
Parent: CommunicationRequest
Id: receive-sms-messages
Title: "Receive SMS Messages"
Description: "Indication whether a patient should receive SMS messages."
* status 1..1
* doNotPerform 0..1 MS
* subject 1..1
* encounter 1..1
* note 0..* MS