# BeModelObservationDiabetes - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Logical Model: BeModelObservationDiabetes 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.glucose-monitoring|current/StructureDefinition/StructureDefinition-BeModelObservationDiabetes.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelObservationDiabetes.csv), [Excel](../StructureDefinition-BeModelObservationDiabetes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelObservationDiabetes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.17.42.2"
  }],
  "version" : "1.0.0",
  "name" : "BeModelObservationDiabetes",
  "status" : "active",
  "date" : "2026-10-10T16:39:07+00:00",
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
  "description" : "Logical model representing a derived glucose monitoring observation in the context of diabetes care.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelClinicalObservation",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelObservationDiabetes",
      "path" : "BeModelObservationDiabetes",
      "short" : "BeModelObservationDiabetes",
      "definition" : "Logical model representing a derived glucose monitoring observation in the context of diabetes care."
    },
    {
      "id" : "BeModelObservationDiabetes.identifier",
      "path" : "BeModelObservationDiabetes.identifier",
      "short" : "Unique business identifier of the observation",
      "definition" : "Unique business identifier of the observation"
    },
    {
      "id" : "BeModelObservationDiabetes.recordedDate",
      "path" : "BeModelObservationDiabetes.recordedDate",
      "short" : "Date of encoding of the observation by the recorder",
      "definition" : "Date of encoding of the observation by the recorder. See management rule 13."
    },
    {
      "id" : "BeModelObservationDiabetes.observationDate[x]",
      "path" : "BeModelObservationDiabetes.observationDate[x]",
      "short" : "Observation period",
      "definition" : "Observation period. For calculated values, the start and end of the period are mandatory.",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.recorder",
      "path" : "BeModelObservationDiabetes.recorder",
      "short" : "The health professional or organization which encodes the information and takes responsibility for its content",
      "definition" : "The health professional or organization which encodes the information and takes responsibility for its content",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.patient",
      "path" : "BeModelObservationDiabetes.patient",
      "definition" : "The patient that this observation is about. For GDPR reasons, sensor suppliers may not use the NISS of their users in external communication with other parties. Implementations take this constraint into account.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.category",
      "path" : "BeModelObservationDiabetes.category",
      "short" : "Category of the observation",
      "definition" : "Category of the observation: the monitoring procedure, and whether the value is calculated (derived observation) or measured (measurement observation). See BeVSDiabetesObservationCategory",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-category"
      }
    },
    {
      "id" : "BeModelObservationDiabetes.code",
      "path" : "BeModelObservationDiabetes.code",
      "short" : "Code corresponding to the derived value",
      "definition" : "Code corresponding to the derived value (coded in SNOMED CT), e.g. TAR Time Above Range, TIR Time In Range. See BeVSDiabetesObservationCode",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-code"
      }
    },
    {
      "id" : "BeModelObservationDiabetes.value[x]",
      "path" : "BeModelObservationDiabetes.value[x]",
      "short" : "Derived value",
      "definition" : "Derived value",
      "min" : 1
    },
    {
      "id" : "BeModelObservationDiabetes.status",
      "path" : "BeModelObservationDiabetes.status",
      "short" : "Status of the observation, by default “final”",
      "definition" : "Status of the observation, by default “final”",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-status"
      }
    }]
  }
}

```
