Logical: BeModelDiagnosticReportDiabetes
Description: "Logical model representing a diabetes diagnostic report based on glucose monitoring data."
//* uniqueIdentifierNational 1..1 Identifier "Unique business identifier of the report.(https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing)."
* businessIdentifier 1..* Identifier "Business identifier of the report"
* recordedDate 1..1 dateTime "Date of the last update of the report"
* observationPeriod 1..1 Period "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See business rules"
* patient 1..1 Identifier "Unique identifier of the patient" "Unique identifier of the patient. For GDPR reasons, sensor suppliers may not use the NISS of their users in external communication with other parties. Implementations take this constraint into account."
* status 1..1 code "Report status, by default “Final”. The value is assigned according to the business rule on “% Data Captured”"
* status from BeVSDiabetesReportStatus
* recorder 1..1 Identifier "Unique identifier of the healthcare professional (INAMI number / national register number) or organization (INAMI approval number / company number) that encodes the information and takes responsibility for its content"
//* performer 1..1 Identifier "We refer to the service provider or organization that collects the observations and produces the report. [2]The unique identifier of each natural person is the NISS, while for each organization the company number serves as the unique identifier.For the Diabetes Diagnostic Report, it is: “performer = recorder.»"
* interpreter 0..1 Identifier "Healthcare provider (INAMI number / national register number) who added an interpretation to the report (e.g. endocrinologist, general practitioner). Not provided by the producer of the report"
* category 1..* CodeableConcept "Category of the report. At least one category must be assigned"
* category from BeVSDiabetesReportCategory (preferred)
// : 4311000179106 |Chemical pathology report (record artifact) and 408475000 |Diabetic medicine (qualifier value). 394583002 |Endocrinology (qualifier value) of the report. Look at VS_DiagRep_Category."
//* qualification 1..1 CodeableConcept "Is the category of diabetic patient (CAT 1, CAT 2, CAT 3). (See glossary for details).By default, the qualification is “CAT 3”.The category is calculated by an algorithm from the diagnosis provided by the doctor — interpreter."
* deviceType 0..1 CodeableConcept "Identification number assigned by INAMI to the type of sensor model used to create the observations on which the report is based. The individual sensor device is mentioned in the measurement observation"
* deviceType from BeVSDiabetesDeviceType (extensible)

* code 1..1 CodeableConcept "Report code - indicating the type of procedure that leads to the production of the primary values of this report, i.e. 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid"
* code from BeVSDiabetesReportCode
* derivedObservations 0..* Observation "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report. These observations are part of the diagnostic report"
* measuredDiabetesObservations 0..* Observation "References to the measured diabetes observations (a few thousand measurements) used to produce the analysis"
* note 0..* Annotation "Report comments in free text format. Not provided by the producer of the report, but by the healthcare provider doing the interpretation"
//* link 0..1 uri "URL to the reference software."
* document 0..* Binary "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)"
