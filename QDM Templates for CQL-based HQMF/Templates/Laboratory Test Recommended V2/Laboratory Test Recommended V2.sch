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
    <sch:active pattern="p-Laboratory-Test-Recommended-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Laboratory-Test-Recommended-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Laboratory-Test-Recommended-errors">
    <sch:rule id="r-Laboratory-Test-Recommended-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' ]]/hqmf:templateId">
      <sch:assert id="a-3372-30418-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30418). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.43" (CONF:3372-30419) This item SHALL contain exactly one [1..1] @extension="20187-05-01" (CONF:3372-33692). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-30414-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-30414).</sch:assert>
      <sch:assert id="a-3372-30415-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-30415).</sch:assert>
      <sch:assert id="a-3372-30417-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-30417).</sch:assert>
      <sch:assert id="a-3372-30420-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30420).</sch:assert>
      <sch:assert id="a-3372-30423-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30423).</sch:assert>
      <sch:assert id="a-3372-30421-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-30421).</sch:assert>
      <sch:assert id="a-3372-30424-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30424).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30510-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30510).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34417-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34417). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34418-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-34418). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Laboratory-Test-Recommended-warnings">
    <sch:rule id="r-Laboratory-Test-Recommended-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30422-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30422).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>