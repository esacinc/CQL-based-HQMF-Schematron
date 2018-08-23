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
    <sch:active pattern="p-Patient-Characteristic-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Patient-Characteristic-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Patient-Characteristic-errors">
    <sch:rule id="r-Patient-Characteristic-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31606-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31606) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.53" (CONF:3346-31607) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34456). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31602-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31602).</sch:assert>
      <sch:assert id="a-3346-31603-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31603).</sch:assert>
      <sch:assert id="a-3346-31604-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-31604).</sch:assert>
      <sch:assert id="a-3346-31605-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31605).</sch:assert>
      <sch:assert id="a-3346-31608-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31608).</sch:assert>
      <sch:assert id="a-3346-31609-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31609).</sch:assert>
      <sch:assert id="a-3346-31613-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31613).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31614-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31614).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
  <sch:pattern id="p-Patient-Characteristic-warnings">
    <sch:rule id="r-Patient-Characteristic-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34454-error" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34454).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>

