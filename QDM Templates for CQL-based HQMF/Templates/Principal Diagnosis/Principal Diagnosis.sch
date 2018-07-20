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
    <sch:active pattern="p-Principal-Diagnosis-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Principal-Diagnosis-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Principal-Diagnosis-errors">
    <sch:rule id="r-Principal-Diagnosis-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34367-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34367).</sch:assert>
      <sch:assert id="a-3335-34368-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-34368).</sch:assert>
      <sch:assert id="a-3335-34348-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34348).</sch:assert>
      <sch:assert id="a-3335-34369-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34369).</sch:assert>
      <sch:assert id="a-3335-34370-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34370).</sch:assert>
      <sch:assert id="a-3335-34350-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34350).</sch:assert>
      <sch:assert id="a-3335-34351-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-34351).</sch:assert>
      <sch:assert id="a-3335-34353-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-34353).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Principal-Diagnosis-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34360-error" test="@code='52534-5'">This code SHALL contain exactly one [1..1] @code="52534-5" Principal Diagnosis (CONF:3335-34360).</sch:assert>
      <sch:assert id="a-3335-34361-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-34361).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Principal-Diagnosis-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-34362-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-34362).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Principal-Diagnosis-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-34349-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34349) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.122" (CONF:3335-34358) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34651). </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Principal-Diagnosis-warnings">
    <sch:rule id="r-Principal-Diagnosis-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-34365-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34365).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>