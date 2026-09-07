Extension: BeExtDeviceType
Id: be-ext-device-type
Title: "Device Type"
Description: "Extension containing the coded type of a device."
Context: DiagnosticReport

* extension 0..0
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from BeVSDiabetesDeviceType (extensible)