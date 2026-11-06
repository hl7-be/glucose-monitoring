# Diabetes Observation Model to BeObservationDiabetes Mapping - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ConceptMap: Diabetes Observation Model to BeObservationDiabetes Mapping 

 
Mapping from the BeModelObservationDiabetes logical model to the be-observation-diabetes profile 

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Element | Description | Relation | Resource | Element | Description | Notes |
| `UniqueIdentifier` | Unique observation business identifier | equivalent | Observation | `identifier:UUID` | Unique identifier of the observation | System fixed to be-ns-observation-diabetes. |
| `RecordedDate` | Date of encoding of the observation by the recorder | equivalent | Observation | `extension:recorded-date` | Recording date (BeExtRecordedDate) |  |
| `ObservationPeriod` | Date or observation period | equivalent | Observation | `effectivePeriod` | Period covered by the observation | effective[x] is restricted to Period; start and end are both mandatory. A single date is sent as a period with the same start and end. |
| `Patient` | Unique identifier of the patient (NISS) | equivalent | Observation | `subject` | Who the observation is about | Reference(BePatient). The model carries the NISS; in FHIR it is the identifier of the referenced BePatient (or Reference.identifier). |
| `Recorder` | Health professional or organization that encodes the information | equivalent | Observation | `extension:recorder` | Recorder (BeExtRecorder) | The model carries the NISS of the professional or the company number of the organization; in FHIR this is a reference to the corresponding practitioner, practitioner role or organization. |
| `Category` | Glucose monitoring category | equivalent | Observation | `category` | Classification of type of observation | Bound to BeVSDiabetesObservationCategory (698472009 Glucose monitoring). |
| `Status` | Status of the observation | equivalent | Observation | `status` | final | entered-in-error | 0..1 in the model but 1..1 in the profile. The model refers to the SNOMED CT code 445665009 (Final report); in FHIR this is the observation-status code final (BeVSDiabetesObservationStatus). |
| `Code` | Code of the derived value (e.g. TAR or TIR) | equivalent | Observation | `code` | Type of derived observation | Bound to BeVSDiabetesObservationCode. |
| `Value` | Derived value | equivalent | Observation | `valueQuantity` | Actual result | The profile requires value[x] (1..1) but does not restrict it to Quantity. |
| `ReferenceRange` | Target and filter ranges for interpreting the derived value | equivalent | Observation | `referenceRange` | Provides guide for interpretation | Target limits map to referenceRange.low and referenceRange.high. Category-dependent filter ranges (CAT 1/2/3) use referenceRange.appliesTo. Only sent when the values differ from the ADA defaults. |



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "map-observation-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ConceptMap/map-observation-diabetes",
  "version" : "1.0.0",
  "name" : "MapObservationDiabetes",
  "title" : "Diabetes Observation Model to BeObservationDiabetes Mapping",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-02T13:33:25+00:00",
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
  "description" : "Mapping from the BeModelObservationDiabetes logical model to the be-observation-diabetes profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "sourceCanonical" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes",
  "targetCanonical" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes",
  "group" : [{
    "source" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes",
    "target" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes",
    "element" : [{
      "code" : "UniqueIdentifier",
      "display" : "Unique observation business identifier",
      "target" : [{
        "code" : "Observation.identifier:UUID",
        "display" : "Unique identifier of the observation",
        "equivalence" : "equivalent",
        "comment" : "System fixed to be-ns-observation-diabetes."
      }]
    },
    {
      "code" : "RecordedDate",
      "display" : "Date of encoding of the observation by the recorder",
      "target" : [{
        "code" : "Observation.extension:recorded-date",
        "display" : "Recording date (BeExtRecordedDate)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ObservationPeriod",
      "display" : "Date or observation period",
      "target" : [{
        "code" : "Observation.effectivePeriod",
        "display" : "Period covered by the observation",
        "equivalence" : "equivalent",
        "comment" : "effective[x] is restricted to Period; start and end are both mandatory. A single date is sent as a period with the same start and end."
      }]
    },
    {
      "code" : "Patient",
      "display" : "Unique identifier of the patient (NISS)",
      "target" : [{
        "code" : "Observation.subject",
        "display" : "Who the observation is about",
        "equivalence" : "equivalent",
        "comment" : "Reference(BePatient). The model carries the NISS; in FHIR it is the identifier of the referenced BePatient (or Reference.identifier)."
      }]
    },
    {
      "code" : "Recorder",
      "display" : "Health professional or organization that encodes the information",
      "target" : [{
        "code" : "Observation.extension:recorder",
        "display" : "Recorder (BeExtRecorder)",
        "equivalence" : "equivalent",
        "comment" : "The model carries the NISS of the professional or the company number of the organization; in FHIR this is a reference to the corresponding practitioner, practitioner role or organization."
      }]
    },
    {
      "code" : "Category",
      "display" : "Glucose monitoring category",
      "target" : [{
        "code" : "Observation.category",
        "display" : "Classification of type of observation",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesObservationCategory (698472009 Glucose monitoring)."
      }]
    },
    {
      "code" : "Status",
      "display" : "Status of the observation",
      "target" : [{
        "code" : "Observation.status",
        "display" : "final | entered-in-error",
        "equivalence" : "equivalent",
        "comment" : "0..1 in the model but 1..1 in the profile. The model refers to the SNOMED CT code 445665009 (Final report); in FHIR this is the observation-status code final (BeVSDiabetesObservationStatus)."
      }]
    },
    {
      "code" : "Code",
      "display" : "Code of the derived value (e.g. TAR or TIR)",
      "target" : [{
        "code" : "Observation.code",
        "display" : "Type of derived observation",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesObservationCode."
      }]
    },
    {
      "code" : "Value",
      "display" : "Derived value",
      "target" : [{
        "code" : "Observation.valueQuantity",
        "display" : "Actual result",
        "equivalence" : "equivalent",
        "comment" : "The profile requires value[x] (1..1) but does not restrict it to Quantity."
      }]
    },
    {
      "code" : "ReferenceRange",
      "display" : "Target and filter ranges for interpreting the derived value",
      "target" : [{
        "code" : "Observation.referenceRange",
        "display" : "Provides guide for interpretation",
        "equivalence" : "equivalent",
        "comment" : "Target limits map to referenceRange.low and referenceRange.high. Category-dependent filter ranges (CAT 1/2/3) use referenceRange.appliesTo. Only sent when the values differ from the ADA defaults."
      }]
    }]
  }]
}

```
