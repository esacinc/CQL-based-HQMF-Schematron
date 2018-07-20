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
    <sch:active pattern="p-Device-Applied-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Device-Applied-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Device-Applied-errors">
    <sch:rule id="r-Device-Applied-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-31302-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-31302).</sch:assert>
      <sch:assert id="a-3372-31303-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31303).</sch:assert>
      <sch:assert id="a-3372-31305-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31305)</sch:assert>
      <sch:assert id="a-3372-31308-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31308).</sch:assert>
      <sch:assert id="a-3372-31517-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31517).</sch:assert>
      <sch:assert id="a-3372-31309-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31309).</sch:assert>
      <sch:assert id="a-3372-31310-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31310).</sch:assert>
      <sch:assert id="a-3372-31315-error" test="count(hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-31315) such that it SHALL contain exactly one [1..1] @typeCode="DEV" Device (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-31316). SHALL contain exactly one [1..1] role (CONF:3372-31317). </sch:assert>
      <sch:assert id="a-3372-34503-error" test="count(hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-34503) such that it SHALL contain exactly one [1..1] time (CONF:3372-34504). SHALL contain exactly one [1..1] role (CONF:3372-34505). SHALL contain exactly one [1..1] @typeCode="AUT" Author (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-34506).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Device-Applied-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-31306-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01'])=1">This templateId a.	SHALL contain exactly one [1..1] item (CONF:3372-31306). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.13" (CONF:3372-31307). This item SHALL contain exactly one [1..1] @extension="20187-05-01" (CONF:3372-33361).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Device-Applied-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-31311-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-31311).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Device-Applied-code-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-33062-error" test="@code='360030002'">This code SHALL contain exactly one [1..1] @code="360030002" Application of Device  (CONF:3372-33062).</sch:assert>
      <sch:assert id="a-3372-33063-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-33063).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Device-Applied-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33060-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain zero or one [0..1] item (CONF:3372-33060).</sch:assert>
    </sch:rule>  
    
    <sch:rule id="r-Device-Applied-participation-DEV-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-31318-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-31318).</sch:assert>
      <sch:assert id="a-3372-31319-error" test="count(hqmf:playingDevice)=1">This role SHALL contain exactly one [1..1] playingDevice (CONF:3372-31319).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Device-Applied-participation-DEV-role-playingDevice-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice">
      <sch:assert id="a-3372-31322-error" test="count(hqmf:code)=1">This playingDevice SHALL contain exactly one [1..1] code (CONF:3372-31322).</sch:assert>
      <sch:assert id="a-3372-31320-error" test="@classCode='DEV'">This playingDevice SHALL contain exactly one [1..1] @classCode="DEV" Device (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-31320).</sch:assert>
      <sch:assert id="a-3372-31321-error" test="@determinerCode='KIND'">This playingDevice SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-31321).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Device-Applied-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-34507-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34507).</sch:assert>
    </sch:rule>
      
 
    <sch:rule id="r-Device-Applied-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-34508-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34508).</sch:assert>
    </sch:rule>
      
 </sch:pattern>
  
  <sch:pattern id="p-Device-Applied-warnings">
    
    <sch:rule id="r-Device-Applied-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33061-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33061).</sch:assert>
    </sch:rule>

    <sch:rule id="r-Device-Applied-participation-DEV-role-playingDevice-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice/hqmf:code">
      <sch:assert id="a-3372-31323-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31323).</sch:assert>
    </sch:rule>
    
   </sch:pattern>
  
</sch:schema>