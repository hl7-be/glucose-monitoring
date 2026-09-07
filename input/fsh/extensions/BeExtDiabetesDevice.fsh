Extension: BeExtDiabetesDevice
Id: be-ext-diabetes-device
Title: "Diabetes Device"
Description: "Identification of the sensor used for glucose monitoring."
Context: DiagnosticReport

* extension 0..0
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from BeVSDiabetesDeviceType (extensible)