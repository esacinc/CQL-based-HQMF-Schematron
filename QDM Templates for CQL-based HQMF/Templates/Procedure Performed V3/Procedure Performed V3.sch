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
    <sch:active pattern="p-Procedure-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Procedure-Performed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Procedure-Performed-errors">
    <sch:rule id="r-Procedure-Performed-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-33149-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-33149).</sch:assert>
      <sch:assert id="a-3372-31336-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31336).</sch:assert>
      <sch:assert id="a-3372-31338-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31338).</sch:assert>
      <sch:assert id="a-3372-31341-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31341).</sch:assert>
      <sch:assert id="a-3372-31344-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31344).</sch:assert>
      <sch:assert id="a-3372-31342-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31342).</sch:assert>
      <sch:assert id="a-3372-31345-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31345).</sch:assert>
      <sch:assert id="a-3372-34556-error" test="count(hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-34556) such that it SHALL contain exactly one [1..1] @typeCode="AUT" Author (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-34559) SHALL contain exactly one [1..1] time (CONF:3372-34557) SHALL contain exactly one [1..1] role (CONF:3372-34558).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33150-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-33150).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-31339-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31339) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.67" (CONF:3372-31340) 	This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33398).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-priorityCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:priorityCode">
      <sch:assert id="a-3372-31350-error" test="count(hqmf:item)=1">The priorityCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-31350). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-methodCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:methodCode">
      <sch:assert id="a-3372-31352-error" test="count(hqmf:item)=1">The methodCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-31352). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33402-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-33402).  </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Procedure-Performed-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34560-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34560).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34561-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34561).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Procedure-Performed-warnings">
    <sch:rule id="r-Procedure-Performed-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31343-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31343).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-priorityCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:priorityCode/hqmf:item">
      <sch:assert id="a-3372-33151-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33151).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-methodCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3372-31353-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31353).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33404-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33404).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>