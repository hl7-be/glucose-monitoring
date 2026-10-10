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
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
<p>Mapping from <a href="StructureDefinition-BeModelObservationDiabetes.html">BeModelObservationDiabetes</a> to <a href="StructureDefinition-be-observation-diabetes.html">be-observation-diabetes</a></p>
<table class="grid">
<tr><th>Source element</th><th>Relationship</th><th>Target element</th><th>Comment</th></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.identifier">BeModelObservationDiabetes.identifier</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.identifier">Observation.identifier</a></td><td>At least one identifier is required, including the UUID slice with system fixed to be-ns-observation-diabetes. Slicing is open, so other business identifiers can be added.</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.recordedDate">BeModelObservationDiabetes.recordedDate</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.extension:recorded-date">Observation.extension:recorded-date</a></td><td></td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.observationDate_x_">BeModelObservationDiabetes.observationDate[x]</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.effective_x_">Observation.effective[x]</a></td><td>observationDate[x] and effective[x] are restricted to Period; start and end are both mandatory.</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.patient">BeModelObservationDiabetes.patient</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.subject">Observation.subject</a></td><td>Reference(BePatient).</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.recorder">BeModelObservationDiabetes.recorder</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.extension:recorder">Observation.extension:recorder</a></td><td>Inherited from BeClinicalObservation; restricted to Reference(BePractitioner | BeOrganization).</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.category">BeModelObservationDiabetes.category</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.category">Observation.category</a></td><td>Bound (preferred) to BeVSDiabetesObservationCategory: the monitoring procedure, and 258090004 Calculated or 258104002 Measured.</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.status">BeModelObservationDiabetes.status</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.status">Observation.status</a></td><td>Bound to BeVSDiabetesObservationStatus.</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.code">BeModelObservationDiabetes.code</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.code">Observation.code</a></td><td>Bound to BeVSDiabetesObservationCode.</td></tr>
<tr><td><a href="StructureDefinition-BeModelObservationDiabetes.html#s-BeModelObservationDiabetes.value_x_">BeModelObservationDiabetes.value[x]</a></td><td>equivalent</td><td><a href="StructureDefinition-be-observation-diabetes.html#s-Observation.value_x_">Observation.value[x]</a></td><td>value[x] is mandatory.</td></tr>
</table>
</div>"""

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
  * insert ConceptMapElementWithComment(BeModelObservationDiabetes.value[x], Derived value, Observation.value[x], Actual result, equivalent, value[x] is mandatory.)
