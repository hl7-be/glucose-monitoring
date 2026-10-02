// Generated from input/maps-source/map-diagnostic-report-diabetes.csv - do not edit, regenerate with:
//   python scripts/csv2conceptmap.py input/maps-source/map-diagnostic-report-diabetes.csv --source BeModelDiagnosticReportDiabetes --target be-diagnostic-report-diabetes --title 'Diabetes Report Model to BeDiagnosticReportDiabetes Mapping'
Instance: map-diagnostic-report-diabetes
InstanceOf: ConceptMap
Usage: #definition
Title: "Diabetes Report Model to BeDiagnosticReportDiabetes Mapping"
Description: "Mapping from the BeModelDiagnosticReportDiabetes logical model to the be-diagnostic-report-diabetes profile"
* url = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/ConceptMap/map-diagnostic-report-diabetes"
* name = "MapDiagnosticReportDiabetes"
* status = #draft
* experimental = false
* sourceCanonical = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes"
* targetCanonical = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes"

* group[+]
  * source = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/BeModelDiagnosticReportDiabetes"
  * target = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/StructureDefinition/be-diagnostic-report-diabetes"
  * insert ConceptMapElementWithComment(UniqueIdentifierNational, Unique business identifier of the report, DiagnosticReport.identifier:UUID, Unique identifier of the report, equivalent, System fixed to be-ns-diagnostic-report-diabetes.)
  * insert ConceptMapElementWithComment(BusinessIdentifier, Report identifier for the supplier's internal business, DiagnosticReport.identifier, Business identifier for report, equivalent, Additional identifier with the supplier's own system (identifier slicing is open\).)
  * insert ConceptMapElement(RecordedDate, Date the report was produced, DiagnosticReport.extension:recorded-date, Recording date (BeExtRecordedDate\), equivalent)
  * insert ConceptMapElementWithComment(ObservationPeriod, Period covered by the report (typically 14 to 30 days\), DiagnosticReport.effectivePeriod, Clinically relevant time/time-period for report, equivalent, effective[x] is restricted to Period; start and end are both mandatory.)
  * insert ConceptMapElementWithComment(Patient, Identifier of the patient (preferably NISS\), DiagnosticReport.subject, The subject of the report, equivalent, The model carries the NISS; in FHIR it is the identifier of the referenced patient (or Reference.identifier\). Unlike the observation profile\, subject is not restricted to BePatient.)
  * insert ConceptMapElementWithComment(Recorder, Service provider or organization that encodes the information, DiagnosticReport.extension:recorder, Recorder (BeExtRecorder\), equivalent, The model carries the NISS of the professional or the company number of the organization; in FHIR this is a reference to the corresponding practitioner\, practitioner role or organization.)
  * insert ConceptMapElementWithComment(Performer, Service provider or organization that collects the observations and produces the report, DiagnosticReport.performer, Responsible diagnostic service, equivalent, Not constrained in the profile. For the diabetes report\, performer = recorder.)
  * insert ConceptMapElementWithComment(Interpreter, Care provider who interprets the observations in the report, DiagnosticReport.resultsInterpreter, Primary result interpreter, equivalent, Reference(BePractitionerRole | BePractitioner\). Not provided by the report producer; added by the interpreting care provider.)
  * insert ConceptMapElementWithComment(Category, Category of the report, DiagnosticReport.category, Service category, equivalent, Bound to BeVSDiabetesReportCategory.)
  * insert ConceptMapElementUnmatched(Qualification, Category of diabetic patient (CAT 1/2/3\), No element in the profile carries the diabetes category. It is calculated from the diagnosis by the interpreting doctor (default CAT 3\) and is also used in Observation.referenceRange.appliesTo.)
  * insert ConceptMapElementWithComment(Device, Identification number assigned by INAMI to the sensor type, DiagnosticReport.extension:device.extension:concept.valueCodeableConcept, Sensor type (BeExtCodeableReference concept\), equivalent, The INAMI sensor type number is sent as a code with system be-ns-diabetes-device-type.)
  * insert ConceptMapElementWithComment(Code, Report code (type of procedure\), DiagnosticReport.code, Name/Code for this diagnostic report, equivalent, Bound to BeVSDiabetesReportCode (e.g. 439926003 Ambulatory continuous glucose monitoring of interstitial tissue fluid\).)
  * insert ConceptMapElementWithComment(DerivedObservations, References to the derived value observations in the report, DiagnosticReport.result, Observations, equivalent, Reference(BeObservationDiabetes\).)
  * insert ConceptMapElementUnmatched(MeasurementObservations, References to the blood glucose measurement observations used to produce the analysis, No element in the profile. DiagnosticReport.result is restricted to BeObservationDiabetes (derived values\)\, so the individual measurements are not referenced from the report.)
  * insert ConceptMapElementUnmatched(Diagnosis, Problem related to this diagnostic report, No element in the R4 profile. The R5 DiagnosticReport.supportingInfo cross-version extension was considered but is commented out in the profile.)
  * insert ConceptMapElementWithComment(Note, Report comments in free text, DiagnosticReport.extension:note, Comments about the report (BeExtSimpleNote\), equivalent, Not provided by the report producer; added by the interpreting care provider.)
  * insert ConceptMapElementWithComment(Document, PDF document containing the complete report, DiagnosticReport.presentedForm, Entire report as issued, equivalent, contentType fixed to application/pdf.)
  * insert ConceptMapElementWithComment(Status, Report status (default Final\), DiagnosticReport.status, final | partial, equivalent, Bound to BeVSDiabetesReportStatus. The status depends on the business rule on % Data Captured.)
