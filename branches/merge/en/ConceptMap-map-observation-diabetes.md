# Diabetes Observation Model to BeObservationDiabetes Mapping - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## ConceptMap: Diabetes Observation Model to BeObservationDiabetes Mapping 

 
Mapping from the BeModelObservationDiabetes logical model to the be-observation-diabetes profile 

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Element | Description | Relation | Resource | Element | Description | Notes |
| `identifier` | Unique business identifier of the observation | equivalent | Observation | `identifier` | Business Identifier for observation | At least one identifier is required, including the UUID slice with system fixed to be-ns-observation-diabetes. Slicing is open, so other business identifiers can be added. |
| `recordedDate` | Date of encoding of the observation by the recorder | equivalent | Observation | `extension:recorded-date` | BeExtRecordedDate |  |
| `observationDate[x]` | Observation period | equivalent | Observation | `effective[x]` | Clinically relevant time/time-period for observation | observationDate[x] and effective[x] are restricted to Period; start and end are both mandatory. |
| `patient` | The patient that this observation is about | equivalent | Observation | `subject` | Who and/or what the observation is about | Reference(BePatient). |
| `recorder` | The health professional or organization which encodes the information and takes responsibility for its content | equivalent | Observation | `extension:recorder` | BeExtRecorder | Inherited from BeClinicalObservation; restricted to Reference(BePractitioner | BeOrganization). |
| `category` | Category of the observation | equivalent | Observation | `category` | Classification of type of observation | Bound (preferred) to BeVSDiabetesObservationCategory: the monitoring procedure, and 258090004 Calculated or 258104002 Measured. |
| `status` | Status of the observation, by default “final” | equivalent | Observation | `status` | registered | preliminary | final | amended + | Bound to BeVSDiabetesObservationStatus. |
| `code` | Code corresponding to the derived value | equivalent | Observation | `code` | Type of observation (code / type) | Bound to BeVSDiabetesObservationCode. |
| `value[x]` | Derived value | equivalent | Observation | `value[x]` | Actual result | value[x] is mandatory. |



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "map-observation-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ConceptMap/map-observation-diabetes",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.17.18.2"
  },
  "version" : "1.0.0",
  "name" : "MapObservationDiabetes",
  "title" : "Diabetes Observation Model to BeObservationDiabetes Mapping",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Mapping from the BeModelObservationDiabetes logical model to the be-observation-diabetes profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "group" : [{
    "source" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes",
    "target" : "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes",
    "element" : [{
      "code" : "BeModelObservationDiabetes.identifier",
      "display" : "Unique business identifier of the observation",
      "target" : [{
        "code" : "Observation.identifier",
        "display" : "Business Identifier for observation",
        "equivalence" : "equivalent",
        "comment" : "At least one identifier is required, including the UUID slice with system fixed to be-ns-observation-diabetes. Slicing is open, so other business identifiers can be added."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.recordedDate",
      "display" : "Date of encoding of the observation by the recorder",
      "target" : [{
        "code" : "Observation.extension:recorded-date",
        "display" : "BeExtRecordedDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.observationDate[x]",
      "display" : "Observation period",
      "target" : [{
        "code" : "Observation.effective[x]",
        "display" : "Clinically relevant time/time-period for observation",
        "equivalence" : "equivalent",
        "comment" : "observationDate[x] and effective[x] are restricted to Period; start and end are both mandatory."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.patient",
      "display" : "The patient that this observation is about",
      "target" : [{
        "code" : "Observation.subject",
        "display" : "Who and/or what the observation is about",
        "equivalence" : "equivalent",
        "comment" : "Reference(BePatient)."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.recorder",
      "display" : "The health professional or organization which encodes the information and takes responsibility for its content",
      "target" : [{
        "code" : "Observation.extension:recorder",
        "display" : "BeExtRecorder",
        "equivalence" : "equivalent",
        "comment" : "Inherited from BeClinicalObservation; restricted to Reference(BePractitioner | BeOrganization)."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.category",
      "display" : "Category of the observation",
      "target" : [{
        "code" : "Observation.category",
        "display" : "Classification of  type of observation",
        "equivalence" : "equivalent",
        "comment" : "Bound (preferred) to BeVSDiabetesObservationCategory: the monitoring procedure, and 258090004 Calculated or 258104002 Measured."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.status",
      "display" : "Status of the observation, by default “final”",
      "target" : [{
        "code" : "Observation.status",
        "display" : "registered | preliminary | final | amended +",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesObservationStatus."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.code",
      "display" : "Code corresponding to the derived value",
      "target" : [{
        "code" : "Observation.code",
        "display" : "Type of observation (code / type)",
        "equivalence" : "equivalent",
        "comment" : "Bound to BeVSDiabetesObservationCode."
      }]
    },
    {
      "code" : "BeModelObservationDiabetes.value[x]",
      "display" : "Derived value",
      "target" : [{
        "code" : "Observation.value[x]",
        "display" : "Actual result",
        "equivalence" : "equivalent",
        "comment" : "value[x] is mandatory."
      }]
    }]
  }]
}

```
