// Generated from input/maps-source/map-observation-diabetes.csv - do not edit, regenerate with:
//   python scripts/csv2conceptmap.py input/maps-source/map-observation-diabetes.csv --source BeModelObservationDiabetes --target be-observation-diabetes --title 'Diabetes Observation Model to BeObservationDiabetes Mapping'
Instance: map-observation-diabetes
InstanceOf: ConceptMap
Usage: #definition
Title: "Diabetes Observation Model to BeObservationDiabetes Mapping"
Description: "Mapping from the BeModelObservationDiabetes logical model to the be-observation-diabetes profile"
* url = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ConceptMap/map-observation-diabetes"
* name = "MapObservationDiabetes"
* status = #draft
* experimental = false

* group[+]
  * source = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes"
  * target = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes"
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.identifier, Unique business identifier of the observation, Observation.identifier, Business Identifier for observation, equivalent, At least one identifier is required\, including the UUID slice with system fixed to be-ns-observation-diabetes. Slicing is open\, so other business identifiers can be added.)
  * insert ConceptMapElement(BeModelObservationDiabetes.recordedDate, Date of encoding of the observation by the recorder, Observation.extension:recorded-date, BeExtRecordedDate, equivalent)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.observationDate[x], Observation period, Observation.effective[x], Clinically relevant time/time-period for observation, equivalent, observationDate[x] and effective[x] are restricted to Period; start and end are both mandatory.)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.patient, The patient that this observation is about, Observation.subject, Who and/or what the observation is about, equivalent, Reference(BePatient\).)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.recorder, The health professional or organization which encodes the information and takes responsibility for its content, Observation.extension:recorder, BeExtRecorder, equivalent, Inherited from BeClinicalObservation; restricted to Reference(BePractitioner | BeOrganization\).)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.category, Category of the observation, Observation.category, Classification of  type of observation, equivalent, Bound (preferred\) to BeVSDiabetesObservationCategory: the monitoring procedure\, and 258090004 Calculated or 258104002 Measured.)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.status, Status of the observation\, by default “final”, Observation.status, registered | preliminary | final | amended +, equivalent, Bound to BeVSDiabetesObservationStatus.)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.code, Code corresponding to the derived value, Observation.code, Type of observation (code / type\), equivalent, Bound to BeVSDiabetesObservationCode.)
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.value[x], Derived value, Observation.value[x], Actual result, equivalent, value[x] is restricted to Quantity and is mandatory.)
