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
  * insert ConceptMapElementWithComment(UniqueIdentifier, Unique observation business identifier, Observation.identifier:UUID, Unique identifier of the observation, equivalent, System fixed to be-ns-observation-diabetes.)
  * insert ConceptMapElement(RecordedDate, Date of encoding of the observation by the recorder, Observation.extension:recorded-date, Recording date (BeExtRecordedDate\), equivalent)
  * insert ConceptMapElementWithComment(ObservationPeriod, Date or observation period, Observation.effectivePeriod, Period covered by the observation, equivalent, effective[x] is restricted to Period; start and end are both mandatory. A single date is sent as a period with the same start and end.)
  * insert ConceptMapElementWithComment(Patient, Unique identifier of the patient (NISS\), Observation.subject, Who the observation is about, equivalent, Reference(BePatient\). The model carries the NISS; in FHIR it is the identifier of the referenced BePatient (or Reference.identifier\).)
  * insert ConceptMapElementWithComment(Recorder, Health professional or organization that encodes the information, Observation.extension:recorder, Recorder (BeExtRecorder\), equivalent, The model carries the NISS of the professional or the company number of the organization; in FHIR this is a reference to the corresponding practitioner\, practitioner role or organization.)
  * insert ConceptMapElementWithComment(Category, Glucose monitoring category, Observation.category, Classification of type of observation, equivalent, Bound to BeVSDiabetesObservationCategory (698472009 Glucose monitoring\).)
  * insert ConceptMapElementWithComment(Status, Status of the observation, Observation.status, final | entered-in-error, equivalent, 0..1 in the model but 1..1 in the profile. The model refers to the SNOMED CT code 445665009 (Final report\); in FHIR this is the observation-status code final (BeVSDiabetesObservationStatus\).)
  * insert ConceptMapElementWithComment(Code, Code of the derived value (e.g. TAR or TIR\), Observation.code, Type of derived observation, equivalent, Bound to BeVSDiabetesObservationCode.)
  * insert ConceptMapElementWithComment(Value, Derived value, Observation.valueQuantity, Actual result, equivalent, The profile requires value[x] (1..1\) but does not restrict it to Quantity.)
  * insert ConceptMapElementWithComment(ReferenceRange, Target and filter ranges for interpreting the derived value, Observation.referenceRange, Provides guide for interpretation, equivalent, Target limits map to referenceRange.low and referenceRange.high. Category-dependent filter ranges (CAT 1/2/3\) use referenceRange.appliesTo. Only sent when the values differ from the ADA defaults.)
