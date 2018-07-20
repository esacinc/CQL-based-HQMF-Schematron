<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--


-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  <sch:phase id="errors">
    <sch:active pattern="p-Patient-Characteristic-Expired-errors" />
  </sch:phase>
  
  
  <sch:pattern id="p-Patient-Characteristic-Expired-errors">
    <sch:rule id="r-Patient-Characteristic-Expired-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31585-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31585).</sch:assert>
      <sch:assert id="a-3335-31586-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31586).</sch:assert>
      <sch:assert id="a-3335-34709-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34709).</sch:assert>
      <sch:assert id="a-3335-31587-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31587)</sch:assert>
      <sch:assert id="a-3335-31590-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31590).</sch:assert>
      <sch:assert id="a-3335-31594-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31594).</sch:assert>
      <sch:assert id="a-3335-31591-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31591).</sch:assert>
      <sch:assert id="a-3335-31595-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31595).</sch:assert>
      <sch:assert id="a-3335-31600-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31600).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31592-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3335-31592).</sch:assert>
      <sch:assert id="a-3335-31593-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-31593).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31596-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31596).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-31588-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01'])=1">This templateId  SHALL contain exactly one [1..1] item (CONF:3335-31588) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.57" (CONF:3335-33141) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33381). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-value-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-33429-error" test="@code='419099009'">This value SHALL contain exactly one [1..1] @code="419099009" Dead (CONF:3335-33429).</sch:assert>
      <sch:assert id="a-3335-33430-error" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-33430).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  

  
</sch:schema>