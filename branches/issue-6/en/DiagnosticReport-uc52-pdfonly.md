# Use case 5.2 (Diagnostic Report) - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Example DiagnosticReport: Use case 5.2 (Diagnostic Report)

Profile: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)

## Ambulatory continuous glucose monitoring of interstitial tissue fluid (procedure) (Chemical pathology report (record artifact), Diabetic medicine (qualifier value), Endocrinology (qualifier value)) 

| | |
| :--- | :--- |
| Subject | Unable to get Patient Details |
| Relevant Time | 2024-11-11 --> 2024-11-24 |
| Identifier | [BeNSDiagnosticReportDiabetes](NamingSystem-be-ns-diagnostic-report-diabetes.md)/6e126868-aa6a-41ef-b7fb-3c8b690d8ffb |
| Presented Form | application/pdf: JVBERi0xLjANCjEgMCBvYmo8PC9QYWdl... |

**Report Details**



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "uc52-pdfonly",
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
          "system" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/CodeSystem/be-cs-diabetes-device-type",
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
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "data" : "JVBERi0xLjANCjEgMCBvYmo8PC9QYWdlcyAyIDAgUj4+ZW5kb2JqIDIgMCBvYmo8PC9LaWRzWzMgMCBSXS9Db3VudCAxPj5lbmRvYmogMyAwIG9iajw8L01lZGlhQm94WzAgMCAzIDNdPj5lbmRvYmoNCnRyYWlsZXI8PC9Sb290IDEgMCBSPj4="
  }]
}

```
