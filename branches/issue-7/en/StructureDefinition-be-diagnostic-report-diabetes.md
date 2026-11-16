# BeDiagnosticReportDiabetes - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Resource Profile: BeDiagnosticReportDiabetes 

**Usages:**

* Examples for this Profile: [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md) and [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.glucose-monitoring|current/StructureDefinition/StructureDefinition-be-diagnostic-report-diabetes.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-diagnostic-report-diabetes.csv), [Excel](../StructureDefinition-be-diagnostic-report-diabetes.xlsx), [Schematron](../StructureDefinition-be-diagnostic-report-diabetes.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-diagnostic-report-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes",
  "version" : "1.0.0",
  "name" : "BeDiagnosticReportDiabetes",
  "status" : "draft",
  "date" : "2026-09-07T13:10:09+00:00",
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
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "DiagnosticReport.extension:recorded-date",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "recorded-date",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorded-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:recorder",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "recorder",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:device",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "device",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-ext-device-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:note",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "note",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-simple-note"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.identifier:UUID",
      "path" : "DiagnosticReport.identifier",
      "sliceName" : "UUID",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier:UUID.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/NamingSystem/be-ns-diagnostic-report-diabetes"
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-status"
      }
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-category"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-code"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x].start",
      "path" : "DiagnosticReport.effective[x].start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x].end",
      "path" : "DiagnosticReport.effective[x].end",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "reference.resolve().code"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.contentType",
      "path" : "DiagnosticReport.presentedForm.contentType",
      "patternCode" : "application/pdf"
    }]
  }
}

```
