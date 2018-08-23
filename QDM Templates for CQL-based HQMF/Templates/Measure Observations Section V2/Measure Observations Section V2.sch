<?xml version="1.0" encoding="utf-8" standalone="yes"?>

<!-- 

 Update: 08-14-2018 - Removed extension from context of templateId rule

-->

<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  <sch:phase id="errors">
    <sch:active pattern="p-Measure-Observations-Section-errors" />
  </sch:phase>
  
  <sch:pattern id="p-Measure-Observations-Section-errors">
    <sch:rule id="r-Measure-Observations-Section-templateId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2']]/hqmf:component/hqmf:measureObservationsSection/hqmf:templateId">
      <sch:assert id="a-3372-18902-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-18902) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.4" (CONF:3372-18903). SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-30104). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Measure-Observations-Section-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection">
      <sch:assert id="a-3372-18901-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18901). </sch:assert>
      <sch:assert id="a-3372-18905-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18905). </sch:assert>
      <sch:assert id="a-3372-18910-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18910). </sch:assert>
      <sch:assert id="a-3372-30105-error" test="count(hqmf:definition) &gt; 0">SHALL contain at least one [1..*] definition (CONF:3372-30105). </sch:assert>
      <sch:assert id="a-3372-18911-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3372-18911). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Measure-Observations-Section-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-18906-error" test="@code='57027-5'">This code SHALL contain exactly one [1..1] @code="57027-5" Measure Observation (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:3372-18906). </sch:assert>
      <sch:assert id="a-3372-30103-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3372-30103). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Measure-Observations-Section-title-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:title">
      <sch:assert id="a-3372-18965-error" test="@value='Measure Observations Section'">This title SHALL contain exactly one [1..1] @value="Measure Observations Section" (CONF:3372-18965). </sch:assert>
    </sch:rule>

    <sch:rule id="r-Measure-Observations-Section-definition-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition">
      <sch:assert id="a-3372-34644-error" test="count(hqmf:measureObservationDefinition) = 1">Such definitions SHALL contain exactly one [1..1] measureObservationDefinition (CONF:3372-34644). </sch:assert>
    </sch:rule>

    <sch:rule id="r-Measure-Observations-Section-definition-measureObservationDefinition-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition/hqmf:measureObservationDefinition">
      <sch:assert id="a-3372-34650-error" test="count(hqmf:code) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] code (CONF:3372-34650). </sch:assert>
      <sch:assert id="a-3372-34651-error" test="count(hqmf:value) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] value (CONF:3372-34651).  </sch:assert>
      <sch:assert id="a-3372-34649-error" test="count(hqmf:methodCode) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] methodCode (CONF:3372-34649).  </sch:assert>
      <sch:assert id="a-3372-34645-error" test="count(hqmf:componentOf) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] componentOf (CONF:3372-34645) </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Measure-Observations-Section-definition-measureObservationDefinition-componentOf-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition/hqmf:measureObservationDefinition/hqmf:componentOf">
      <sch:assert id="a-3372-34646-error" test="count(hqmf:criteriaReference) = 1">This componentOf SHALL contain exactly one [1..1] criteriaReference (CONF:3372-34646).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Measure-Observations-Section-definition-measureObservationDefinition-componentOf-criteriaReference-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition/hqmf:measureObservationDefinition/hqmf:componentOf/hqmf:criteriaReference">
      <sch:assert id="a-3372-34647-error" test="@classCode='OBS'">This criteriaReference SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3372-34647).</sch:assert>
      <sch:assert id="a-3372-34648-error" test="@moodCode='EVN'">This criteriaReference SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34648).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  
  
</sch:schema>