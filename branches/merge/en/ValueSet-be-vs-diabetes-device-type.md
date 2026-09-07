# BeVSDiabetesDeviceType - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ValueSet: BeVSDiabetesDeviceType 

 
Allowed glucose monitoring sensor types used in Belgium. 

 **References** 

* [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-diabetes-device-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-device-type",
  "version" : "1.0.0",
  "name" : "BeVSDiabetesDeviceType",
  "title" : "BeVSDiabetesDeviceType",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-07T12:16:40+00:00",
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
  "description" : "Allowed glucose monitoring sensor types used in Belgium.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/CodeSystem/be-cs-diabetes-device-type"
    }]
  }
}

```
