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
    <sch:active pattern="p-Laboratory-Test-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Laboratory-Test-Performed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Laboratory-Test-Performed-errors">
    <sch:rule id="r-Laboratory-Test-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30364-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30364).</sch:assert>
      <sch:assert id="a-3346-33237-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-33237).</sch:assert>
      <sch:assert id="a-3346-30366-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30366).</sch:assert>
      <sch:assert id="a-3346-30370-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30370).</sch:assert>
      <sch:assert id="a-3346-30373-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-30373).</sch:assert>
      <sch:assert id="a-3346-30369-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-30369).</sch:assert>
      <sch:assert id="a-3346-30372-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30372).</sch:assert>
      <sch:assert id="a-3346-33611-error" test="count(hqmf:value)=0">SHALL NOT contain [0..0] value (CONF:3346-33611).</sch:assert>
      <sch:assert id="a-3346-34535-error" test="count(hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34535) such that it SHALL contain exactly one [1..1] time (CONF:3346-34536) SHALL contain exactly one [1..1] role (CONF:3346-34537).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-30509-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-30509).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-methodCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-30378-error" test="count(hqmf:item)=1">The methodCode, if present, SHALL contain exactly one [1..1] item (CONF:3346-30378).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Laboratory-Test-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-30367-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30367) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.42" (CONF:3346-30368) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33373). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34539-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34539).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34540-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34540).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Laboratory-Test-Performed-warnings">
    <sch:rule id="r-Laboratory-Test-Performed-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30371-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30371).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3346-30379-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30379).</sch:assert>
      
    </sch:rule>
  </sch:pattern>
  
</sch:schema>