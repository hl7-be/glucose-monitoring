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
  * insert ConceptMapElementWithComment(BusinessIdentifier, Unique business identifier of the report, DiagnosticReport.identifier, Business identifier for report, equivalent, At least one identifier is required\, including the UUID slice with system fixed to be-ns-diagnostic-report-diabetes. Slicing is open\, so other business identifiers can be added.)
  * insert ConceptMapElement(RecordedDate, Date of the last update of the report, DiagnosticReport.extension:recorded-date, Recording date (BeExtRecordedDate\), equivalent)
  * insert ConceptMapElementWithComment(ObservationPeriod, Period covered by the report (typically 14 to 30 days\), DiagnosticReport.effectivePeriod, Clinically relevant time/time-period for report, equivalent, effective[x] is restricted to Period; start and end are both mandatory.)
  * insert ConceptMapElementWithComment(Patient, The patient that this report is about, DiagnosticReport.subject, The subject of the report, equivalent, Reference(BePatient\). For GDPR reasons\, sensor suppliers may not use the NISS of their users in external communication.)
  * insert ConceptMapElementWithComment(Status, Report status (default Final\), DiagnosticReport.status, final | partial, equivalent, Bound to BeVSDiabetesReportStatus. The value is assigned according to the business rule on % Data Captured.)
  * insert ConceptMapElementWithComment(Recorder, Healthcare professional or organization that encodes the information and takes responsibility for its content, DiagnosticReport.extension:recorder, Recorder (BeExtRecorder\), equivalent, Reference(BePractitioner | BeOrganization\). The professional is identified by INAMI or national register number\, the organization by INAMI approval or company number.)
  * insert ConceptMapElementWithComment(Interpreter, Healthcare provider who added an interpretation to the report, DiagnosticReport.resultsInterpreter, Primary result interpreter, equivalent, Reference(BePractitionerRole | BePractitioner\). Not provided by the report producer; added by the interpreting care provider.)
  * insert ConceptMapElementWithComment(Category, Category of the report, DiagnosticReport.category, Service category, equivalent, Bound (preferred\) to BeVSDiabetesReportCategory.)
  * insert ConceptMapElementWithComment(DeviceType, Type of sensor model used to create the observations (INAMI identification number\), DiagnosticReport.extension:device, Device type (BeExtDeviceType\), equivalent, valueCodeableConcept bound (extensible\) to BeVSDiabetesDeviceType. The individual sensor device is mentioned in the measurement observation.)
  * insert ConceptMapElementWithComment(Code, Report code (type of procedure\), DiagnosticReport.code, Name/Code for this diagnostic report, equivalent, Bound to BeVSDiabetesReportCode (e.g. 439926003 Ambulatory continuous glucose monitoring of interstitial tissue fluid\).)
  * insert ConceptMapElementWithComment(DerivedObservations, References to the derived value observations in the report, DiagnosticReport.result, Observations, equivalent, Reference(BeObservationDiabetes\).)
  * insert ConceptMapElementWithComment(MeasuredDiabetesObservations, References to the measured diabetes observations used to produce the analysis, DiagnosticReport.result, Observations, equivalent, Reference(BeObservationDiabetes\). Shares DiagnosticReport.result with the derived observations; there is no separate slice yet.)
  * insert ConceptMapElementWithComment(Note, Report comments in free text, DiagnosticReport.extension:note, Comments about the report (BeExtSimpleNote\), equivalent, Not provided by the report producer; added by the interpreting care provider.)
  * insert ConceptMapElementWithComment(Document, PDF documents containing the complete report, DiagnosticReport.presentedForm, Entire report as issued, equivalent, contentType fixed to application/pdf.)
