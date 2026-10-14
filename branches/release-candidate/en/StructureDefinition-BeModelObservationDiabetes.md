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
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.17.42.2"
  }],
  "version" : "1.0.0",
  "name" : "BeModelObservationDiabetes",
  "status" : "active",
  "date" : "2026-10-14T14:36:25+00:00",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelObservationDiabetes",
      "path" : "BeModelObservationDiabetes",
      "short" : "BeModelObservationDiabetes",
      "definition" : "Logical model representing a derived glucose monitoring observation in the context of diabetes care."
    },
    {
      "id" : "BeModelObservationDiabetes.uniqueIdentifier",
      "path" : "BeModelObservationDiabetes.uniqueIdentifier",
      "short" : "Unique observation business identifier.",
      "definition" : "Unique observation business identifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.recordedDate",
      "path" : "BeModelObservationDiabetes.recordedDate",
      "short" : "Date and time when the observation was entered by the recorder. (DateTime format)",
      "definition" : "Date and time when the observation was entered by the recorder. (DateTime format)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.observationPeriod",
      "path" : "BeModelObservationDiabetes.observationPeriod",
      "short" : "Date or observation period (e.g. 27/11/2023) (DateTime format)",
      "definition" : "Date or observation period (e.g. 27/11/2023) (DateTime format)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.patient",
      "path" : "BeModelObservationDiabetes.patient",
      "short" : "Is the unique identifier of the patient. The unique identifier must be the National Patient Register Number (NISS).",
      "definition" : "Is the unique identifier of the patient. The unique identifier must be the National Patient Register Number (NISS).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.recorder",
      "path" : "BeModelObservationDiabetes.recorder",
      "short" : "Is the unique identifier (national register number) of the health professional or organization (company number) which encodes the information and takes responsibility for its content.",
      "definition" : "Is the unique identifier (national register number) of the health professional or organization (company number) which encodes the information and takes responsibility for its content.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.category",
      "path" : "BeModelObservationDiabetes.category",
      "short" : "Continuous Glucose Monitoring category and observation type (Measured or Calculated).",
      "definition" : "Continuous Glucose Monitoring category and observation type (Measured or Calculated).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-category"
      }
    },
    {
      "id" : "BeModelObservationDiabetes.status",
      "path" : "BeModelObservationDiabetes.status",
      "short" : "Status of the observation record. The default status is 'final'.",
      "definition" : "Status of the observation record. The default status is 'final'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-status"
      }
    },
    {
      "id" : "BeModelObservationDiabetes.code",
      "path" : "BeModelObservationDiabetes.code",
      "short" : "Code corresponding to the derived value. e.g., TAR: Time Above Range, TIR: Time In Range…",
      "definition" : "Code corresponding to the derived value. e.g., TAR: Time Above Range, TIR: Time In Range…",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ValueSet/be-vs-diabetes-observation-code"
      }
    },
    {
      "id" : "BeModelObservationDiabetes.value",
      "path" : "BeModelObservationDiabetes.value",
      "short" : "Derived value. Value[x]",
      "definition" : "Derived value. Value[x]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "BeModelObservationDiabetes.referenceRange",
      "path" : "BeModelObservationDiabetes.referenceRange",
      "short" : "Structure composed of reference elements allowing the interpretation of measurements: ReferenceRange.Low (0...1) ReferenceRange.High (0...1) ReferenceRange.AppliesTo (0...*) We automatically work according to the ADA standards which define target value intervals for the following derived observations: Coded1 Coefficient of Variation2 Days Sensor Worn3% Data Captured4 TAR % (Time above range - very high)5 TAR % (Time above range - high)6 SHOOTING % (Time in Range)7 TBR % (Time below range - low)8 TBR % (Time below range - very low)By observation code derived from this list, we will potentially find:A) Target - reference interval to indicate the target lower limit (“Low”) and upper limit (“High”). Note that these limits do not depend on the diabetes category.For example: for TIR, it is recommended that the blood glucose value be at least 70% of the time in the “normal” range.So for ReferenceRange “TIR_REF”→ TIR_REF.Low = 70%→ TIR_REF.High = 100%B) filter - application interval with a lower limit and an upper limit to filter the measurement observations considered in the calculation of the derived value.This defines the range of counted values. These ranges may vary by diabetes category.For example: the “normal” range is between 70 mg/dL and 180 mg/dL for category 1 and 3, and between 63 mg/dL and 140 mg/dL for category 2.So for ReferenceRange “TIR_REF”→ TIR_REF.AppliesTo(CAT1, ≥70 mg/dL, ≤180 mg/dL)→ TIR_REF.AppliesTo(CAT2, ≥63 mg/dL, ≤140 mg/dL)→ TIR_REF.AppliesTo(CAT3, ≥70 mg/dL, ≤180 mg/dL) As we base ourselves on ADA standards, there is little point in passing all this information for each observation.If, however, a doctor changes values ​​(target and/or filter) for a specific patient AND you want to communicate these changes outside of your patient file, this mechanism provides the means.",
      "definition" : "Structure composed of reference elements allowing the interpretation of measurements: ReferenceRange.Low (0...1) ReferenceRange.High (0...1) ReferenceRange.AppliesTo (0...*) We automatically work according to the ADA standards which define target value intervals for the following derived observations: Coded1 Coefficient of Variation2 Days Sensor Worn3% Data Captured4 TAR % (Time above range - very high)5 TAR % (Time above range - high)6 SHOOTING % (Time in Range)7 TBR % (Time below range - low)8 TBR % (Time below range - very low)By observation code derived from this list, we will potentially find:A) Target - reference interval to indicate the target lower limit (“Low”) and upper limit (“High”). Note that these limits do not depend on the diabetes category.For example: for TIR, it is recommended that the blood glucose value be at least 70% of the time in the “normal” range.So for ReferenceRange “TIR_REF”→ TIR_REF.Low = 70%→ TIR_REF.High = 100%B) filter - application interval with a lower limit and an upper limit to filter the measurement observations considered in the calculation of the derived value.This defines the range of counted values. These ranges may vary by diabetes category.For example: the “normal” range is between 70 mg/dL and 180 mg/dL for category 1 and 3, and between 63 mg/dL and 140 mg/dL for category 2.So for ReferenceRange “TIR_REF”→ TIR_REF.AppliesTo(CAT1, ≥70 mg/dL, ≤180 mg/dL)→ TIR_REF.AppliesTo(CAT2, ≥63 mg/dL, ≤140 mg/dL)→ TIR_REF.AppliesTo(CAT3, ≥70 mg/dL, ≤180 mg/dL) As we base ourselves on ADA standards, there is little point in passing all this information for each observation.If, however, a doctor changes values ​​(target and/or filter) for a specific patient AND you want to communicate these changes outside of your patient file, this mechanism provides the means.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Range"
      }]
    }]
  }
}

```
