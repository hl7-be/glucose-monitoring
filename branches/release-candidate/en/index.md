# Glucose Monitoring - HL7 FHIR Implementation Guide: Glucose Monitoring v1.0.0

## Glucose Monitoring

### Content

This Implementation Guide contains the specifications for the exchange of glucose monitoring and diabetes-related data in Belgium.

The guide is structured into the following main sections:

**Guidance:** Provides contextual information and guidance on the scope and use of the specifications.

**Artifacts:** Contains the FHIR conformance resources defined by this Implementation Guide, including:

* **Logical Models**, providing business-oriented representations of the data exchanged;
* **Profiles**, defining constraints on FHIR resources used for glucose monitoring;
* **Value Sets**, defining the coded values used by the profiles;
* **Naming Systems**, defining identifiers used within the specifications;
* **Examples**, illustrating how the specifications can be implemented in concrete use cases.

**Downloads:** Provides downloadable representations and supporting material for the Implementation Guide.

The top menu provides direct access to these sections. A [Table of Contents](toc.md) is also available with the complete content of the Implementation Guide.

### Dependencies

This IG builds upon:

### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.be.glucose-monitoring.r4)](../package.r4.tgz) and [R4B (hl7.fhir.be.glucose-monitoring.r4b)](../package.r4b.tgz) are available. 

### Global Profiles

*There are no Global profiles defined*

### Expansion Parameters

* Parameter: includeDesignations
  * Value: true
* Parameter: system-version
  * Value: [SCT BE vhttp://snomed.info/sct/11000172109/version/20260515](http://snomed.info/sct/11000172109/version/20260515)

### Intellectual Property Considerations

This IG is published under a public domain license; however, it references code systems with additional restrictions:

This publication includes IP covered under the following statements.

* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [Observation/397dffb4-a88a-47d0-b10d-beffcbf6157d](Observation-397dffb4-a88a-47d0-b10d-beffcbf6157d.md)... Show 7 more, [Observation/449a728d-dfb4-422d-94aa-1a2d43849ee5](Observation-449a728d-dfb4-422d-94aa-1a2d43849ee5.md), [Observation/454a29d0-0893-458a-b2e5-25452b89e29a](Observation-454a29d0-0893-458a-b2e5-25452b89e29a.md), [Observation/6756477d-b57a-4611-b048-374d46f52908](Observation-6756477d-b57a-4611-b048-374d46f52908.md), [Observation/a6665182-e11a-40a9-ae83-9b093a353f16](Observation-a6665182-e11a-40a9-ae83-9b093a353f16.md), [Observation/b28ef33b-0480-4bde-a5df-94988813110b](Observation-b28ef33b-0480-4bde-a5df-94988813110b.md), [Observation/b44fe5d5-f57b-4424-b628-d2baeb447738](Observation-b44fe5d5-f57b-4424-b628-d2baeb447738.md) and [Observation/c611b58d-27bb-49e2-b3ec-bd59e986f5f3](Observation-c611b58d-27bb-49e2-b3ec-bd59e986f5f3.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md), [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)... Show 18 more, [BeVSDiabetesObservationCategory](ValueSet-be-vs-diabetes-observation-category.md), [BeVSDiabetesObservationCode](ValueSet-be-vs-diabetes-observation-code.md), [BeVSDiabetesReportCategory](ValueSet-be-vs-diabetes-report-category.md), [BeVSDiabetesReportCode](ValueSet-be-vs-diabetes-report-code.md), [Bundle/uc52-bundle](Bundle-uc52-bundle.md), [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [Composition/uc52-composition](Composition-uc52-composition.md), [Composition/uc53-composition](Composition-uc53-composition.md), [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md), [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md), [Observation/397dffb4-a88a-47d0-b10d-beffcbf6157d](Observation-397dffb4-a88a-47d0-b10d-beffcbf6157d.md), [Observation/449a728d-dfb4-422d-94aa-1a2d43849ee5](Observation-449a728d-dfb4-422d-94aa-1a2d43849ee5.md), [Observation/454a29d0-0893-458a-b2e5-25452b89e29a](Observation-454a29d0-0893-458a-b2e5-25452b89e29a.md), [Observation/6756477d-b57a-4611-b048-374d46f52908](Observation-6756477d-b57a-4611-b048-374d46f52908.md), [Observation/a6665182-e11a-40a9-ae83-9b093a353f16](Observation-a6665182-e11a-40a9-ae83-9b093a353f16.md), [Observation/b28ef33b-0480-4bde-a5df-94988813110b](Observation-b28ef33b-0480-4bde-a5df-94988813110b.md), [Observation/b44fe5d5-f57b-4424-b628-d2baeb447738](Observation-b44fe5d5-f57b-4424-b628-d2baeb447738.md) and [Observation/c611b58d-27bb-49e2-b3ec-bd59e986f5f3](Observation-c611b58d-27bb-49e2-b3ec-bd59e986f5f3.md)


