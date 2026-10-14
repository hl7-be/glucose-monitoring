# Diabetes Report Model to BeDiagnosticReportDiabetes Mapping - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ConceptMap: Diabetes Report Model to BeDiagnosticReportDiabetes Mapping 

 
Mapping from the BeModelDiagnosticReportDiabetes logical model to the be-diagnostic-report-diabetes profile 

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Element | Description | Relation | Resource | Element | Description | Notes |
| `UniqueIdentifierNational` | Unique business identifier of the report | equivalent | DiagnosticReport | `identifier:UUID` | Unique identifier of the report | System fixed to be-ns-diagnostic-report-diabetes. |
| `BusinessIdentifier` | Report identifier for the supplier's internal business | equivalent | DiagnosticReport | `identifier` | Business identifier for report | Additional identifier with the supplier's own system (identifier slicing is open). |
| `RecordedDate` | Date the report was produced | equivalent | DiagnosticReport | `extension:recorded-date` | Recording date (BeExtRecordedDate) |  |
| `ObservationPeriod` | Period covered by the report (typically 14 to 30 days) | equivalent | DiagnosticReport | `effectivePeriod` | Clinically relevant time/time-period for report | effective[x] is restricted to Period; start and end are both mandatory. |
| `Patient` | Identifier of the patient (preferably NISS) | equivalent | DiagnosticReport | `subject` | The subject of the report | The model carries the NISS; in FHIR it is the identifier of the referenced patient (or Reference.identifier). Unlike the observation profile, subject is not restricted to BePatient. |
| `Recorder` | Service provider or organization that encodes the information | equivalent | DiagnosticReport | `extension:recorder` | Recorder (BeExtRecorder) | The model carries the NISS of the professional or the company number of the organization; in FHIR this is a reference to the corresponding practitioner, practitioner role or organization. |
| `Performer` | Service provider or organization that collects the observations and produces the report | equivalent | DiagnosticReport | `performer` | Responsible diagnostic service | Not constrained in the profile. For the diabetes report, performer = recorder. |
| `Interpreter` | Care provider who interprets the observations in the report | equivalent | DiagnosticReport | `resultsInterpreter` | Primary result interpreter | Reference(BePractitionerRole | BePractitioner). Not provided by the report producer; added by the interpreting care provider. |
| `Category` | Category of the report | equivalent | DiagnosticReport | `category` | Service category | Bound to BeVSDiabetesReportCategory. |
| `Qualification` | Category of diabetic patient (CAT 1/2/3) | unmatched |  |  |  | No element in the profile carries the diabetes category. It is calculated from the diagnosis by the interpreting doctor (default CAT 3) and is also used in Observation.referenceRange.appliesTo. |
| `Device` | Identification number assigned by INAMI to the sensor type | equivalent | DiagnosticReport | `extension:device.extension:concept.valueCodeableConcept` | Sensor type (BeExtCodeableReference concept) | The INAMI sensor type number is sent as a code with system be-ns-diabetes-device-type. |
| `Code` | Report code (type of procedure) | equivalent | DiagnosticReport | `code` | Name/Code for this diagnostic report | Bound to BeVSDiabetesReportCode (e.g. 439926003 Ambulatory continuous glucose monitoring of interstitial tissue fluid). |
| `DerivedObservations` | References to the derived value observations in the report | equivalent | DiagnosticReport | `result` | Observations | Reference(BeObservationDiabetes). |
| `MeasurementObservations` | References to the blood glucose measurement observations used to produce the analysis | unmatched |  |  |  | No element in the profile. DiagnosticReport.result is restricted to BeObservationDiabetes (derived values), so the individual measurements are not referenced from the report. |
| `Diagnosis` | Problem related to this diagnostic report | unmatched |  |  |  | No element in the R4 profile. The R5 DiagnosticReport.supportingInfo cross-version extension was considered but is commented out in the profile. |
| `Note` | Report comments in free text | equivalent | DiagnosticReport | `extension:note` | Comments about the report (BeExtSimpleNote) | Not provided by the report producer; added by the interpreting care provider. |
| `Document` | PDF document containing the complete report | equivalent | DiagnosticReport | `presentedForm` | Entire report as issued | contentType fixed to application/pdf. |
| `Status` | Report status (default Final) | equivalent | DiagnosticReport | `status` | final | partial | Bound to BeVSDiabetesReportStatus. The status depends on the business rule on % Data Captured. |



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "map-diagnostic-report-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ConceptMap/map-diagnostic-report-diabetes",
  "version" : "1.0.0",
  "name" : "MapDiagnosticReportDiabetes",
  "title" : "Diabetes Report Model to BeDiagnosticReportDiabetes Mapping",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-02T13:33:25+00:00",
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
  "sourceCanonical" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes",
  "targetCanonical" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes",
  "group" : [{
    "source" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes",
    "target" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes",
    "element" : [{
      "code" : "UniqueIdentifierNational",
      "display" : "Unique business identifier of the report",
      "target" : [{
        "code" : "DiagnosticReport.identifier:UUID",
        "display" : "Unique identifier of the report",
        "equivalence" : "equivalent",
        "comment" : "System fixed to be-ns-diagnostic-report-diabetes."
      }]
    },
    {
      "code" : "BusinessIdentifier",
      "display" : "Report identifier for the supplier's internal business",
      "target" : [{
        "code" : "DiagnosticReport.identifier",
        "display" : "Business identifier for report",
        "equivalence" : "equivalent",
        "comment" : "Additional identifier with the supplier's own system (identifier slicing is open)."
      }]
    },
    {
      "code" : "RecordedDate",
      "display" : "Date the report was produced",
      "target" : [{
        "code" : "DiagnosticReport.extension:recorded-date",
        "display" : "Recording date (BeExtRecordedDate)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ObservationPeriod",
      "display" : "Period covered by the report (typically 14 to 30 days)",
      "target" : [{
        "code" : "DiagnosticReport.effectivePeriod",
        "display" : "Clinically relevant time/time-period for report",
        "equivalence" : "equivalent",
        "comment" : "effective[x] is restricted to Period; start and end are both mandatory."
      }]
    },
    {
      "code" : "Patient",
      "display" : "Identifier of the patient (preferably NISS)",
      "target" : [{
        "code" : "DiagnosticReport.subject",
        "display" : "The subject of the report",
        "equivalence" : "equivalent",
        "comment" : "The model carries the NISS; in FHIR it is the identifier of the referenced patient (or Reference.identifier). Unlike the observation profile, subject is not restricted to BePatient."
      }]
    },
    {
      "code" : "Recorder",
      "display" : "Service provider or organization that encodes the information",
      "target" : [{
        "code" : "DiagnosticReport.extension:recorder",
        "display" : "Recorder (BeExtRecorder)",
        "equivalence" : "equivalent",
        "comment" : "The model carries the NISS of the professional or the company number of the organization; in FHIR this is a reference to the corresponding practitioner, practitioner role or organization."
      }]
    },
    {
      "code" : "Performer",
      "display" : "Service provider or organization that collects the observations and produces the report",
      "target" : [{
        "code" : "DiagnosticReport.performer",
        "display" : "Responsible diagnostic service",
        "equivalence" : "equivalent",
        "comment" : "Not constrained in the profile. For the diabetes report, performer = recorder."
      }]
    },
    {
      "code" : "Interpreter",
      "display" : "Care provider who interprets the observations in the report",
      "target" : [{
        "code" : "DiagnosticReport.resultsInterpreter",
        "display" : "Primary result interpreter",
        "equivalence" : "equivalent",
        "comment" : "Reference(BePractitionerRole | BePractitioner). Not provided by the report producer; added by the interpreting care provider."
      }]
    },
    {
      "code" : "Category",
      "display" : "Category of the report",
      "target" : [{
        "code" : "DiagnosticReport.category",
        "display" : "Service category",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesReportCategory."
      }]
    },
    {
      "code" : "Qualification",
      "display" : "Category of diabetic patient (CAT 1/2/3)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "No element in the profile carries the diabetes category. It is calculated from the diagnosis by the interpreting doctor (default CAT 3) and is also used in Observation.referenceRange.appliesTo."
      }]
    },
    {
      "code" : "Device",
      "display" : "Identification number assigned by INAMI to the sensor type",
      "target" : [{
        "code" : "DiagnosticReport.extension:device.extension:concept.valueCodeableConcept",
        "display" : "Sensor type (BeExtCodeableReference concept)",
        "equivalence" : "equivalent",
        "comment" : "The INAMI sensor type number is sent as a code with system be-ns-diabetes-device-type."
      }]
    },
    {
      "code" : "Code",
      "display" : "Report code (type of procedure)",
      "target" : [{
        "code" : "DiagnosticReport.code",
        "display" : "Name/Code for this diagnostic report",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesReportCode (e.g. 439926003 Ambulatory continuous glucose monitoring of interstitial tissue fluid)."
      }]
    },
    {
      "code" : "DerivedObservations",
      "display" : "References to the derived value observations in the report",
      "target" : [{
        "code" : "DiagnosticReport.result",
        "display" : "Observations",
        "equivalence" : "equivalent",
        "comment" : "Reference(BeObservationDiabetes)."
      }]
    },
    {
      "code" : "MeasurementObservations",
      "display" : "References to the blood glucose measurement observations used to produce the analysis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "No element in the profile. DiagnosticReport.result is restricted to BeObservationDiabetes (derived values), so the individual measurements are not referenced from the report."
      }]
    },
    {
      "code" : "Diagnosis",
      "display" : "Problem related to this diagnostic report",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "No element in the R4 profile. The R5 DiagnosticReport.supportingInfo cross-version extension was considered but is commented out in the profile."
      }]
    },
    {
      "code" : "Note",
      "display" : "Report comments in free text",
      "target" : [{
        "code" : "DiagnosticReport.extension:note",
        "display" : "Comments about the report (BeExtSimpleNote)",
        "equivalence" : "equivalent",
        "comment" : "Not provided by the report producer; added by the interpreting care provider."
      }]
    },
    {
      "code" : "Document",
      "display" : "PDF document containing the complete report",
      "target" : [{
        "code" : "DiagnosticReport.presentedForm",
        "display" : "Entire report as issued",
        "equivalence" : "equivalent",
        "comment" : "contentType fixed to application/pdf."
      }]
    },
    {
      "code" : "Status",
      "display" : "Report status (default Final)",
      "target" : [{
        "code" : "DiagnosticReport.status",
        "display" : "final | partial",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesReportStatus. The status depends on the business rule on % Data Captured."
      }]
    }]
  }]
}

```
