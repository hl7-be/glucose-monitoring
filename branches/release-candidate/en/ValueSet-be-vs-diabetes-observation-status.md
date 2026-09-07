# BeVSDiabetesObservationStatus - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ValueSet: BeVSDiabetesObservationStatus 

 
Values to be used in the status of Diabetes observations 

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
  "id" : "be-vs-diabetes-observation-status",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-status",
  "version" : "1.0.0",
  "name" : "BeVSDiabetesObservationStatus",
  "title" : "BeVSDiabetesObservationStatus",
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
  "description" : "Values to be used in the status of Diabetes observations",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/observation-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "final"
      },
      {
        "code" : "entered-in-error"
      }]
    }]
  }
}

```
