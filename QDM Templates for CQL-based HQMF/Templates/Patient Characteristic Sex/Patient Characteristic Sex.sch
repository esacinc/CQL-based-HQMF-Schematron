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
    <sch:active pattern="p-Patient-Characteristic-Sex-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Patient-Characteristic-Sex-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Patient-Characteristic-Sex-errors">
    <sch:rule id="r-Patient-Characteristic-Sex-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31285-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-31285) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.55" (CONF:3335-31286) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33382).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Sex-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]" >
      <sch:assert id="a-3335-31282-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31282).</sch:assert>
      <sch:assert id="a-3335-31283-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31283).</sch:assert>
      <sch:assert id="a-3335-34712-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34712).</sch:assert>
      <sch:assert id="a-3335-31284-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31284).</sch:assert>
      <sch:assert id="a-3335-31287-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31287).</sch:assert>
      <sch:assert id="a-3335-31291-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31291).</sch:assert>
      <sch:assert id="a-3335-31288-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31288).</sch:assert>
      <sch:assert id="a-3335-31292-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31292).</sch:assert>
      <sch:assert id="a-3335-31293-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31293).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Sex-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31289-error" test="@code='263495000'">This code SHALL contain exactly one [1..1] @code="263495000" Gender (CONF:3335-31289).</sch:assert>
      <sch:assert id="a-3335-31290-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-31290).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Sex-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-33142-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-33142).</sch:assert>
    </sch:rule>
    
    </sch:pattern>
  
  <sch:pattern id="p-Patient-Characteristic-Sex-warnings">
    <sch:rule id="r-Patient-Characteristic-Sex-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31294-warning" test="@valueSet">This value SHOULD contain exactly one [1..1] @valueSet (CONF:3335-31294).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>