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
    <sch:active pattern="p-Device-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Device-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Device-Order-errors">
    <sch:rule id="r-Device-Order-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]" >
      <sch:assert id="a-3335-29840-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3335-29840).</sch:assert>
      <sch:assert id="a-3335-29841-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-29841).</sch:assert>
      <sch:assert id="a-3335-29842-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-29842).  </sch:assert>
      <sch:assert id="a-3335-29845-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-29845).</sch:assert>
      <sch:assert id="a-3335-29846-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-29846).</sch:assert>
      <sch:assert id="a-3335-31003-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31003).</sch:assert>
       <sch:assert id="a-3335-29847-error" test="count(hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3335-29847) such that it SHALL contain exactly one [1..1] @typeCode="DEV" Device (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3335-29848) >SHALL contain exactly one [1..1] role (CONF:3335-29849).</sch:assert>
      </sch:rule>
 
    <sch:rule id="r-Device-Order-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:templateId" >
      <sch:assert id="a-3335-29843-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-29843). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.15" (CONF:3335-29844) 	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33642). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Order-statusCode-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:statusCode" >
      <sch:assert id="a-3335-31004-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31004).</sch:assert>
    </sch:rule>  

    <sch:rule id="r-Device-Order-participation-DEV-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role" >
      <sch:assert id="a-3335-29850-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-29850).</sch:assert>
      <sch:assert id="a-3335-29851-error" test="count(hqmf:playingDevice)=1">This role SHALL contain exactly one [1..1] playingDevice (CONF:3335-29851).</sch:assert>
    </sch:rule>
   
    <sch:rule id="r-Device-Order-participation-DEV-role-playingDevice-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice" >
       <sch:assert id="a-3335-29854-error" test="count(hqmf:code)=1">This playingDevice SHALL contain exactly one [1..1] code (CONF:3335-29854).</sch:assert>
      <sch:assert id="a-3335-29852-error" test="@classCode='DEV'">This playingDevice SHALL contain exactly one [1..1] @classCode="DEV" Device (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3335-29852).</sch:assert>
      <sch:assert id="a-3335-29853-error" test="@determinerCode='KIND'">This playingDevice SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3335-29853).</sch:assert>
    </sch:rule>
  </sch:pattern>
 
  <sch:pattern id="p-Device-Order-warnings">
    <sch:rule id="r-Device-Order-participation-DEV-role-playingDevice-code-warnings" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice/hqmf:code" >
      <sch:assert id="a-3335-29855-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-29855).</sch:assert>
    </sch:rule>
  </sch:pattern> 
</sch:schema>