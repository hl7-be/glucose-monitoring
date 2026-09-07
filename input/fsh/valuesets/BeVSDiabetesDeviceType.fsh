ValueSet: BeVSDiabetesDeviceType
Id: be-vs-diabetes-device-type
Title: "BeVSDiabetesDeviceType"
Description: "Allowed glucose monitoring sensor types used in Belgium."
* ^status = #active
* ^experimental = false
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* include codes from system BeCSDiabetesDeviceType