# Diabetes Device - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Extension: Diabetes Device 

Identification of the sensor used for glucose monitoring.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)
* Examples for this Extension: [Bundle/uc52-bundle](Bundle-uc52-bundle.md), [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md) and [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.glucose-monitoring|current/StructureDefinition/StructureDefinition-be-ext-diabetes-device.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-diabetes-device.csv), [Excel](../StructureDefinition-be-ext-diabetes-device.xlsx), [Schematron](../StructureDefinition-be-ext-diabetes-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-diabetes-device",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-ext-diabetes-device",
  "version" : "1.0.0",
  "name" : "BeExtDiabetesDevice",
  "title" : "Diabetes Device",
  "status" : "draft",
  "date" : "2026-09-07T12:47:28+00:00",
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
  "description" : "Identification of the sensor used for glucose monitoring.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DiagnosticReport"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Diabetes Device",
      "definition" : "Identification of the sensor used for glucose monitoring."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-ext-diabetes-device"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-device-type"
      }
    }]
  }
}

```
