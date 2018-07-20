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
    <sch:active pattern="p-Intervention-Recommended-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Intervention-Recommended-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Intervention-Recommended-errors">
    <sch:rule id="r-Intervention-Recommended-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30801-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3335-30801).</sch:assert>
      <sch:assert id="a-3335-30802-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30802).</sch:assert>
      <sch:assert id="a-3335-30803-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30803).</sch:assert>
      <sch:assert id="a-3335-30807-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30807).</sch:assert>
      <sch:assert id="a-3335-30810-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30810).</sch:assert>
      <sch:assert id="a-3335-30808-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30808).</sch:assert>
      <sch:assert id="a-3335-30811-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30811).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30812-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30812).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-30804-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30804) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.37" (CONF:3335-30805) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33385).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-participation-AUT-time-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34396-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34396). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-participation-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34534-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34534). </sch:assert>
    </sch:rule>
    
  </sch:pattern> 
  
  <sch:pattern id="p-Intervention-Recommended-warnings">
    <sch:rule id="r-Intervention-Recommended-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30809-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30809).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>