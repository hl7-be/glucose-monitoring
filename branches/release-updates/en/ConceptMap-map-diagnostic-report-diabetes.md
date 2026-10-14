# Diabetes Report Model to BeDiagnosticReportDiabetes Mapping - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ConceptMap: Diabetes Report Model to BeDiagnosticReportDiabetes Mapping 

 
Mapping from the BeModelDiagnosticReportDiabetes logical model to the be-diagnostic-report-diabetes profile 

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Element | Description | Relation | Resource | Element | Description | Notes |
| `businessIdentifier` | Business identifier of the report | equivalent | DiagnosticReport | `identifier` | Business identifier for report | At least one identifier is required, including the UUID slice with system fixed to be-ns-diagnostic-report-diabetes. Slicing is open, so other business identifiers can be added. |
| `recordedDate` | Date of the last update of the report | equivalent | DiagnosticReport | `extension:recorded-date` | BeExtRecordedDate |  |
| `observationPeriod` | From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See business rules | equivalent | DiagnosticReport | `effective[x]` | Clinically relevant time/time-period for report | effective[x] is restricted to Period; start and end are both mandatory. |
| `patient` | The patient that this report is about | equivalent | DiagnosticReport | `subject` | The subject of the report - usually, but not always, the patient | Reference(BePatient). For GDPR reasons, sensor suppliers may not use the NISS of their users in external communication. |
| `status` | Report status, by default “Final”. The value is assigned according to the business rule on “% Data Captured” | equivalent | DiagnosticReport | `status` | registered | partial | preliminary | final + | Bound to BeVSDiabetesReportStatus. The value is assigned according to the business rule on % Data Captured. |
| `recorder` | The healthcare professional (INAMI number / national register number) or organization (INAMI approval number / company number) that encodes the information and takes responsibility for its content | equivalent | DiagnosticReport | `extension:recorder` | BeExtRecorder | Reference(BePractitioner | BeOrganization). The professional is identified by INAMI or national register number, the organization by INAMI approval or company number. |
| `interpreter` | Healthcare provider (INAMI number / national register number) who added an interpretation to the report (e.g. endocrinologist, general practitioner). Not provided by the producer of the report | equivalent | DiagnosticReport | `resultsInterpreter` | Primary result interpreter | Reference(BePractitionerRole | BePractitioner). Not provided by the report producer; added by the interpreting care provider. |
| `category` | Category of the report. At least one category must be assigned | equivalent | DiagnosticReport | `category` | Service category | Bound (preferred) to BeVSDiabetesReportCategory. |
| `deviceType` | Identification number assigned by INAMI to the type of sensor model used to create the observations on which the report is based. The individual sensor device is mentioned in the measurement observation | equivalent | DiagnosticReport | `extension:device` | Device Type | valueCodeableConcept bound (extensible) to BeVSDiabetesDeviceType. The individual sensor device is mentioned in the measurement observation. |
| `code` | Report code - indicating the type of procedure that leads to the production of the primary values of this report, i.e. 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid | equivalent | DiagnosticReport | `code` | Name/Code for this diagnostic report | Bound to BeVSDiabetesReportCode (e.g. 439926003 Ambulatory continuous glucose monitoring of interstitial tissue fluid). |
| `derivedObservations` | List of references to “derived values” type observations (a dozen derived observations) mentioned in the report. These observations are part of the diagnostic report | equivalent | DiagnosticReport | `result` | Observations | Reference(BeObservationDiabetes). |
| `measuredDiabetesObservations` | References to the measured diabetes observations (a few thousand measurements) used to produce the analysis | equivalent | DiagnosticReport | `result` | Observations | Reference(BeObservationDiabetes). Shares DiagnosticReport.result with the derived observations; there is no separate slice yet. |
| `note` | Report comments in free text format. Not provided by the producer of the report, but by the healthcare provider doing the interpretation | equivalent | DiagnosticReport | `extension:note` | BeExtSimpleNote | Not provided by the report producer; added by the interpreting care provider. |
| `document` | PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.) | equivalent | DiagnosticReport | `presentedForm` | Entire report as issued | contentType fixed to application/pdf. |



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "map-diagnostic-report-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ConceptMap/map-diagnostic-report-diabetes",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.17.18.1"
  },
  "version" : "1.0.0",
  "name" : "MapDiagnosticReportDiabetes",
  "title" : "Diabetes Report Model to BeDiagnosticReportDiabetes Mapping",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-10T16:39:03+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be"
    },
    {
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be"
    }]
  },
  {
    "name" : "Message-Structure",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "Mapping from the BeModelDiagnosticReportDiabetes logical model to the be-diagnostic-report-diabetes profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "group" : [{
    "source" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes",
    "target" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes",
    "element" : [{
      "code" : "BeModelDiagnosticReportDiabetes.businessIdentifier",
      "display" : "Business identifier of the report",
      "target" : [{
        "code" : "DiagnosticReport.identifier",
        "display" : "Business identifier for report",
        "equivalence" : "equivalent",
        "comment" : "At least one identifier is required, including the UUID slice with system fixed to be-ns-diagnostic-report-diabetes. Slicing is open, so other business identifiers can be added."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.recordedDate",
      "display" : "Date of the last update of the report",
      "target" : [{
        "code" : "DiagnosticReport.extension:recorded-date",
        "display" : "BeExtRecordedDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.observationPeriod",
      "display" : "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See business rules",
      "target" : [{
        "code" : "DiagnosticReport.effective[x]",
        "display" : "Clinically relevant time/time-period for report",
        "equivalence" : "equivalent",
        "comment" : "effective[x] is restricted to Period; start and end are both mandatory."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.patient",
      "display" : "The patient that this report is about",
      "target" : [{
        "code" : "DiagnosticReport.subject",
        "display" : "The subject of the report - usually, but not always, the patient",
        "equivalence" : "equivalent",
        "comment" : "Reference(BePatient). For GDPR reasons, sensor suppliers may not use the NISS of their users in external communication."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.status",
      "display" : "Report status, by default “Final”. The value is assigned according to the business rule on “% Data Captured”",
      "target" : [{
        "code" : "DiagnosticReport.status",
        "display" : "registered | partial | preliminary | final +",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesReportStatus. The value is assigned according to the business rule on % Data Captured."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.recorder",
      "display" : "The healthcare professional (INAMI number / national register number) or organization (INAMI approval number / company number) that encodes the information and takes responsibility for its content",
      "target" : [{
        "code" : "DiagnosticReport.extension:recorder",
        "display" : "BeExtRecorder",
        "equivalence" : "equivalent",
        "comment" : "Reference(BePractitioner | BeOrganization). The professional is identified by INAMI or national register number, the organization by INAMI approval or company number."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.interpreter",
      "display" : "Healthcare provider (INAMI number / national register number) who added an interpretation to the report (e.g. endocrinologist, general practitioner). Not provided by the producer of the report",
      "target" : [{
        "code" : "DiagnosticReport.resultsInterpreter",
        "display" : "Primary result interpreter",
        "equivalence" : "equivalent",
        "comment" : "Reference(BePractitionerRole | BePractitioner). Not provided by the report producer; added by the interpreting care provider."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.category",
      "display" : "Category of the report. At least one category must be assigned",
      "target" : [{
        "code" : "DiagnosticReport.category",
        "display" : "Service category",
        "equivalence" : "equivalent",
        "comment" : "Bound (preferred) to BeVSDiabetesReportCategory."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.deviceType",
      "display" : "Identification number assigned by INAMI to the type of sensor model used to create the observations on which the report is based. The individual sensor device is mentioned in the measurement observation",
      "target" : [{
        "code" : "DiagnosticReport.extension:device",
        "display" : "Device Type",
        "equivalence" : "equivalent",
        "comment" : "valueCodeableConcept bound (extensible) to BeVSDiabetesDeviceType. The individual sensor device is mentioned in the measurement observation."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.code",
      "display" : "Report code - indicating the type of procedure that leads to the production of the primary values of this report, i.e. 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid",
      "target" : [{
        "code" : "DiagnosticReport.code",
        "display" : "Name/Code for this diagnostic report",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesReportCode (e.g. 439926003 Ambulatory continuous glucose monitoring of interstitial tissue fluid)."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.derivedObservations",
      "display" : "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report. These observations are part of the diagnostic report",
      "target" : [{
        "code" : "DiagnosticReport.result",
        "display" : "Observations",
        "equivalence" : "equivalent",
        "comment" : "Reference(BeObservationDiabetes)."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.measuredDiabetesObservations",
      "display" : "References to the measured diabetes observations (a few thousand measurements) used to produce the analysis",
      "target" : [{
        "code" : "DiagnosticReport.result",
        "display" : "Observations",
        "equivalence" : "equivalent",
        "comment" : "Reference(BeObservationDiabetes). Shares DiagnosticReport.result with the derived observations; there is no separate slice yet."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.note",
      "display" : "Report comments in free text format. Not provided by the producer of the report, but by the healthcare provider doing the interpretation",
      "target" : [{
        "code" : "DiagnosticReport.extension:note",
        "display" : "BeExtSimpleNote",
        "equivalence" : "equivalent",
        "comment" : "Not provided by the report producer; added by the interpreting care provider."
      }]
    },
    {
      "code" : "BeModelDiagnosticReportDiabetes.document",
      "display" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "target" : [{
        "code" : "DiagnosticReport.presentedForm",
        "display" : "Entire report as issued",
        "equivalence" : "equivalent",
        "comment" : "contentType fixed to application/pdf."
      }]
    }]
  }]
}

```
