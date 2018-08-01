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
    <sch:active pattern="p-Substance-Recommended-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Substance-Recommended-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Substance-Recommended-errors">
    <sch:rule id="r-Substance-Recommended-errors"  context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32063-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32063).</sch:assert>
      <sch:assert id="a-3372-32064-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32064).</sch:assert>
      <sch:assert id="a-3372-32066-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32066).</sch:assert>
      <sch:assert id="a-3372-32070-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32070).</sch:assert>
      <sch:assert id="a-3372-32067-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32067).</sch:assert>
      <sch:assert id="a-3372-32069-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32069).</sch:assert>
      <sch:assert id="a-3372-32103-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32103) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32104) SHALL contain exactly one [1..1] role (CONF:3372-32105).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32071-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32071).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-32125-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32125) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.78" (CONF:3372-32126) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33693). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32106-error" test="@classCode='ADMM'">This role SHALL contain exactly one [1..1] @classCode="ADMM" Administerable Material (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32106).</sch:assert>
      <sch:assert id="a-3372-32107-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-32107).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-32110-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-32110).</sch:assert>
      <sch:assert id="a-3372-32108-error" test="@classCode='MAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32108).</sch:assert>
      <sch:assert id="a-3372-32109-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32109).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)]/hqmf:time">
      <sch:assert id="a-3372-34477-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34477). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)]/hqmf:role">
      <sch:assert id="a-3372-34478-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34478). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Substance-Recommended-warnings">
    <sch:rule id="r-Substance-Recommended-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:routeCode" >
       <sch:assert id="a-3372-33200-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33200).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-32111-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32111).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>