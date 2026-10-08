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
* sourceCanonical = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes"
* targetCanonical = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes"

* group[+]
  * source = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelObservationDiabetes"
  * target = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-observation-diabetes"
  * insert ConceptMapElementWithComment(BusinessIdentifier, Unique business identifier of the observation, Observation.identifier, Business identifier for observation, equivalent, At least one identifier is required\, including the UUID slice with system fixed to be-ns-observation-diabetes. Slicing is open\, so other business identifiers can be added.)
  * insert ConceptMapElement(RecordedDate, Date of encoding of the observation by the recorder, Observation.extension:recorded-date, Recording date (BeExtRecordedDate\), equivalent)
  * insert ConceptMapElementWithComment(ObservationPeriod, Date or observation period, Observation.effectivePeriod, Period covered by the observation, equivalent, effective[x] is restricted to Period; start and end are both mandatory. A single date is sent as a period with the same start and end.)
  * insert ConceptMapElementWithComment(Patient, The patient that this observation is about, Observation.subject, Who the observation is about, equivalent, Reference(BePatient\).)
  * insert ConceptMapElementWithComment(Recorder, Health professional or organization that encodes the information and takes responsibility for its content, Observation.extension:recorder, Recorder (BeExtRecorder\), equivalent, Inherited from BeClinicalObservation; restricted to Reference(BePractitioner | BeOrganization\).)
  * insert ConceptMapElementWithComment(Category, Glucose monitoring category, Observation.category, Classification of type of observation, equivalent, Bound (preferred\) to BeVSDiabetesObservationCategory (698472009 Glucose monitoring\).)
  * insert ConceptMapElementWithComment(Device, The sensor device used to create the observation, Observation.device, (Measurement\) Device, equivalent, Not further constrained; inherited from BeClinicalObservation.)
  * insert ConceptMapElementWithComment(Status, Status of the observation (default final\), Observation.status, final | entered-in-error, equivalent, Bound to BeVSDiabetesObservationStatus.)
  * insert ConceptMapElementWithComment(Code, Code of the derived value (e.g. TAR or TIR\), Observation.code, Type of derived observation, equivalent, Bound to BeVSDiabetesObservationCode.)
  * insert ConceptMapElementWithComment(Value, Derived value, Observation.valueQuantity, Actual result, equivalent, value[x] is restricted to Quantity and is mandatory.)
  * insert ConceptMapElementWithComment(ReferenceRange, Target and filter ranges for interpreting the derived value, Observation.referenceRange, Provides guide for interpretation, equivalent, Target limits map to referenceRange.low and referenceRange.high. Category-dependent filter ranges (CAT 1/2/3\) use referenceRange.appliesTo. Only sent when the values differ from the ADA defaults.)
