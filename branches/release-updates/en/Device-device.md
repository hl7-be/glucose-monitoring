# Use case 5.3 (Device) - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Example Device: Use case 5.3 (Device)

**type**: FreeStyle Libre® 2 Flash Glucose Monitoring System



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "device",
  "type" : {
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/CodeSystem/be-cs-diabetes-device-type",
      "code" : "701010000576"
    }]
  }
}

```
