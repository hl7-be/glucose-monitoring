# Use case 5.3 (Diagnostic Report) - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Example DiagnosticReport: Use case 5.3 (Diagnostic Report)

Profile: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)

## Ambulatory continuous glucose monitoring of interstitial tissue fluid (procedure) (Chemical pathology report (record artifact), Diabetic medicine (qualifier value), Endocrinology (qualifier value)) 

| | |
| :--- | :--- |
| Subject | Unable to get Patient Details |
| Relevant Time | 2024-11-11 --> 2024-11-24 |
| Identifier | [BeNSDiagnosticReportDiabetes](NamingSystem-be-ns-diagnostic-report-diabetes.md)/6e126868-aa6a-41ef-b7fb-3c8b690d8ffb |
| Presented Form | application/pdf: JVBERi0xLjANCjEgMCBvYmo8PC9QYWdl... |

**Report Details**

* **Code**: [Coefficient of variation](Bundle-uc53-bundle.md#urn-uuid-c611b58d-27bb-49e2-b3ec-bd59e986f5f3)
  * **Value**: 6 % (Details: UCUM code% = '%')
  * **Reference Range**: <34 % (Details: UCUM code% = '%')
  * **Flags**: Final
* **Code**: [Days sensor worn](Bundle-uc53-bundle.md#urn-uuid-397dffb4-a88a-47d0-b10d-beffcbf6157d)
  * **Value**: 14 days (Details: UCUM coded = 'd')
  * **Reference Range**: >14 days (Details: UCUM coded = 'd')
  * **Flags**: Final
* **Code**: [Percentage of data captured](Bundle-uc53-bundle.md#urn-uuid-6756477d-b57a-4611-b048-374d46f52908)
  * **Value**: 96 % (Details: UCUM code% = '%')
  * **Reference Range**: >70 % (Details: UCUM code% = '%')
  * **Flags**: Final
* **Code**: [Percentage of time above level 2 hyperglycaemic threshold to total continuous glucose monitoring time using minimally-invasive continuous glucose monitoring device](Bundle-uc53-bundle.md#urn-uuid-b44fe5d5-f57b-4424-b628-d2baeb447738)
  * **Value**: 20 % (Details: UCUM code% = '%')
  * **Reference Range**: <5 % (Details: UCUM code% = '%')for≥ 250 mg/dL
  * **Flags**: Final
* **Code**: [Percentage of time above level 1 hyperglycaemic threshold to total continuous glucose monitoring time using minimally-invasive continuous glucose monitoring device](Bundle-uc53-bundle.md#urn-uuid-b28ef33b-0480-4bde-a5df-94988813110b)
  * **Value**: 23 % (Details: UCUM code% = '%')
  * **Reference Range**: <25 % (Details: UCUM code% = '%')for≥180 mg/dL, <250 mg/dL
  * **Flags**: Final
* **Code**: [Percentage of time in target glucose range to total glucose monitoring time using minimally-invasive continuous glucose monitoring device (observable entity)](Bundle-uc53-bundle.md#urn-uuid-449a728d-dfb4-422d-94aa-1a2d43849ee5)
  * **Value**: 47 % (Details: UCUM code% = '%')
  * **Reference Range**: >25 % (Details: UCUM code% = '%')for≥70 mg/dL, <180 mg/dL
  * **Flags**: Final
* **Code**: [Percentage of time below level 1 hypoglycaemic threshold to total continuous glucose monitoring time using minimally-invasive continuous glucose monitoring device](Bundle-uc53-bundle.md#urn-uuid-a6665182-e11a-40a9-ae83-9b093a353f16)
  * **Value**: 4 % (Details: UCUM code% = '%')
  * **Reference Range**: <5 % (Details: UCUM code% = '%')for≥54 mg/dL, <70 mg/dL
  * **Flags**: Final
* **Code**: [Percentage of time below level 2 hypoglycaemic threshold to total continuous glucose monitoring time using minimally-invasive continuous glucose monitoring device (observable entity)](Bundle-uc53-bundle.md#urn-uuid-454a29d0-0893-458a-b2e5-25452b89e29a)
  * **Value**: 6 % (Details: UCUM code% = '%')
  * **Reference Range**: <2 % (Details: UCUM code% = '%')for< 54 mg/dL
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "uc53-pdf-derived",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes"]
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
  },
  {
    "extension" : [{
      "url" : "concept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/NamingSystem/be-ns-diabetes-device-type",
          "code" : "701010000576"
        }]
      }
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference"
  }],
  "identifier" : [{
    "system" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/NamingSystem/be-ns-diagnostic-report-diabetes",
    "value" : "6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "4311000179106"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "408475000"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "394583002"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11000172109",
      "code" : "439926003"
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
  "result" : [{
    "reference" : "urn:uuid:c611b58d-27bb-49e2-b3ec-bd59e986f5f3"
  },
  {
    "reference" : "urn:uuid:397dffb4-a88a-47d0-b10d-beffcbf6157d"
  },
  {
    "reference" : "urn:uuid:6756477d-b57a-4611-b048-374d46f52908"
  },
  {
    "reference" : "urn:uuid:b44fe5d5-f57b-4424-b628-d2baeb447738"
  },
  {
    "reference" : "urn:uuid:b28ef33b-0480-4bde-a5df-94988813110b"
  },
  {
    "reference" : "urn:uuid:449a728d-dfb4-422d-94aa-1a2d43849ee5"
  },
  {
    "reference" : "urn:uuid:a6665182-e11a-40a9-ae83-9b093a353f16"
  },
  {
    "reference" : "urn:uuid:454a29d0-0893-458a-b2e5-25452b89e29a"
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "data" : "JVBERi0xLjANCjEgMCBvYmo8PC9QYWdlcyAyIDAgUj4+ZW5kb2JqIDIgMCBvYmo8PC9LaWRzWzMgMCBSXS9Db3VudCAxPj5lbmRvYmogMyAwIG9iajw8L01lZGlhQm94WzAgMCAzIDNdPj5lbmRvYmoNCnRyYWlsZXI8PC9Sb290IDEgMCBSPj4="
  }]
}

```
