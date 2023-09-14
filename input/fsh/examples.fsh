Instance: VLCompositionExample
InstanceOf: VLComposition
Usage: #example
Title: "Laboratory Report For Viral Load Testing"
Description: "Logically groups all resources into a single document structure."
* identifier[ID].value = "PAT0001-v1"
* identifier[ID].system = "http://openhie.org/fhir/rwanda-hiv/identifier/vl-lab-report"
* status = #final
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* type = $LNC#11502-2
* date = "2023-08-22"
* author[+] = Reference(RequestingPractitionerExample)
* author[+] = Reference(PerformingPractitionerExample)
* author[+] = Reference(ResultsInterpreterExample)
* title = "Laboratory Report For Viral Load Testing"

* section[+].title = "Funding Organization Information"
* section[=].code.coding.code = #Funding-Organization-Information
* section[=].code.coding.system = "http://openhie.org/fhir/rwanda-hiv/CodeSystem/laboratory-report-organization-information"
* section[=].entry[+] = Reference(FundingOrganizationExample)
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "Implementing Partner Information"
* section[=].code.coding.code = #Implementing-Partner-Information
* section[=].code.coding.system = "http://openhie.org/fhir/rwanda-hiv/CodeSystem/laboratory-report-organization-information"
* section[=].entry[+] = Reference(ImplementingPartnerOrganizationExample)
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "Pregnancy Status"
* section[=].code = $LNC#82810-3
* section[=].entry[+] = Reference(PatientPregnantExample)
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "New Patient Consultation"
* section[=].code = $SCT#185387006
* section[=].entry[+] = Reference(HIVPatientIsNewExample)
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "Breastfeeding Status"
* section[=].code = $LNC#63895-7
* section[=].entry[+] = Reference(BreastfeedingExample)
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "Consent Status"
* section[=].code = $SCT#309370004
* section[=].entry[+] = Reference(ReceiveSMSMessagesExample)
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "Viral Load Specimen"
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"

* section[=].section[+].title = "Specimen Information"
* section[=].section[=].code = $LNC#LP7846-1
* section[=].section[=].entry[+] = Reference(VLSpecimenExample)
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div><p>To be added</p></div>"

* section[=].section[+].title = "Specimen Temperature"
* section[=].section[=].code.coding.code = #Specimen-Conservation-Temperature
* section[=].section[=].code.coding.system = "http://openhie.org/fhir/rwanda-hiv/CodeSystem/laboratory-report-specimen-information"
* section[=].section[=].entry[+] = Reference(SpecimenConservationExample)
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div><p>To be added</p></div>"

* section[=].section[+].title = "Specimen Transportation"
* section[=].section[=].code.coding.code = #Specimen-Transportation
* section[=].section[=].code.coding.system = "http://openhie.org/fhir/rwanda-hiv/CodeSystem/laboratory-report-specimen-transportation"
* section[=].section[=].entry[+] = Reference(TransportRequestedLocationExample)
* section[=].section[=].entry[+] = Reference(TransportCurrentLocationExample)
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div><p>To be added</p></div>"

* section[+].title = "Laboratory Services"
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"
* section[=].code = $SCT#46159000
* section[=].entry[+] = Reference(ReasonForHIVTestingExample)
* section[=].entry[+] = Reference(HIVServiceRequestExample)
* section[=].entry[+] = Reference(LabOrderTaskActivityExample)
* section[=].entry[+] = Reference(HIVLabResultTaskExample)
* section[=].entry[+] = Reference(TestingPlatformExample)
* section[=].entry[+] = Reference(RequestingOrganizationExample)
* section[=].entry[+] = Reference(RequestingPractitionerExample)
* section[=].entry[+] = Reference(PerformingOrganizationExample)
* section[=].entry[+] = Reference(PerformingPractitionerExample)
* section[=].section[+].title = "Result Information"
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div><p>To be added</p></div>"
* section[=].section[=].code = $SCT#118246004
* section[=].section[=].entry[+] = Reference(HIVLabResultsDiagnosticReportExample)
* section[=].section[=].entry[+] = Reference(ResultDispatchedToRequestingFacilityExample)
* section[=].section[=].entry[+] = Reference(HIVTestResultExample)
* section[=].section[=].entry[+] = Reference(HIVTestResultViralLoadLogExample)
* section[=].section[=].entry[+] = Reference(HIVTestResultAbsoluteDecimalExample)
* section[=].section[=].entry[+] = Reference(RepeatHIVTestResultExample)
* section[=].section[=].entry[+] = Reference(SuspendTreatmentHIVTestResultExample)
* section[=].section[=].section[+].title = "Results Interpreter Details"
* section[=].section[=].section[=].text.status = #generated
* section[=].section[=].section[=].text.div = "<div><p>To be added</p></div>"
* section[=].section[=].section[=].code = $SCT#726736004
* section[=].section[=].section[=].entry[+] = Reference(ResultsInterpreterExample)

* section[+].title = "ART Status"
* section[=].text.status = #generated
* section[=].text.div = "<div><p>To be added</p></div>"
* section[=].code = $SCT#410684002
* section[=].entry[+] = Reference(ARTInitiatedExample)
* section[=].entry[+] = Reference(ARVRegimenChangeExample)
* section[=].entry[+] = Reference(ARTRegimenSwitchedOrSubstitutedExample)
* section[=].entry[+] = Reference(ARVAdherenceExample)
* section[=].entry[+] = Reference(ARVTreatmentRegimenChangedExample)
* section[=].entry[+] = Reference(ARVTreatmentInitiatedExample)
* section[=].section[+].title = "Prescribed ARV Medication"
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div><p>To be added</p></div>"
* section[=].section[=].code = $LNC#45260-7
* section[=].section[=].entry[+] = Reference(ARVRegimenMedicationRequestRegimenChangedExample)
* section[=].section[=].entry[+] = Reference(ARVRegimenMedicationRequestARVExample)

Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "Organization"
Description: "Represents an organization associated with health services."
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
Title: "HIV Patient"
Description: "Is used to document demographics and other administrative information about a HIV individual receiving care or other health-related services."
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
Title: "HIV Patient Is New Observation"
Description: "Represents whether this is a new patient."
* status = #final
* code = $SCT#769681006
* code.text = "New Patient Indication"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueBoolean = true
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(ObservationPerformingPractitionerExample)

Instance: PatientPregnantExample
InstanceOf: PatientPregnancyStatus
Usage: #example
Title: "Patient Pregnancy Status Observation"
Description: "Represents the pregnancy status of a patient."
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
* performer = Reference(ObservationPerformingPractitionerExample)

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(HIVPatientExample)
* actualPeriod.start = "2022-12-01"
* actualPeriod.end = "2023-01-20"

Instance: VLSpecimenExample
InstanceOf: VLSpecimen
Usage: #example
Title: "Viral Load Specimen"
Description: "Represents the VL test sample that was collected for the service request."
* extension[SampleReordered].valueBoolean = false
* identifier[appSampleCode].value = "abc123"
* identifier[appSampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/app-sample-code"
* identifier[appSampleCode].type.coding.code = #USID
* identifier[appSampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[appSampleCode].type.coding.display = "Unique Specimen ID"
* identifier[appSampleCode].type.text = "App sample identifier"
* identifier[remoteSampleCode].value = "def456"
* identifier[remoteSampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/remote-sample-code" 
* identifier[remoteSampleCode].type.coding.code = #USID
* identifier[remoteSampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[remoteSampleCode].type.coding.display = "Unique Specimen ID"
* identifier[remoteSampleCode].type.text = "Remote sample identifier"
* identifier[sampleCode].value = "ghi789"
* identifier[sampleCode].system = "http://openhie.org/fhir/rwanda-hiv/identifier/sample-code" 
* identifier[sampleCode].type.coding.code = #USID
* identifier[sampleCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[sampleCode].type.coding.display = "Unique Specimen ID"
* identifier[sampleCode].type.text = "Sample identifier"
* identifier[uniqueId].value = "123456abc"
* identifier[uniqueId].system = "http://openhie.org/fhir/rwanda-hiv/identifier/uniqueID" 
* identifier[uniqueId].type.coding.code = #PLAC
* identifier[uniqueId].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[uniqueId].type.coding.display = "Placer Identifier"
* identifier[uniqueId].type.text = "Universal Unique Identifier for the sample"
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
Title: "Practitioner"
Description: "Represents the practitioner who requested the VL lab order."
* extension[ClinicianUserIndex].valueInteger = 2
* name.given = "James"
* name.family = "Smith"
* telecom.system = #phone
* telecom.value = "27537652509"

Instance: PerformingPractitionerExample
InstanceOf: HIVPractitioner
Usage: #example
Title: "Practitioner"
Description:  "Represents the practitioner who must perform the VL examination."
* extension[ClinicianUserIndex].valueInteger = 6
* name.given = "Amy"
* name.family = "White"
* telecom.system = #phone
* telecom.value = "27537687534"

Instance: ObservationPerformingPractitionerExample
InstanceOf: HIVPractitioner
Usage: #example
Title: "Practitioner"
Description:  "Represents the practitioner who is responsible for the observation."
* extension[ClinicianUserIndex].valueInteger = 15
* name.given = "Amy"
* name.family = "White"
* telecom.system = #phone
* telecom.value = "27537687534"


Instance: HIVServiceRequestExample
InstanceOf: HIVServiceRequest
Usage: #example
Title: "HIV VL Service Request"
Description: "Represents the record of request for the HIV VL lab order."
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
Title: "HIV VL Lab Order Task"
Description: "Represents a New Lab Order."
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* for = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn[+] = Reference(HIVServiceRequestExample)
* basedOn[+] = Reference(SampleDispatchedToLabExample)
* status = #requested
* intent = #original-order
* executionPeriod.start = "2022-07-28"
* lastModified = "2022-07-28"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabResultTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV VL Lab Order Task"
Description: "Represents a Lab Result."
* extension[ResultStatusIndex].valueInteger = 4
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* identifier[FILL].type.text = "Lab order number"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn[+] = Reference(HIVServiceRequestExample)
* basedOn[+] = Reference(SampleDispatchedToLabExample)
* basedOn[+] = Reference(ResultDispatchedToRequestingFacilityExample)
* for = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* status = #completed
* intent = #original-order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"
* output.type.coding.code = #398579006
* output.type.coding.system = "http://snomed.info/sct"
* output.type.text = "Viral Load Result"
* output.type.coding.display = "Human immunodeficiency virus-1 nucleic acid assay"
* output.valueReference = Reference(HIVLabResultsDiagnosticReportExample)

Instance: HIVLabOrderCancellationTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV VL Lab Order Task"
Description: "Represents HIV Lab Order Cancellation."
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn[+] = Reference(HIVServiceRequestExample)
* for = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* status = #cancelled
* statusReason.concept = $SCT#281264009
* statusReason.concept.text = "Reason For Canceling/Rejecting the Lab Order"
* statusReason.concept.coding.display = "Inappropriate bottle or container for sample (finding)"
* intent = #original-order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabOrderRejectionTaskExample
InstanceOf: HIVLabTask
Usage: #example
Title: "HIV VL Lab Order Task"
Description: "Represents HIV Lab Order Rejection"
* extension[SampleRejectedIndex].valueInteger = 2
* identifier[FILL].system = "http://openhie.org/fhir/rwanda-hiv/lab-integration/order-number"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* instantiatesCanonical = Canonical(LabOrderTaskActivityExample)
* basedOn[+] = Reference(HIVServiceRequestExample)
* basedOn[+] = Reference(SampleDispatchedToLabExample)
* for = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* status = #rejected
* statusReason.concept = $SCT#123840003
* statusReason.concept.text = "Reason For Canceling/Rejecting the Lab Order"
* statusReason.concept.coding.display = "Sample contaminated"
* intent = #original-order
* executionPeriod.end = "2022-07-30"
* lastModified = "2022-07-30"
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: HIVLabResultsDiagnosticReportExample
InstanceOf: HIVDiagnosticReport
Usage: #example
Title: "HIV Viral Load Diagnostic Report"
Description: "Represents the findings and interpretations for a VL test."
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
Title: "Practitioner"
Description: "Represents the practitioner who is responsible for interpreting the results."
* extension[ClinicianUserIndex].valueInteger = 11
* name.given = "Jhon"
* name.family = "Smith"
* telecom.system = #phone
* telecom.value = "27539887534"

Instance: HIVTestResultExample
InstanceOf: HIVTestResult
Usage: #example
Title: "HIV VL Lab Result Observation"
Description: "Represents the result of the VL test."
* extension[ResultEnteredManually].valueBoolean = false
* status = #final
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
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

Instance: ARVTreatmentRegimenChangedExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV Treatment CarePlan"
Description: "Represents an ARV CarePlan for a patient whose regimen was changed."
* identifier[PLAC].value = "UAN000123"
* identifier[PLAC].system = "http://openhie.org/fhir/rwanda-hiv/identifier/uan"
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer identifier"
* identifier[PLAC].type.text = "Unique ART number"
* status = #active
* intent = #order
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* period.end = "2022-12-01"
* activity.plannedActivityReference = Reference(ARVRegimenMedicationRequestRegimenChangedExample)
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: ARVTreatmentInitiatedExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV Treatment CarePlan"
Description:
    "Represents an ARV CarePlan for a patient on ART. 
    This resource will be used for ART initiated patient's as well as for routine ARV prescriptions."
* identifier[PLAC].value = "UAN000123"
* identifier[PLAC].system = "http://openhie.org/fhir/rwanda-hiv/identifier/uan"
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer identifier"
* identifier[PLAC].type.text = "Unique ART number"
* status = #active
* intent = #order
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* period.end = "2022-12-01"
* activity.plannedActivityReference = Reference(ARVRegimenMedicationRequestARVExample)
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: SpecimenConservationExample
InstanceOf: SpecimenConservation
Usage: #example
Title: "Specimen Conservation"
Description: 
    "Is used to store specimen conservation data for the VL lab order. In other words, this profile is useful for documenting the ideal 
    preservation and/or transportation temperatures (low/high) of the specimen before it gets tested. In addition, this resource is used 
    to document the maximum preservation time for these temperatures and also includes preservation instructions."
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
Title: "Adherence to ARV Treatment Observation"
Description: "Represents a patient’s adherence to ARV treatment."
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
* performer = Reference(ObservationPerformingPractitionerExample)
* effectiveDateTime = "2022-11-30"

Instance: BreastfeedingExample
InstanceOf: Breastfeeding
Usage: #example
Title: "Breastfeeding Patient Observation"
Description: "Represents a breastfeeding patient."
* status = #final
* code = $SCT#413712001
* code.text = "Breastfeeding"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* valueBoolean = true
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"
* performer = Reference(ObservationPerformingPractitionerExample)
* effectiveDateTime = "2022-11-30"

Instance: LabOrderTaskActivityExample
InstanceOf: LabOrderTaskActivity
Usage: #example
Title: "HIV Lab Order Activity Definition"
Description: "Represents more specific information regarding the task’s lab order request INCLUDING specimenRequirement Reference."
* extension[RevisedBy].valueInteger = 2
* status = #active
* reviewer.name = "Mark Jones"
* reviewer.extension[LabTaskReviewer].valueInteger = 23
* lastReviewDate = "2023-01-01"
* editor.name = "Sarah May"
* date = "2023-01-01"
* endorser.name = "Tobias Menley"
* endorser.extension[LabTaskApprovedBy].valueInteger = 16
* approvalDate = "2023-01-01"
* specimenRequirement = Canonical(SpecimenConservationExample)

Instance: LabOrderResultTaskActivityExample
InstanceOf: LabOrderTaskActivity
Usage: #example
Title: "HIV Lab Order Activity Definition"
Description: "Represents more specific information regarding the task’s lab order request EXCLUDING specimenRequirement Reference."
* extension[RevisedBy].valueInteger = 2
* status = #active
* reviewer.name = "Mark Jones"
* reviewer.extension[LabTaskReviewer].valueInteger = 23
* lastReviewDate = "2023-01-01"
* editor.name = "Someone"
* date = "2023-01-01"
* endorser.name = "Tobias Menley"
* endorser.extension[LabTaskApprovedBy].valueInteger = 16
* approvalDate = "2023-01-01"

Instance: SampleDispatchedToLabExample
InstanceOf: SampleDispatchedToLab
Usage: #example
Title: "Sample Dispatched"
Description: "Represents the transport request for the VL specimen to be sent to the lab."
* status = #in-progress
* intent = #order
* authoredOn = "2022-07-28"
* completionTime = "2022-07-28"
* requestedLocation = Reference(TransportRequestedLocationExample)
* currentLocation = Reference(TransportCurrentLocationExample)
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
Title: "Receive SMS Messages Consent"
Description: "Represents an indication that a patient does not consent to receiving SMS messages."
* status = #inactive
* subject = Reference(HIVPatientExample)
* category = $LNC#89057-4
* category.coding.display = "Permission to receive text messages"
* category.text = "Patient consent for SMS messages"
* decision = #deny

Instance: ReceiveSMSMessagesExample
InstanceOf: ReceiveSMSMessages
Usage: #example
Title: "Receive SMS Messages Consent"
Description: "Represents an indication that a patient does consent to receiving SMS messages."
* status = #active
* subject = Reference(HIVPatientExample)
* category = $LNC#89057-4
* category.coding.display = "Permission to receive text messages"
* category.text = "Patient consent for SMS messages"
* decision = #permit

Instance: RepeatHIVTestResultExample
InstanceOf: RepeatHIVTestResult
Usage: #example
Title: "Repeat HIV VL Lab Result Observation"
Description: "Represents the result of the repeat VL test."
* status = #final
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
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

Instance: ResultDispatchedToRequestingFacilityExample
InstanceOf: ResultDispatchedToRequestingFacility
Usage: #example
Title: "Result Dispatched"
Description: "Represents the transport request for the VL examination result to be returned to the requesting facility."
* status = #in-progress
* intent = #order
* authoredOn = "2022-07-28"
* requestedLocation = Reference(TransportRequestedLocationExample)
* currentLocation = Reference(TransportCurrentLocationExample)
* note.authorReference = Reference(HIVOrganizationExample)
* note.text = "additional notes here"
* note.time = "2015-02-07T13:28:17-05:00"

Instance: SuspendTreatmentHIVTestResultExample
InstanceOf: SuspendTreatmentHIVTestResult
Usage: #example
Title: "Suspended Treatment HIV VL Lab Result Observation"
Description: "Represents the result of the VL test for patient's who suspended treatment."
* status = #final
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
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
Title: "Viral Load Log Observation"
Description: "Represents the log value for the routine VL test result."
* status = #final
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
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
Title: "Viral Load Result Absolute Decimal Observation"
Description: "Represents the absolute decimal value for the routine VL test result"
* status = #final
* code.coding.code = #398579006
* code.coding.system = "http://snomed.info/sct"
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
Title: "ARV Regimen Medication Request"
Description: "Represents a prescription request for a patient whose ARV regimen was changed."
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
Title: "Reason for HIV testing Observation"
Description: "Represents the reason for HIV VL testing services."
* status = #final
* code.coding.code = #165813002
* code.coding.system = "http://snomed.info/sct"
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
* performer = Reference(ObservationPerformingPractitionerExample)

Instance: ARVRegimenChangeExample
InstanceOf: ARVRegimenChange
Usage: #example
Title: "ARV Regimen Change Observation"
Description: "Represents a patient whose ARV regimen was changed."
* status = #final
* code.coding.code = #182838006
* code.coding.system = "http://snomed.info/sct"
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
* performer = Reference(ObservationPerformingPractitionerExample)

Instance: ARVRegimenMedicationRequestARVExample
InstanceOf: ARVRegimenMedicationRequest
Usage: #example
Title: "ARV Regimen Medication Request"
Description: 
    "Represents a prescription request for a patient's ARV. 
    This resource will be used for ART initiated patient's as well as for routine ARV prescriptions."
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
Title: "ART Initiated Observation"
Description: "Represents a patient who is initiated on ART."
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
* performer = Reference(ObservationPerformingPractitionerExample)

Instance: ARTRegimenSwitchedOrSubstitutedExample
InstanceOf: ARTRegimenSwitchedOrSubstituted
Usage: #example
Title: "ART Regimen Switched Or Substituted Observation"
Description: "Represents a patient whose ARV regimen has been switched to a new ARV regimen or has been substituted by another ARV regimen."
* status = #final
* code.coding.code = #182838006
* code.coding.system = "http://snomed.info/sct"
* code.text = "ARV Regimen Change"
* code.coding.display = "Change of medication"
* subject = Reference(HIVPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueBoolean = true
* note.text = "Some comments"
* note.authorReference = Reference(HIVOrganizationExample)
* note.time = "2015-02-07T13:28:17-05:00"

Instance: TransportRequestedLocationExample
InstanceOf: TransportLocation
Usage: #example
Title: "Transport Location"
Description: "Represents the name of the requested location associated with the transport activity."
* status = #active
* name = "Requested location name"

Instance: TransportCurrentLocationExample
InstanceOf: TransportLocation
Usage: #example
Title: "Transport Location"
Description: "Represents the name of the current location associated with the transport activity."
* status = #active
* name = "Current location name"