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
    <sch:active pattern="p-Program-Participation-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Program-Participation-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Program-Participation-errors">
    <sch:rule id="r-Program-Participation-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34829-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-34829).</sch:assert>
      <sch:assert id="a-3372-34830-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34830).</sch:assert>
      <sch:assert id="a-3372-34831-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3372-34831).</sch:assert>
      <sch:assert id="a-3372-34819-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34819).</sch:assert>
      <sch:assert id="a-3372-34832-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34832).</sch:assert>
      <sch:assert id="a-3372-34881-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34881).</sch:assert>
      <sch:assert id="a-3372-34821-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-34821).</sch:assert>
      <sch:assert id="a-3372-34822-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-34822).</sch:assert>
      <sch:assert id="a-3372-34833-error" test="count(hqmf:value[@xsi:type='CD'])=1">9.	SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-34833).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Program-Participation-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-34834-error" test="@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion  (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-34834).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Program-Participation-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-34827-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-34827).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Program-Participation-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-34820-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34820) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.130" (CONF:3372-34824) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34825). </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Program-Participation-warnings">
    <sch:rule id="r-Program-Participation-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3372-34836-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3372-34836).</sch:assert>
    </sch:rule>
 
  </sch:pattern>
  
</sch:schema>