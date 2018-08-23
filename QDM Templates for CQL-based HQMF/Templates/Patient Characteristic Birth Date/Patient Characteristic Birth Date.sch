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
    <sch:active pattern="p-Patient-Characteristic-Birth-Date-errors" />
  </sch:phase>
  
  
  <sch:pattern id="p-Patient-Characteristic-Birth-Date-errors">
    <sch:rule id="r-Patient-Characteristic-Birth-Date-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' ]]/hqmf:templateId" >
      <sch:assert id="a-3335-31553-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-31553) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.54" (CONF:3335-31554) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33650). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Birth-Date-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31550-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31550).</sch:assert>
      <sch:assert id="a-3335-31551-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31551).</sch:assert>
      <sch:assert id="a-3335-34706-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34706).</sch:assert>
      <sch:assert id="a-3335-31552-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31552).</sch:assert>
      <sch:assert id="a-3335-31555-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31555).</sch:assert>
      <sch:assert id="a-3335-31559-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31559).</sch:assert>
      <sch:assert id="a-3335-31556-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31556).</sch:assert>
      <sch:assert id="a-3335-31583-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31583).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Birth-Date-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31557-error" test="@code='21112-8'">This code SHALL contain exactly one [1..1] @code="21112-8" Birth Date (CONF:3335-31557).</sch:assert>
      <sch:assert id="a-3335-31558-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CONF:3335-31558).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Birth-Date-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31584-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31584).</sch:assert>
    </sch:rule>
    
    
   </sch:pattern>
  
 
</sch:schema>