# BeModelDiagnosticReportDiabetes - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Logical Model: BeModelDiagnosticReportDiabetes 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.glucose-monitoring|current/StructureDefinition/StructureDefinition-BeModelDiagnosticReportDiabetes.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelDiagnosticReportDiabetes.csv), [Excel](../StructureDefinition-BeModelDiagnosticReportDiabetes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelDiagnosticReportDiabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.17.42.1"
  }],
  "version" : "1.0.0",
  "name" : "BeModelDiagnosticReportDiabetes",
  "status" : "active",
  "date" : "2026-10-10T16:39:07+00:00",
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
  "description" : "Logical model representing a diabetes diagnostic report based on glucose monitoring data.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelDiagnosticReportDiabetes",
      "path" : "BeModelDiagnosticReportDiabetes",
      "short" : "BeModelDiagnosticReportDiabetes",
      "definition" : "Logical model representing a diabetes diagnostic report based on glucose monitoring data."
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.businessIdentifier",
      "path" : "BeModelDiagnosticReportDiabetes.businessIdentifier",
      "short" : "Business identifier of the report",
      "definition" : "Business identifier of the report",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.recordedDate",
      "path" : "BeModelDiagnosticReportDiabetes.recordedDate",
      "short" : "Date of the last update of the report",
      "definition" : "Date of the last update of the report",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.observationPeriod",
      "path" : "BeModelDiagnosticReportDiabetes.observationPeriod",
      "short" : "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See business rules",
      "definition" : "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See business rules",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.patient",
      "path" : "BeModelDiagnosticReportDiabetes.patient",
      "short" : "The patient that this report is about",
      "definition" : "The patient that this report is about. For GDPR reasons, sensor suppliers may not use the NISS of their users in external communication with other parties. Implementations take this constraint into account.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.status",
      "path" : "BeModelDiagnosticReportDiabetes.status",
      "short" : "Report status, by default “Final”. The value is assigned according to the business rule on “% Data Captured”",
      "definition" : "Report status, by default “Final”. The value is assigned according to the business rule on “% Data Captured”",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-status"
      }
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.recorder",
      "path" : "BeModelDiagnosticReportDiabetes.recorder",
      "short" : "The healthcare professional (INAMI number / national register number) or organization (INAMI approval number / company number) that encodes the information and takes responsibility for its content",
      "definition" : "The healthcare professional (INAMI number / national register number) or organization (INAMI approval number / company number) that encodes the information and takes responsibility for its content",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.interpreter",
      "path" : "BeModelDiagnosticReportDiabetes.interpreter",
      "short" : "Healthcare provider (INAMI number / national register number) who added an interpretation to the report (e.g. endocrinologist, general practitioner). Not provided by the producer of the report",
      "definition" : "Healthcare provider (INAMI number / national register number) who added an interpretation to the report (e.g. endocrinologist, general practitioner). Not provided by the producer of the report",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.category",
      "path" : "BeModelDiagnosticReportDiabetes.category",
      "short" : "Category of the report. At least one category must be assigned",
      "definition" : "Category of the report. At least one category must be assigned",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-category"
      }
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.deviceType",
      "path" : "BeModelDiagnosticReportDiabetes.deviceType",
      "short" : "Identification number assigned by INAMI to the type of sensor model used to create the observations on which the report is based. The individual sensor device is mentioned in the measurement observation",
      "definition" : "Identification number assigned by INAMI to the type of sensor model used to create the observations on which the report is based. The individual sensor device is mentioned in the measurement observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-device-type"
      }
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.code",
      "path" : "BeModelDiagnosticReportDiabetes.code",
      "short" : "Report code - indicating the type of procedure that leads to the production of the primary values of this report, i.e. 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid",
      "definition" : "Report code - indicating the type of procedure that leads to the production of the primary values of this report, i.e. 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-code"
      }
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.derivedObservations",
      "path" : "BeModelDiagnosticReportDiabetes.derivedObservations",
      "short" : "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report. These observations are part of the diagnostic report",
      "definition" : "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report. These observations are part of the diagnostic report",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Observation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.measuredDiabetesObservations",
      "path" : "BeModelDiagnosticReportDiabetes.measuredDiabetesObservations",
      "short" : "References to the measured diabetes observations (a few thousand measurements) used to produce the analysis",
      "definition" : "References to the measured diabetes observations (a few thousand measurements) used to produce the analysis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Observation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.note",
      "path" : "BeModelDiagnosticReportDiabetes.note",
      "short" : "Report comments in free text format. Not provided by the producer of the report, but by the healthcare provider doing the interpretation",
      "definition" : "Report comments in free text format. Not provided by the producer of the report, but by the healthcare provider doing the interpretation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.document",
      "path" : "BeModelDiagnosticReportDiabetes.document",
      "short" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "definition" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Binary"
      }]
    }]
  }
}

```
