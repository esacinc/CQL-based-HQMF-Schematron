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
    <sch:active pattern="p-Assessment-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Assessment-Performed-warnings" />
  </sch:phase>
 
  <sch:pattern id="p-Assessment-Performed-errors">
    <sch:rule id="r-Assessment-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34142-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-34142).</sch:assert>
      <sch:assert id="a-3346-34143-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34143).</sch:assert>
      <sch:assert id="a-3346-34126-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId</sch:assert>
      <sch:assert id="a-3346-34145-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34145).</sch:assert>
      <sch:assert id="a-3346-34128-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34128).</sch:assert>
      <sch:assert id="a-3346-34146-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34146).</sch:assert>
      <sch:assert id="a-3346-34129-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34129).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-34127-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01'])=1">SHALL contain exactly one [1..1] item (CONF:3346-34127) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.117" (CONF:3346-34134) 	This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34254).  </sch:assert>
    </sch:rule>      
    <sch:rule id="r-Assessment-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34137-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34137).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-participation-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34739-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34739). </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Assessment-Performed-participation-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3346-34741-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3346-34741).  </sch:assert>
    </sch:rule>  
    
    </sch:pattern>
    
  <sch:pattern id="p-Assessment-Performed-warnings">
    <sch:rule id="r-Assessment-Performed-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:code" >
      <sch:assert id="a-3346-34136-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34136).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-methodCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:methodCode" >
      <sch:assert id="a-3346-34247-warning" test="count(hqmf:item)=1">The methodCode, if present, SHOULD contain zero or one [0..1] item (CONF:3346-34247). </sch:assert>
    </sch:rule> 
    <sch:rule id="r-Assessment-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item" >
      <sch:assert id="a-3346-34249-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34249).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>