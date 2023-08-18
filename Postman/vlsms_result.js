class VLSMS_Result {
  constructor(inputHash) {
    VLSMS_Result.Data.Patient.patientFirstName = inputHash.patientFirstName;
    VLSMS_Result.Data.Patient.patientMiddleName = inputHash.patientMiddleName;
    VLSMS_Result.Data.Patient.patientLastName = inputHash.patientLastName;
    VLSMS_Result.Data.Patient.patientGender = inputHash.patientGender;
    VLSMS_Result.Data.Patient.patientDob = inputHash.patientDob;
    VLSMS_Result.Data.Patient.ageInYears = inputHash.ageInYears;
    VLSMS_Result.Data.Patient.ageInMonths = inputHash.ageInMonths;
    VLSMS_Result.Data.Patient.patientPregnant.code =
      inputHash.patientPregnant_code;
    VLSMS_Result.Data.Patient.patientPregnant.display =
      inputHash.patientPregnant_display;
    VLSMS_Result.Data.Patient.isPatientNew = inputHash.isPatientNew;
    VLSMS_Result.Data.Patient.breastfeeding = inputHash.breastfeeding;
    VLSMS_Result.Data.Patient.patientPhoneNumber = inputHash.patientPhoneNumber;

    VLSMS_Result.Data.Specimen.uniqueId = inputHash.uniqueId;
    VLSMS_Result.Data.Specimen.appSampleCode = inputHash.appSampleCode;
    VLSMS_Result.Data.Specimen.remoteSampleCode = inputHash.remoteSampleCode;
    VLSMS_Result.Data.Specimen.sampleCollectionDate =
      inputHash.sampleCollectionDate;
    VLSMS_Result.Data.Specimen.specimenType.code = inputHash.specimenType_code;
    VLSMS_Result.Data.Specimen.specimenType.display =
      inputHash.specimenType_display;
    VLSMS_Result.Data.Specimen.sampleReceivedDate =
      inputHash.sampleReceivedDate;
    VLSMS_Result.Data.Specimen.sampleTestingDateAtLab =
      inputHash.sampleTestingDateAtLab;

    VLSMS_Result.Data.Organization.facilityId = inputHash.facilityId;
    VLSMS_Result.Data.Organization.provinceId = inputHash.provinceId;
    VLSMS_Result.Data.Organization.labId = inputHash.labId;
    VLSMS_Result.Data.Organization.fundingSource = inputHash.fundingSource;
    VLSMS_Result.Data.Organization.implementingPartner =
      inputHash.implementingPartner;
    VLSMS_Result.Data.Organization.labName = inputHash.labName;
    VLSMS_Result.Data.Organization.district = inputHash.district;
    VLSMS_Result.Data.Organization.provinceName = inputHash.provinceName;
    VLSMS_Result.Data.Organization.fundingSourceName =
      inputHash.fundingSourceName;
    VLSMS_Result.Data.Organization.implementingPartnerName =
      inputHash.implementingPartnerName;
    VLSMS_Result.Data.Organization.districtId = inputHash.districtId;
    VLSMS_Result.Data.Organization.facilityName = inputHash.facilityName;

    VLSMS_Result.Data.Practitioner.clinicianName = inputHash.clinicianName;
    VLSMS_Result.Data.Practitioner.clinicanTelephone =
      inputHash.clinicanTelephone;
    VLSMS_Result.Data.Practitioner.vlFocalPerson.firstName =
      inputHash.vlFocalPerson_firstName;
    VLSMS_Result.Data.Practitioner.vlFocalPerson.lastName =
      inputHash.vlFocalPerson_lastName;
    VLSMS_Result.Data.Practitioner.vlFocalPersonPhoneNumber =
      inputHash.vlFocalPersonPhoneNumber;
    VLSMS_Result.Data.Practitioner.labTechnicianName.firstName =
      inputHash.labTechnicianName_firstName;
    VLSMS_Result.Data.Practitioner.labTechnicianName.lastName =
      inputHash.labTechnicianName_lastName;

    VLSMS_Result.Data.CarePlan.patientArtNo = inputHash.patientArtNo;

    VLSMS_Result.Data.Observation.dateOfArtInitiation =
      inputHash.dateOfArtInitiation;
    VLSMS_Result.Data.Observation.hasChangedRegimen =
      inputHash.hasChangedRegimen;
    VLSMS_Result.Data.Observation.reasonForArvRegimenChange.code =
      inputHash.reasonForArvRegimenChange_code;
    VLSMS_Result.Data.Observation.reasonForArvRegimenChange.display =
      inputHash.reasonForArvRegimenChange_display;
    VLSMS_Result.Data.Observation.dateOfArvRegimenChange =
      inputHash.dateOfArvRegimenChange;
    VLSMS_Result.Data.Observation.lastViralLoadResult =
      inputHash.lastViralLoadResult;
    VLSMS_Result.Data.Observation.lastViralLoadTestDate =
      inputHash.lastViralLoadTestDate;
    VLSMS_Result.Data.Observation.arvAdherence.code =
      inputHash.arvAdherence_code;
    VLSMS_Result.Data.Observation.arvAdherence.display =
      inputHash.arvAdherence_display;
    VLSMS_Result.Data.Observation.repeatTestingLastVLDate =
      inputHash.repeatTestingLastVLDate;
    VLSMS_Result.Data.Observation.repeatTestingVlValue =
      inputHash.repeatTestingVlValue;
    VLSMS_Result.Data.Observation.suspendTreatmentLastVLDate =
      inputHash.suspendTreatmentLastVLDate;
    VLSMS_Result.Data.Observation.suspendTreatmentVlValue =
      inputHash.suspendTreatmentVlValue;
    VLSMS_Result.Data.Observation.reasonForVlResultChanges =
      inputHash.reasonForVlResultChanges;
    VLSMS_Result.Data.Observation.vlLog = inputHash.vlLog;
    VLSMS_Result.Data.Observation.vlResultCategory.code =
      inputHash.vlResultCategory_code;
    VLSMS_Result.Data.Observation.vlResultCategory.display =
      inputHash.vlResultCategory_display;

    VLSMS_Result.Data.MedicationRequest.artRegimen.code =
      inputHash.artRegimen_code;
    VLSMS_Result.Data.MedicationRequest.artRegimen.display =
      inputHash.artRegimen_display;

    VLSMS_Result.Data.DiagnosticReport.testedBy = inputHash.testedBy;
    VLSMS_Result.Data.DiagnosticReport.labComments = inputHash.labComments;

    VLSMS_Result.Data.Task.viralLoadNo = inputHash.viralLoadNo;
    VLSMS_Result.Data.Task.requestDate = inputHash.requestDate;
    VLSMS_Result.Data.Task.resultStatus = inputHash.resultStatus;
    VLSMS_Result.Data.Task.rejectionReason.code =
      inputHash.rejectionReason_code;
    VLSMS_Result.Data.Task.rejectionReason.display =
      inputHash.rejectionReason_display;
    VLSMS_Result.Data.Task.rejectionDate = inputHash.rejectionDate;
    VLSMS_Result.Data.Task.rejectionReasonId = inputHash.rejectionReasonId;
    VLSMS_Result.Data.Task.lastModifiedDatetime =
      inputHash.lastModifiedDatetime;
    VLSMS_Result.Data.Task.manualResultEntry = inputHash.manualResultEntry;
    VLSMS_Result.Data.Task.resultStatusName = inputHash.resultStatusName;

    VLSMS_Result.Data.Consent.receiveSms = inputHash.receiveSms;

    VLSMS_Result.Data.Device.testingPlatform = inputHash.testingPlatform;

    VLSMS_Result.Data.Transport.sampleReceivedAtHubOn =
      inputHash.sampleReceivedAtHubOn;
    VLSMS_Result.Data.Transport.sampleDispatchedOn =
      inputHash.sampleDispatchedOn;
    VLSMS_Result.Data.Transport.resultDispatchedOn =
      inputHash.resultDispatchedOn;

    VLSMS_Result.Data.ActivityDefinition.revisedBy = inputHash.revisedBy;
    VLSMS_Result.Data.ActivityDefinition.revisedOn = inputHash.revisedOn;
    VLSMS_Result.Data.ActivityDefinition.reviewedOn = inputHash.reviewedOn;
    VLSMS_Result.Data.ActivityDefinition.reviewedBy = inputHash.reviewedBy;
    VLSMS_Result.Data.ActivityDefinition.approvedBy = inputHash.approvedBy;
    VLSMS_Result.Data.ActivityDefinition.revisedByName =
      inputHash.revisedByName;
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
      remoteSampleCode: null,
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
      labName: null,
      district: null,
      provinceName: null,
      fundingSourceName: null,
      implementingPartnerName: null,
      districtId: null,
      facilityName: null,
    },
    Practitioner: {
      clinicianName: null,
      clinicanTelephone: null,
      vlFocalPerson: {
        firstName: null,
        lastName: null,
      },
      vlFocalPersonPhoneNumber: null,
      labTechnicianName: {
        firstName: null,
        lastName: null,
      },
    },
    CarePlan: {
      patientArtNo: null,
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
      reasonForVlResultChanges: null,
      vlLog: null,
      vlResultCategory: {
        code: null,
        display: null,
      },
    },
    MedicationRequest: {
      artRegimen: {
        code: null,
        display: null,
      },
    },
    DiagnosticReport: {
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
      rejectionReasonId: null,
      lastModifiedDatetime: null,
      manualResultEntry: null,
      resultStatusName: null,
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
      revisedByName: null,
    },
  };

  setInputData() {
    let requestData = VLSMS_Result.Data;
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