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
    <sch:active pattern="p-Diagnostic-Study-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Diagnostic-Study-Performed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Diagnostic-Study-Performed-errors">
    <sch:rule id="r-Diagnostic-Study-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30775-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30775).</sch:assert>
      <sch:assert id="a-3346-30776-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:3346-30776).</sch:assert>
      <sch:assert id="a-3346-30778-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30778).</sch:assert>
      <sch:assert id="a-3346-30781-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-30781).</sch:assert>
      <sch:assert id="a-3346-30784-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30784).</sch:assert>
      <sch:assert id="a-3346-34764-error" test="count(hqmf:value)=0">SHALL NOT contain [0..0] value (CONF:3346-34764).</sch:assert>
      <sch:assert id="a-3346-30782-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30782).</sch:assert>
      <sch:assert id="a-3346-30785-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-30785).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-templateId--errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-30779-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30779) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.23" (CONF:3346-30780) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33605). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-30786-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-30786).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34514-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34514).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34515-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34515). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Diagnostic-Study-Performed-warnings">
    <sch:rule id="r-Diagnostic-Study-Performed-methodCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-30791-warning" test="count(hqmf:item)=1">The methodCode, if present, SHOULD contain zero or one [0..1] item (CONF:3346-30791).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
       <sch:assert id="a-3346-30917-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30917).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30783-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30783).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>