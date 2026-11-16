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
  "version" : "1.0.0",
  "name" : "BeModelDiagnosticReportDiabetes",
  "status" : "draft",
  "date" : "2026-09-07T09:48:30+00:00",
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
      "definition" : "BeModelDiagnosticReportDiabetes"
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.UniqueIdentifierNational",
      "path" : "BeModelDiagnosticReportDiabetes.UniqueIdentifierNational",
      "short" : "Unique business identifier of the report.(https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing).",
      "definition" : "Unique business identifier of the report.(https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.BusinessIdentifier",
      "path" : "BeModelDiagnosticReportDiabetes.BusinessIdentifier",
      "short" : "Report identifier for the internal supplier's business.",
      "definition" : "Report identifier for the internal supplier's business.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.RecordedDate",
      "path" : "BeModelDiagnosticReportDiabetes.RecordedDate",
      "short" : "Date the report was produced.",
      "definition" : "Date the report was produced.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.ObservationPeriod",
      "path" : "BeModelDiagnosticReportDiabetes.ObservationPeriod",
      "short" : "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See 2.1 above, Figure 3 Data relationship logic.",
      "definition" : "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See 2.1 above, Figure 3 Data relationship logic.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Patient",
      "path" : "BeModelDiagnosticReportDiabetes.Patient",
      "short" : "We refer to the patient, subject of the report, by his unique identifier.This identifier is preferably the patient's national register number (NISS). In some cases, another unique identifier may be allowed.",
      "definition" : "We refer to the patient, subject of the report, by his unique identifier.This identifier is preferably the patient's national register number (NISS). In some cases, another unique identifier may be allowed.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Recorder",
      "path" : "BeModelDiagnosticReportDiabetes.Recorder",
      "short" : "This refers to the service provider or organization that encodes the information.[1] The unique identifier for each natural person is the NISS, while for each organization the business number serves as the unique identifier.",
      "definition" : "This refers to the service provider or organization that encodes the information.[1] The unique identifier for each natural person is the NISS, while for each organization the business number serves as the unique identifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Performer",
      "path" : "BeModelDiagnosticReportDiabetes.Performer",
      "short" : "We refer to the service provider or organization that collects the observations and produces the report. [2]The unique identifier of each natural person is the NISS, while for each organization the company number serves as the unique identifier.For the Diabetes Diagnostic Report, it is: “performer = recorder.»",
      "definition" : "We refer to the service provider or organization that collects the observations and produces the report. [2]The unique identifier of each natural person is the NISS, while for each organization the company number serves as the unique identifier.For the Diabetes Diagnostic Report, it is: “performer = recorder.»",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Interpreter",
      "path" : "BeModelDiagnosticReportDiabetes.Interpreter",
      "short" : "Care provider identified by their NISS (endocrinologist* , general practitioner, etc.) interprets the observations in the report. ResultsInterpreter This element will not be provided by the producer of the report, but will include the reference of the healthcare provider who does the interpretation.",
      "definition" : "Care provider identified by their NISS (endocrinologist* , general practitioner, etc.) interprets the observations in the report. ResultsInterpreter This element will not be provided by the producer of the report, but will include the reference of the healthcare provider who does the interpretation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Category",
      "path" : "BeModelDiagnosticReportDiabetes.Category",
      "short" : "Category of the report. According to ref. 8, it would be appropriate to consider setting the cardinality of the Catgory field to 1..* and to add to this report the values: 4311000179106 |Chemical pathology report (record artifact) and 408475000 |Diabetic medicine (qualifier value). 394583002 |Endocrinology (qualifier value) of the report. Look at VS_DiagRep_Category.",
      "definition" : "Category of the report. According to ref. 8, it would be appropriate to consider setting the cardinality of the Catgory field to 1..* and to add to this report the values: 4311000179106 |Chemical pathology report (record artifact) and 408475000 |Diabetic medicine (qualifier value). 394583002 |Endocrinology (qualifier value) of the report. Look at VS_DiagRep_Category.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Qualification",
      "path" : "BeModelDiagnosticReportDiabetes.Qualification",
      "short" : "Is the category of diabetic patient (CAT 1, CAT 2, CAT 3). (See glossary for details).By default, the qualification is “CAT 3”.The category is calculated by an algorithm from the diagnosis provided by the doctor — interpreter.",
      "definition" : "Is the category of diabetic patient (CAT 1, CAT 2, CAT 3). (See glossary for details).By default, the qualification is “CAT 3”.The category is calculated by an algorithm from the diagnosis provided by the doctor — interpreter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Device",
      "path" : "BeModelDiagnosticReportDiabetes.Device",
      "short" : "Identification number assigned by INAMI to the sensor type.See VS_Diab_Device",
      "definition" : "Identification number assigned by INAMI to the sensor type.See VS_Diab_Device",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Code",
      "path" : "BeModelDiagnosticReportDiabetes.Code",
      "short" : "Report code. In the diabetes project framework, it is proposed to indicate the type of procedure that leads to the production of the primary values ​​of this report. That is to say 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid. VS_DiagRep_Code.",
      "definition" : "Report code. In the diabetes project framework, it is proposed to indicate the type of procedure that leads to the production of the primary values ​​of this report. That is to say 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid. VS_DiagRep_Code.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.DerivedObservations",
      "path" : "BeModelDiagnosticReportDiabetes.DerivedObservations",
      "short" : "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report.[3]His observations are part of the diagnostic report.",
      "definition" : "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report.[3]His observations are part of the diagnostic report.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Observation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.MeasurementObservations",
      "path" : "BeModelDiagnosticReportDiabetes.MeasurementObservations",
      "short" : "List of references to “blood glucose measurement” type observations used to produce the analysis (a few thousand measurements) [4] type (“SCI”)[5]",
      "definition" : "List of references to “blood glucose measurement” type observations used to produce the analysis (a few thousand measurements) [4] type (“SCI”)[5]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Observation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Diagnosis",
      "path" : "BeModelDiagnosticReportDiabetes.Diagnosis",
      "short" : "Problem reference related to this diagnostic report.This element will not be provided by the producer of the report but will be provided by the healthcare provider who does the interpretation.",
      "definition" : "Problem reference related to this diagnostic report.This element will not be provided by the producer of the report but will be provided by the healthcare provider who does the interpretation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Condition"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Note",
      "path" : "BeModelDiagnosticReportDiabetes.Note",
      "short" : "Report comments in free text format. This element will not be provided by the producer of the report, but will be provided by the healthcare provider doing the interpretation.",
      "definition" : "Report comments in free text format. This element will not be provided by the producer of the report, but will be provided by the healthcare provider doing the interpretation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Document",
      "path" : "BeModelDiagnosticReportDiabetes.Document",
      "short" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "definition" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Binary"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.Status",
      "path" : "BeModelDiagnosticReportDiabetes.Status",
      "short" : "Report status. By default it is “Final”. Value according to the business rule on “% Data Captured” see VS_DiagRep_Status",
      "definition" : "Report status. By default it is “Final”. Value according to the business rule on “% Data Captured” see VS_DiagRep_Status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
