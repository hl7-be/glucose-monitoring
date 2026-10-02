# BeVSDiabetesReportStatus - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ValueSet: BeVSDiabetesReportStatus 

 
Values to be used in the status of Diabetes reports 

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
  "id" : "be-vs-diabetes-report-status",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-status",
  "version" : "1.0.0",
  "name" : "BeVSDiabetesReportStatus",
  "title" : "BeVSDiabetesReportStatus",
  "status" : "draft",
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
  "description" : "Values to be used in the status of Diabetes reports",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/diagnostic-report-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "final"
      },
      {
        "code" : "partial"
      }]
    }]
  }
}

```
