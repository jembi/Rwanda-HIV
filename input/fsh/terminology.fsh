Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct

ValueSet: VSSpecimenType
Id: vs-specimen-type
Title: "Specimen Type Used In Viral Load testing"
Description:  "A list of specimen types."
* ^experimental = false
* $SCT#119361006 "Plasma specimen"
* $SCT#440500007 "Dried blood spot specimen"
* $SCT#441620008 "Oral fluid specimen"
* $SCT#258580003 "Whole blood specimen"
* $SCT#119364003 "Serum specimen"
* $SCT#122555007 "Venous blood specimen"
* $SCT#122554006 "Capillary blood specimen"

ValueSet: VSTestTypes
Id: vs-test-types
Title: "HIV Test Types"
Description: "A list of HIV test types."
* ^experimental = false
* $LNC#25842-6 "HIV 2 proviral DNA [Presence] in Specimen by NAA with probe detection"   
* $LNC#25836-8 "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"

ValueSet: VSReasonForAssessment
Id: vs-reason-for-assessment
Title: "Reason for Assessment or Test Not Performed"
Description: "A list of reasons associated with the service request for the lab order."
* ^experimental = false
* $SCT#77386006 "Pregnancy"
* $SCT#428450006 "Repeat laboratory specimen sent"
* $SCT#171111007 "Screened - no result yet"
* $SCT#266721009 "Absent response to treatment"
* $SCT#170564007 "Chronic disease - treatment changed"
* $SCT#413712001 "Breastfeeding (mother)"
* $SCT#315124004 "Human immunodeficiency virus viral load"
* $SCT#2528003 "Viremia"

ValueSet: VSVLSuppression
Id: vs-vl-suppression
Title: "Viral Load Suppressions Status"
Description: "Describes a patient's current viral load status."
* ^experimental = false
* $SCT#245780008 "Suppressed"
* $SCT#19032002 "Uncontrolled" //Unsuppressed
* $SCT#261665006 "Unknown"

ValueSet: VSReasonForSampleCancellationOrRejection
Id: vs-reason-sample-cancelled-or-rejected
Title: "Lab Order Reasons For Cancelling/Rejecting Lab Order"
Description: "Reasons why a lab order was cancelled or rejected."
* ^experimental = false
* $SCT#441510007 "Blood specimen with anticoagulant" 
* $SCT#123840003 "Sample contaminated"
* $SCT#397933008 "Equipment error/failure"
* $SCT#281264009 "Inappropriate bottle or container for sample"
* $SCT#281268007 "Insufficient sample"
* $SCT#281265005 "Sample incorrectly labeled"
* $SCT#419182006 "Supplies not available"

ValueSet: VSPatientPregnant
Id: vs-patient-pregnant
Title: "Patient Pregnant"
Description:  "Used by the observation to indicate whether a patient is pregnant."
* ^experimental = false
* $SCT#250426008 "Pregnancy test equivocal"
* $SCT#250425007 "Pregnancy test negative"
* $SCT#250423000 "Pregnancy test positive"

ValueSet: VSReasonsForARVRegimenChange
Id: vs-reason-arv-regimen-change
Title: "Reasons for ARV Regimen Change"
Description:  "Used by the ARV treatment careplan to indicate the reason why a patient had their ARV regimen changed."
* ^experimental = false
* $SCT#7895008 "Poisoning caused by drug AND/OR medicinal substance"
* $SCT#77386006 "Pregnancy"
* $SCT#59037007 "Intolerance to drug"
* $SCT#271737000 "Anemia"
* $SCT#76018003 "Virologic"
* $SCT#275934008 "Very poor response treatment"
* $SCT#182856006 "Drug not available - out of stock"
* $SCT#56717001 "Tuberculosis"
* $SCT#408351004 "Drug interactions considered as new drugs added"
* $SCT#52651000119105 "Finding related to risk factor in pregnancy"

ValueSet: VSARVRegimen
Id: vs-arv-regimen
Title: "ARV Regimen"
Description: "A list of ARV regimen."
* ^experimental = false
* $SCT#387105006 "Didanosine"
* $SCT#387005008 "Abacavir"
* $SCT#772188001 "Product containing only abacavir and lamivudine"
* $SCT#427314002 "Antiviral therapy"
* $SCT#878898002 "Product containing only atazanavir and ritonavir"
* $SCT#713464000 "Dolutegravir"
* $SCT#387001004 "Efavirenz"
* $SCT#404856006 "Emtricitabine"
* $SCT#432121008 "Etravirine"
* $SCT#386897000 "Lamivudine"
* $SCT#776569000 "Product containing only lopinavir and ritonavir"
* $SCT#386898005 "Nevirapine"
* $SCT#429707008 "Raltegravir"
* $SCT#703123005 "Rilpivirine"
* $SCT#386896009 "Ritonavir"
* $SCT#386895008 "Stavudine"
* $SCT#422091007 "Tenofovir"
* $SCT#421203005 "Tenofovir disoproxil"
* $SCT#414090006 "Product containing emtricitabine and tenofovir"
* $SCT#387151007 "Zidovudine"
* $SCT#776469003 "Product containing only lamivudine and zidovudine"

ValueSet: VSARVAdherence
Id: vs-arv-adherence
Title: "Adherence to ARV Treatment"
Description: "Adherence to ARV Treatment."
* ^experimental = false
* $LNC#LA6763-2 "Good = 95% adherence"
* $LNC#LA6764-0 "Fair 85-94% adherence"
* $LNC#LA6765-7 "Poor <85% adherence"

ValueSet: VSPatientConsentForSMSNotifications
Id: vs-patient-consent-for-sms-notifications
Title: "Patient Consent for SMS Notifications"
Description: "Patient Consent for SMS Notifications"
* ^experimental = false
* $SCT#699237001 "Consent given for communication by short message service text messaging"
* $SCT#398227009 "Inadequate consent"