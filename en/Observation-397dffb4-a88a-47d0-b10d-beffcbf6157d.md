# Use case 5.3 (Observation) - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Example Observation: Use case 5.3 (Observation)

Profile: [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)

**BeExtRecordedDate**: 2024-11-25

**BeExtRecorder**: Identifier: [BeNIHDINamingSystem](https://build.fhir.org/ig/hl7-be/core/NamingSystem-be-nihdi.html)/0403044007

**identifier**: [BeNSObservationDiabetes](NamingSystem-be-ns-observation-diabetes.md)/397dffb4-a88a-47d0-b10d-beffcbf6157d

**status**: Final

**category**: Ambulatory continuous glucose monitoring of interstitial tissue fluid (procedure), Calculated

**code**: 757492266

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/NamingSystem-be-ssin.html)/80051207915

**effective**: 2024-11-11 --> 2024-11-24

**performer**: Identifier: [BeNIHDINamingSystem](https://build.fhir.org/ig/hl7-be/core/NamingSystem-be-nihdi.html)/0403044007

**value**: 14 days (Details: UCUM coded = 'd')

**device**: [Device: type = 701010000576](Bundle-uc53-bundle.md#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e)

### ReferenceRanges

| | |
| :--- | :--- |
| - | **Low** |
| * | 14 days (Details: UCUM coded = 'd') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "397dffb4-a88a-47d0-b10d-beffcbf6157d",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes"]
  },
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorded-date",
    "valueDateTime" : "2024-11-25"
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder",
    "valueReference" : {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
        "value" : "0403044007"
      }
    }
  }],
  "identifier" : [{
    "system" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/NamingSystem/be-ns-observation-diabetes",
    "value" : "397dffb4-a88a-47d0-b10d-beffcbf6157d"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "439926003"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "258090004"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "757492266"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "80051207915"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-11",
    "end" : "2024-11-24"
  },
  "performer" : [{
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
      "value" : "0403044007"
    }
  }],
  "valueQuantity" : {
    "value" : 14,
    "unit" : "days",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "device" : {
    "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 14,
      "unit" : "days",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }]
}

```
