Profile: BeObservationDiabetes
Parent: BeObservation
Id: be-observation-diabetes
Description: "Belgian FHIR profile for representing a derived glucose monitoring observation in the context of diabetes care."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open 
* identifier contains UUID 1..1 MS
* identifier[UUID].system = "https://www.ehealth.fgov.be/standards/fhir/glucose-monitoring/NamingSystem/be-ns-observation-diabetes"

* extension contains BeExtRecordedDate named recorded-date 1..1 MS and
    //http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo.type named type 1..1 MS and
    BeExtRecorder named recorder 1..1 MS
* extension[recorder].value[x] only Reference(BePractitioner or BeOrganization)
* effective[x] only Period
* effectivePeriod  1..1 MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.end 1..1 MS
* subject 1..1 MS
* subject only Reference(BePatient)
//* performer 1..1 MS
//* performer only Reference(BePractitioner or BePractitionerRole)
* category 1..* MS
* category from BeVSDiabetesObservationCategory (preferred)
* status 1..1 MS
* status from BeVSDiabetesObservationStatus
* code 1..1 MS
* code from BeVSDiabetesObservationCode
* value[x] 1..1 MS
* value[x] only Quantity
* referenceRange MS
//* device 0..1 MS