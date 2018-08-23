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
    <sch:active pattern="p-Family-History-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Family-History-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Family-History-errors">
    <sch:rule id="r-Family-History-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' ]]/hqmf:templateId">
      <sch:assert id="a-3335-33792-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-33792) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.111" (CONF:3335-33799) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34383). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-33797-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-33797).</sch:assert>
      <sch:assert id="a-3335-33798-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-33798).</sch:assert>
      <sch:assert id="a-3335-34703-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34703).</sch:assert>
      <sch:assert id="a-3335-33791-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-33791).</sch:assert>
      <sch:assert id="a-3335-33793-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-33793).</sch:assert>
      <sch:assert id="a-3335-33794-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-33794).</sch:assert>
      <sch:assert id="a-3335-33800-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-33800).</sch:assert>
      <sch:assert id="a-3335-33803-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-33803).</sch:assert>
      <sch:assert id="a-3335-33795-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-33795).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-33801-error" test="@code='10157-6'">This code SHALL contain exactly one [1..1] @code="10157-6" Family History (CONF:3335-33801).</sch:assert>
      <sch:assert id="a-3335-33802-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (LOINC) (CONF:3335-33802).</sch:assert>      
    </sch:rule>
    <sch:rule id="r-Family-History-33791-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-33804-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-33804).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-33815-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-33815).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-33817-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3335-33817).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Family-History-warnings">
    <sch:rule id="r-Family-History-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-33805-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-33805).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-role-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role/hqmf:code">
      <sch:assert id="a-3335-33821-warning-error" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-33821).</sch:assert>
    </sch:rule>

  </sch:pattern>
  
</sch:schema>