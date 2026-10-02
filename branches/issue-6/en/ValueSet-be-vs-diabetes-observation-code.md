# BeVSDiabetesObservationCode - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ValueSet: BeVSDiabetesObservationCode 

 
Values to be used in the code of Diabetes observations 

 **References** 

* [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-diabetes-observation-code",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-code",
  "version" : "1.0.0",
  "name" : "BeVSDiabetesObservationCode",
  "title" : "BeVSDiabetesObservationCode",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Values to be used in the code of Diabetes observations",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "concept" : [{
        "code" : "141191000172105"
      },
      {
        "code" : "141201000172108"
      },
      {
        "code" : "141231000172103"
      },
      {
        "code" : "141211000172106"
      },
      {
        "code" : "141221000172101"
      },
      {
        "code" : "141151000172102"
      },
      {
        "code" : "141171000172109"
      },
      {
        "code" : "141141000172104"
      },
      {
        "code" : "365845005"
      },
      {
        "code" : "141161000172100"
      },
      {
        "code" : "141121000172108"
      },
      {
        "code" : "141131000172106"
      },
      {
        "code" : "141181000172107"
      },
      {
        "code" : "141241000172105"
      }]
    }]
  }
}

```
