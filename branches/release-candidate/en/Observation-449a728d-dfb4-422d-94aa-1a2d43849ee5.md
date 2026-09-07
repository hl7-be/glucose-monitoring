# Use case 5.3 (TIR Observation) - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Example Observation: Use case 5.3 (TIR Observation)

Profile: [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)

**BeExtRecordedDate**: 2024-11-25

**BeExtRecorder**: Identifier: [BeNIHDINamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/NamingSystem-be-nihdi.html)/0403044007

**identifier**: [BeNSObservationDiabetes](NamingSystem-be-ns-observation-diabetes.md)/449a728d-dfb4-422d-94aa-1a2d43849ee5

**status**: Final

**category**: Ambulatory continuous glucose monitoring of interstitial tissue fluid (procedure), Calculated

**code**: Percentage of time in target glucose range to total glucose monitoring time using minimally-invasive continuous glucose monitoring device (observable entity)

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/NamingSystem-be-ssin.html)/80051207915

**effective**: 2024-11-11 --> 2024-11-24

**performer**: Identifier: [BeNIHDINamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/NamingSystem-be-nihdi.html)/0403044007

**value**: 47 % (Details: UCUM code% = '%')

**device**: [Device: type = 701010000576](Bundle-uc53-bundle.md#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **AppliesTo** |
| * | 25 % (Details: UCUM code% = '%') | ≥70 mg/dL, <180 mg/dL |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "449a728d-dfb4-422d-94aa-1a2d43849ee5",
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
    "value" : "449a728d-dfb4-422d-94aa-1a2d43849ee5"
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
      "code" : "141231000172103"
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
    "value" : 47,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "device" : {
    "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 25,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "appliesTo" : [{
      "text" : "≥70 mg/dL, <180 mg/dL"
    }]
  }]
}

```
