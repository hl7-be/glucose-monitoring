# BeVSDiabetesObservationCategory - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ValueSet: BeVSDiabetesObservationCategory 

 
Values to be used in the categorisation of Diabetes observations 

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
  "id" : "be-vs-diabetes-observation-category",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-category",
  "version" : "1.0.0",
  "name" : "BeVSDiabetesObservationCategory",
  "title" : "BeVSDiabetesObservationCategory",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Values to be used in the categorisation of Diabetes observations",
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
        "code" : "439926003"
      },
      {
        "code" : "258104002"
      },
      {
        "code" : "258090004"
      }]
    }]
  }
}

```
