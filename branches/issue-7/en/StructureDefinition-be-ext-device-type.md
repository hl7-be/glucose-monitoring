# Device Type - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Extension: Device Type 

Extension containing the coded type of a device.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)
* Examples for this Extension: [Bundle/uc52-bundle](Bundle-uc52-bundle.md), [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md) and [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.glucose-monitoring|current/StructureDefinition/StructureDefinition-be-ext-device-type.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-device-type.csv), [Excel](../StructureDefinition-be-ext-device-type.xlsx), [Schematron](../StructureDefinition-be-ext-device-type.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-device-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-ext-device-type",
  "version" : "1.0.0",
  "name" : "BeExtDeviceType",
  "title" : "Device Type",
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
  "description" : "Extension containing the coded type of a device.",
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
      "short" : "Device Type",
      "definition" : "Extension containing the coded type of a device."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-ext-device-type"
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
