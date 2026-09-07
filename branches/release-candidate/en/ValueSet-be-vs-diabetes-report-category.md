# BeVSDiabetesReportCategory - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ValueSet: BeVSDiabetesReportCategory 

 
Values to be used in the categorisation of Diabetes reports 

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
  "id" : "be-vs-diabetes-report-category",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-report-category",
  "version" : "1.0.0",
  "name" : "BeVSDiabetesReportCategory",
  "title" : "BeVSDiabetesReportCategory",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-07T08:39:35+00:00",
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
  "description" : "Values to be used in the categorisation of Diabetes reports",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "concept" : [{
        "code" : "4311000179106"
      },
      {
        "code" : "408475000"
      },
      {
        "code" : "394583002"
      }]
    }]
  }
}

```
