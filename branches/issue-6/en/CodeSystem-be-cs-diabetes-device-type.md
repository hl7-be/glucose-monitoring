# BeCSDiabetesDeviceType - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## CodeSystem: BeCSDiabetesDeviceType 

 
Identification codes for glucose monitoring sensor types used in Belgium. 

This Code system is referenced in the definition of the following value sets:

* [BeVSDiabetesDeviceType](ValueSet-be-vs-diabetes-device-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-diabetes-device-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/CodeSystem/be-cs-diabetes-device-type",
  "version" : "1.0.0",
  "name" : "BeCSDiabetesDeviceType",
  "title" : "BeCSDiabetesDeviceType",
  "status" : "active",
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
  "description" : "Identification codes for glucose monitoring sensor types used in Belgium.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "For information purposes. The list of sensor types and identification codes is maintained by INAMI and may be updated regularly.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [{
    "code" : "701010000180",
    "display" : "FreeStyle Libre® Flash Glucose Monitoring System"
  },
  {
    "code" : "701010000576",
    "display" : "FreeStyle Libre® 2 Flash Glucose Monitoring System"
  },
  {
    "code" : "701010000675",
    "display" : "GlucoMen Day CGM"
  },
  {
    "code" : "701010000279",
    "display" : "Guardian Connect System"
  },
  {
    "code" : "701010000378",
    "display" : "Dexcom G5® Mobile continuous glucose monitoring system"
  },
  {
    "code" : "701010000477",
    "display" : "Dexcom G5® Mobile continuous glucose monitoring system"
  },
  {
    "code" : "701010000774",
    "display" : "Guardian 4 Sensor"
  },
  {
    "code" : "701010000873",
    "display" : "Dexcom ONE Continuous Glucose Monitoring (CGM) system"
  },
  {
    "code" : "701010000972",
    "display" : "FreeStyle Libre 3"
  },
  {
    "code" : "701010001071",
    "display" : "Dexcom G7 Continuous Glucose Monitoring (CGM) system"
  },
  {
    "code" : "701010001170",
    "display" : "Glunovo p3"
  },
  {
    "code" : "701010001269",
    "display" : "Dexcom ONE+"
  },
  {
    "code" : "701019999989",
    "display" : "Unknown"
  }]
}

```
