class VLSMS_Request {
  constructor(inputHash) {
    VLSMS_Request.Data.Patient.patientFirstName = inputHash.patientFirstName;
    VLSMS_Request.Data.Patient.patientMiddleName = inputHash.patientMiddleName;
    VLSMS_Request.Data.Patient.patientLastName = inputHash.patientLastName;
    VLSMS_Request.Data.Patient.patientGender = inputHash.patientGender;
    VLSMS_Request.Data.Patient.patientDob = inputHash.patientDob;
    VLSMS_Request.Data.Patient.ageInYears = inputHash.ageInYears;
    VLSMS_Request.Data.Patient.ageInMonths = inputHash.ageInMonths;
    VLSMS_Request.Data.Patient.patientPregnant.code =
      inputHash.patientPregnant_code;
    VLSMS_Request.Data.Patient.patientPregnant.display =
      inputHash.patientPregnant_display;
    VLSMS_Request.Data.Patient.isPatientNew = inputHash.isPatientNew;
    VLSMS_Request.Data.Patient.breastfeeding = inputHash.breastfeeding;
    VLSMS_Request.Data.Patient.patientPhoneNumber =
      inputHash.patientPhoneNumber;

    VLSMS_Request.Data.Specimen.uniqueId = inputHash.uniqueId;
    VLSMS_Request.Data.Specimen.appSampleCode = inputHash.appSampleCode;
    VLSMS_Request.Data.Specimen.sampleReordered = inputHash.sampleReordered;
    VLSMS_Request.Data.Specimen.sampleCollectionDate =
      inputHash.sampleCollectionDate;
    VLSMS_Request.Data.Specimen.specimenType.code = inputHash.specimenType_code;
    VLSMS_Request.Data.Specimen.specimenType.display =
      inputHash.specimenType_display;
    VLSMS_Request.Data.Specimen.sampleReceivedDate =
      inputHash.sampleReceivedDate;
    VLSMS_Request.Data.Specimen.sampleTestingDateAtLab =
      inputHash.sampleTestingDateAtLab;

    VLSMS_Request.Data.Organization.facilityId = inputHash.facilityId;
    VLSMS_Request.Data.Organization.provinceId = inputHash.provinceId;
    VLSMS_Request.Data.Organization.labId = inputHash.labId;
    VLSMS_Request.Data.Organization.fundingSource = inputHash.fundingSource;
    VLSMS_Request.Data.Organization.implementingPartner =
      inputHash.implementingPartner;

    VLSMS_Request.Data.Practitioner.clinicianName = inputHash.clinicianName;
    VLSMS_Request.Data.Practitioner.clinicanTelephone =
      inputHash.clinicanTelephone;
    VLSMS_Request.Data.Practitioner.vlFocalPerson.firstName =
      inputHash.vlFocalPerson_firstName;
    VLSMS_Request.Data.Practitioner.vlFocalPerson.lastName =
      inputHash.vlFocalPerson_lastName;
    VLSMS_Request.Data.Practitioner.vlFocalPersonPhoneNumber =
      inputHash.vlFocalPersonPhoneNumber;

    VLSMS_Request.Data.CarePlan.patientArtNo = inputHash.patientArtNo;
    VLSMS_Request.Data.CarePlan.dateOfCompletionOfViralLoad =
      inputHash.dateOfCompletionOfViralLoad;

    VLSMS_Request.Data.Observation.dateOfArtInitiation =
      inputHash.dateOfArtInitiation;
    VLSMS_Request.Data.Observation.hasChangedRegimen =
      inputHash.hasChangedRegimen;
    VLSMS_Request.Data.Observation.reasonForArvRegimenChange.code =
      inputHash.reasonForArvRegimenChange_code;
    VLSMS_Request.Data.Observation.reasonForArvRegimenChange.display =
      inputHash.reasonForArvRegimenChange_display;
    VLSMS_Request.Data.Observation.dateOfArvRegimenChange =
      inputHash.dateOfArvRegimenChange;
    VLSMS_Request.Data.Observation.lastViralLoadResult =
      inputHash.lastViralLoadResult;
    VLSMS_Request.Data.Observation.lastViralLoadTestDate =
      inputHash.lastViralLoadTestDate;
    VLSMS_Request.Data.Observation.arvAdherence.code =
      inputHash.arvAdherence_code;
    VLSMS_Request.Data.Observation.arvAdherence.display =
      inputHash.arvAdherence_display;
    VLSMS_Request.Data.Observation.repeatTestingLastVLDate =
      inputHash.repeatTestingLastVLDate;
    VLSMS_Request.Data.Observation.repeatTestingVlValue =
      inputHash.repeatTestingVlValue;
    VLSMS_Request.Data.Observation.suspendTreatmentLastVLDate =
      inputHash.suspendTreatmentLastVLDate;
    VLSMS_Request.Data.Observation.suspendTreatmentVlValue =
      inputHash.suspendTreatmentVlValue;
    VLSMS_Request.Data.Observation.vlResultAbsoluteDecimal =
      inputHash.vlResultAbsoluteDecimal;
    VLSMS_Request.Data.Observation.reasonForVlResultChanges =
      inputHash.reasonForVlResultChanges;
    VLSMS_Request.Data.Observation.vlLog = inputHash.vlLog;

    VLSMS_Request.Data.MedicationRequest.artRegimen.code =
      inputHash.artRegimen_code;
    VLSMS_Request.Data.MedicationRequest.artRegimen.display =
      inputHash.artRegimen_display;

    VLSMS_Request.Data.ServiceRequest.reasonForVLTesting.code =
      inputHash.reasonForVLTesting_code;
    VLSMS_Request.Data.ServiceRequest.reasonForVLTesting.display =
      inputHash.reasonForVLTesting_display;
    VLSMS_Request.Data.ServiceRequest.reasonForVLTesting.codeSystem =
      inputHash.reasonForVLTesting_codeSystem;

    VLSMS_Request.Data.SpecimenDefinition.conservationTemperature.low =
      inputHash.conservationTemperature_low;
    VLSMS_Request.Data.SpecimenDefinition.conservationTemperature.high =
      inputHash.conservationTemperature_high;
    VLSMS_Request.Data.SpecimenDefinition.durationOfConservation =
      inputHash.durationOfConservation;

    VLSMS_Request.Data.DiagnosticReport.dateOfCompletionOfViralLoad =
      inputHash.dateOfCompletionOfViralLoad;
    VLSMS_Request.Data.DiagnosticReport.testedBy = inputHash.testedBy;
    VLSMS_Request.Data.DiagnosticReport.labComments = inputHash.labComments;

    VLSMS_Request.Data.Task.viralLoadNo = inputHash.viralLoadNo;
    VLSMS_Request.Data.Task.requestDate = inputHash.requestDate;
    VLSMS_Request.Data.Task.resultStatus = inputHash.resultStatus;
    VLSMS_Request.Data.Task.rejectionReason.code =
      inputHash.rejectionReason_code;
    VLSMS_Request.Data.Task.rejectionReason.display =
      inputHash.rejectionReason_display;
    VLSMS_Request.Data.Task.rejectionDate = inputHash.rejectionDate;

    VLSMS_Request.Data.Consent.receiveSms = inputHash.receiveSms;

    VLSMS_Request.Data.Device.testingPlatform = inputHash.testingPlatform;

    VLSMS_Request.Data.Transport.sampleReceivedAtHubOn =
      inputHash.sampleReceivedAtHubOn;
    VLSMS_Request.Data.Transport.sampleDispatchedOn =
      inputHash.sampleDispatchedOn;
    VLSMS_Request.Data.Transport.resultDispatchedOn =
      inputHash.resultDispatchedOn;

    VLSMS_Request.Data.ActivityDefinition.revisedBy = inputHash.revisedBy;
    VLSMS_Request.Data.ActivityDefinition.revisedOn = inputHash.revisedOn;
    VLSMS_Request.Data.ActivityDefinition.reviewedOn = inputHash.reviewedOn;
    VLSMS_Request.Data.ActivityDefinition.reviewedBy = inputHash.reviewedBy;
    VLSMS_Request.Data.ActivityDefinition.approvedBy = inputHash.approvedBy;
    VLSMS_Request.Data.ActivityDefinition.approvedOnDateTime =
      inputHash.approvedOnDateTime;
  }

  static Data = {
    Patient: {
      patientFirstName: null,
      patientMiddleName: null,
      patientLastName: null,
      patientGender: null,
      patientDob: null,
      ageInYears: null,
      ageInMonths: null,
      patientPregnant: {
        code: null,
        display: null,
      },
      isPatientNew: null,
      breastfeeding: null,
      patientPhoneNumber: null,
    },
    Specimen: {
      uniqueId: null,
      appSampleCode: null,
      sampleReordered: null,
      sampleCollectionDate: null,
      specimenType: {
        code: null,
        display: null,
      },
      sampleReceivedDate: null,
      sampleTestingDateAtLab: null,
    },
    Organization: {
      facilityId: null,
      provinceId: null,
      labId: null,
      fundingSource: null,
      implementingPartner: null,
    },
    Practitioner: {
      clinicianName: null,
      clinicanTelephone: null,
      vlFocalPerson: {
        firstName: null,
        lastName: null,
      },
      vlFocalPersonPhoneNumber: null,
    },
    CarePlan: {
      patientArtNo: null,
      dateOfCompletionOfViralLoad: null,
    },
    Observation: {
      dateOfArtInitiation: null,
      hasChangedRegimen: null,
      reasonForArvRegimenChange: {
        code: null,
        display: null,
      },
      dateOfArvRegimenChange: null,
      lastViralLoadResult: null,
      lastViralLoadTestDate: null,
      arvAdherence: {
        code: null,
        display: null,
      },
      repeatTestingLastVLDate: null,
      repeatTestingVlValue: null,
      suspendTreatmentLastVLDate: null,
      suspendTreatmentVlValue: null,
      vlResultAbsoluteDecimal: null,
      reasonForVlResultChanges: null,
      vlLog: null,
    },
    MedicationRequest: {
      artRegimen: {
        code: null,
        display: null,
      },
    },
    ServiceRequest: {
      reasonForVLTesting: {
        code: null,
        display: null,
        codeSystem: null,
      },
    },
    SpecimenDefinition: {
      conservationTemperature: {
        low: null,
        high: null,
      },
      durationOfConservation: null,
    },
    DiagnosticReport: {
      dateOfCompletionOfViralLoad: null,
      testedBy: null,
      labComments: null,
    },
    Task: {
      viralLoadNo: null,
      requestDate: null,
      resultStatus: null,
      rejectionReason: {
        code: null,
        display: null,
      },
    },
    Consent: {
      receiveSms: null,
    },
    Device: {
      testingPlatform: null,
    },
    Transport: {
      sampleReceivedAtHubOn: null,
      sampleDispatchedOn: null,
      resultDispatchedOn: null,
    },
    ActivityDefinition: {
      revisedBy: null,
      revisedOn: null,
      reviewedOn: null,
      reviewedBy: null,
      approvedBy: null,
      approvedOnDateTime: null,
    },
  };

  setInputData() {
    let requestData = VLSMS_Request.Data;
    for (const key in requestData) {
      for (const row in requestData[key]) {
        if (
          typeof requestData[key][row] === "object" &&
          requestData[key][row] !== null
        ) {
          for (const child_row in requestData[key][row]) {
            this.writeInputDataToRequestBody([
              `${row}.${child_row}`,
              `${requestData[key][row][child_row]}`,
            ]);
          }
        } else {
          this.writeInputDataToRequestBody([
            `${row}`,
            `${requestData[key][row]}`,
          ]);
        }
      }
    }
  }

  writeInputDataToRequestBody(inputData) {
    pm.variables.set(inputData[0], inputData[1]);
  }
}
module.exports = VLSMS_Request;