# Use case 5.3 (Composition) - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Example Composition: Use case 5.3 (Composition)

**status**: Final

**type**: Ambulatory continuous glucose monitoring of interstitial tissue fluid (procedure)

**date**: 2024-11-25

**author**: Identifier: [BeNIHDINamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/NamingSystem-be-nihdi.html)/0403044007

**title**: Diabetes device report



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "uc53-composition",
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "439926003"
    }]
  },
  "date" : "2024-11-25",
  "author" : [{
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
      "value" : "0403044007"
    }
  }],
  "title" : "Diabetes device report",
  "section" : [{
    "entry" : [{
      "reference" : "urn:uuid:6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
    }]
  }]
}

```
