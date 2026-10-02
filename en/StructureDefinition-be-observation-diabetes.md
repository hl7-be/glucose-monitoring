# BeObservationDiabetes - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Resource Profile: BeObservationDiabetes 

**Usages:**

* Refer to this Profile: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)
* Examples for this Profile: [Observation/397dffb4-a88a-47d0-b10d-beffcbf6157d](Observation-397dffb4-a88a-47d0-b10d-beffcbf6157d.md), [Observation/449a728d-dfb4-422d-94aa-1a2d43849ee5](Observation-449a728d-dfb4-422d-94aa-1a2d43849ee5.md), [Observation/454a29d0-0893-458a-b2e5-25452b89e29a](Observation-454a29d0-0893-458a-b2e5-25452b89e29a.md), [Observation/6756477d-b57a-4611-b048-374d46f52908](Observation-6756477d-b57a-4611-b048-374d46f52908.md)... Show 4 more, [Observation/a6665182-e11a-40a9-ae83-9b093a353f16](Observation-a6665182-e11a-40a9-ae83-9b093a353f16.md), [Observation/b28ef33b-0480-4bde-a5df-94988813110b](Observation-b28ef33b-0480-4bde-a5df-94988813110b.md), [Observation/b44fe5d5-f57b-4424-b628-d2baeb447738](Observation-b44fe5d5-f57b-4424-b628-d2baeb447738.md) and [Observation/c611b58d-27bb-49e2-b3ec-bd59e986f5f3](Observation-c611b58d-27bb-49e2-b3ec-bd59e986f5f3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.glucose-monitoring|current/StructureDefinition/StructureDefinition-be-observation-diabetes.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-observation-diabetes.csv), [Excel](../StructureDefinition-be-observation-diabetes.xlsx), [Schematron](../StructureDefinition-be-observation-diabetes.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-observation-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes",
  "version" : "1.0.0",
  "name" : "BeObservationDiabetes",
  "status" : "draft",
  "date" : "2026-09-04T07:26:36+00:00",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Observation.extension:recorded-date",
      "path" : "Observation.extension",
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
      "id" : "Observation.extension:recorder",
      "path" : "Observation.extension",
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
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
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
      "id" : "Observation.identifier:UUID",
      "path" : "Observation.identifier",
      "sliceName" : "UUID",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.identifier:UUID.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/NamingSystem/be-ns-observation-diabetes"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-status"
      }
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-category"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-code"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x].start",
      "path" : "Observation.effective[x].start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x].end",
      "path" : "Observation.effective[x].end",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "mustSupport" : true
    }]
  }
}

```
