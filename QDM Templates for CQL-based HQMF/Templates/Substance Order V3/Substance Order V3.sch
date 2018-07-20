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
    <sch:active pattern="p-Substance-Order-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Substance-Order-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Substance-Order-errors">
    <sch:rule id="r-Substance-Order-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32623-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32623).</sch:assert>
      <sch:assert id="a-3372-32624-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32624).</sch:assert>
      <sch:assert id="a-3372-32626-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32626).</sch:assert>
      <sch:assert id="a-3372-32633-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32633).</sch:assert>
      <sch:assert id="a-3372-32629-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32629).</sch:assert>
      <sch:assert id="a-3372-32632-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32632).</sch:assert>
      <sch:assert id="a-3372-32642-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32642) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32643) SHALL contain exactly one [1..1] role (CONF:3372-32644)</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32634-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32634).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-32627-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32627). such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.77" (CONF:3372-32628) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33652).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32645-error" test="@classCode='ADMM'">This role SHALL contain exactly one [1..1] @classCode="ADMM" Administerable Material (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32645).</sch:assert>
      <sch:assert id="a-3372-32646-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-32646).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-32649-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-32649).</sch:assert>
      <sch:assert id="a-3372-32647-error" test="@classCode='MAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MAT" Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32647).</sch:assert>
      <sch:assert id="a-3372-32648-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32648).</sch:assert>
    </sch:rule>
    
   </sch:pattern>
  
  <sch:pattern id="p-Substance-Order-warnings">
    <sch:rule id="r-Substance-Order-routejCode-warnings"  context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-32640-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32640).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-3265-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32650).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>