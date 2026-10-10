Logical: BeModelObservationDiabetes
Parent: BeModelClinicalObservation
Description: "Logical model representing a derived glucose monitoring observation in the context of diabetes care."
* identifier ^short = "Unique business identifier of the observation"
* identifier ^definition = "Unique business identifier of the observation"
//* observationType 1..1 CodeableConcept "Indicates whether the observation is a derived measurement or is a base measurement. See hl7VS-VS-observationType. “RSLT” / “SCI”"
* recordedDate ^short = "Date of encoding of the observation by the recorder"
* recordedDate ^definition = "Date of encoding of the observation by the recorder. See management rule 13."
* observationDate[x] only Period
* observationDate[x] ^short = "Observation period"
* observationDate[x] ^definition = "Observation period. For calculated values, the start and end of the period are mandatory."
* patient only Reference(BePatient)
* patient ^short = "The patient that this observation is about"
* patient ^definition = "The patient that this observation is about. For GDPR reasons, sensor suppliers may not use the NISS of their users in external communication with other parties. Implementations take this constraint into account."
* recorder only Reference(BePractitioner or BeOrganization)
* recorder ^short = "The health professional or organization which encodes the information and takes responsibility for its content"
* recorder ^definition = "The health professional or organization which encodes the information and takes responsibility for its content"
//* performer 1..1 Identifier "The unique identifier of the provider (NISS) [2] or organization (company number) which collects the observations. For the Diabetes project: performer = recorder."
* category 1..*
* category from BeVSDiabetesObservationCategory (preferred)
* category ^short = "Category of the observation"
* category ^definition = "Category of the observation: the monitoring procedure, and whether the value is calculated (derived observation) or measured (measurement observation). See BeVSDiabetesObservationCategory"
//* diagnosis 0..1 Reference(Condition) "Not applicable in the context of the diabetes project Problem"
* status from BeVSDiabetesObservationStatus
* status ^short = "Status of the observation, by default “final”"
* status ^definition = "Status of the observation, by default “final”"
* code from BeVSDiabetesObservationCode
* code ^short = "Code corresponding to the derived value"
* code ^definition = "Code corresponding to the derived value (coded in SNOMED CT), e.g. TAR Time Above Range, TIR Time In Range. See BeVSDiabetesObservationCode"
* value[x] 1..1
* value[x] ^short = "Derived value"
* value[x] ^definition = "Derived value"
//* referenceRange 0..* Range "Structure composed of reference elements allowing the interpretation of measurements:·        ReferenceRange.Low (0...1)·        ReferenceRange.High (0...1)·        ReferenceRange.AppliesTo (0...*)We automatically work according to the ADA standards which define target value intervals for the following derived observations:  Coded1 Coefficient of Variation2 Days Sensor Worn3% Data Captured4 TAR % (Time above range - very high)5 TAR % (Time above range - high)6 SHOOTING % (Time in Range)7 TBR % (Time below range - low)8 TBR % (Time below range - very low)By observation code derived from this list, we will potentially find:A) Target - reference interval to indicate the target lower limit (“Low”) and upper limit (“High”).Note that these limits do not depend on the diabetes category.For example: for TIR, it is recommended that the blood glucose value be at least 70% of the time in the “normal” range.So for ReferenceRange “TIR_REF”→ TIR_REF.Low = 70%→ TIR_REF.High = 100%B) filter - application interval with a lower limit and an upper limit to filter the measurement observations considered in the calculation of the derived value. This defines the range of counted values. These ranges may vary by diabetes category.For example: the “normal” range is between 70 mg/dL and 180 mg/dL for category 1 and 3, and between 63 mg/dL and 140 mg/dL for category 2.So for ReferenceRange “TIR_REF”→ TIR_REF.AppliesTo(CAT1, ≥70 mg/dL, ≤180 mg/dL)→ TIR_REF.AppliesTo(CAT2, ≥63 mg/dL, ≤140 mg/dL)→ TIR_REF.AppliesTo(CAT3, ≥70 mg/dL, ≤180 mg/dL)As we base ourselves on ADA standards, there is little point in passing all this information for each observation.If, however, a doctor changes values (target and/or filter) for a specific patient AND you want to communicate these changes outside of your patient file, this mechanism provides the means.See VS_Obs_Diab_Ref"
//* conclusion 0..1 string "Not applicable for the diabetes project Conclusion"
//* bodyLocalisation 0..1 CodeableConcept " Not application for the diabetes project BodyLocalisation"
//* bodyLaterality 0..1 CodeableConcept "Not application for the diabetes project BodyLaterality"
//* note 0..* Annotation "Not applicable for the diabetes project"