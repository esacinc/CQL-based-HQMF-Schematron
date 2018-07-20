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
    <sch:active pattern="p-Provider-Characteristic-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Provider-Characteristic-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Provider-Characteristic-errors">
    <sch:rule id="r-Provider-Characteristic-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31740-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31740).</sch:assert>
      <sch:assert id="a-3346-31741-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31741).</sch:assert>
      <sch:assert id="a-3346-31742-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31742).</sch:assert>
      <sch:assert id="a-3346-31745-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31745).</sch:assert>
      <sch:assert id="a-3346-31746-error" test="count(hqmf:participation[@typeCode='DRIV'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-31746) such that it SHALL contain exactly one [1..1] @typeCode="DRIV" Is derived from (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:3346-34842) SHALL contain exactly one [1..1] role (CONF:3346-31753).</sch:assert>
      <sch:assert id="a-3346-31748-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31748).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-statusCodeerrors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31749-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31749).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-31743-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31743) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.71" (CONF:3346-31744) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34121). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-participation-DRIV-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:participation[@typeCode='DRIV'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-31754-error" test="@classCode='ASSIGNED'">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned Entity (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-31754).</sch:assert>
      <sch:assert id="a-3346-34837-error" test="count(hqmf:playingEntity)=1">This role SHALL contain exactly one [1..1] playingEntity (CONF:3346-34837).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-participation-DRIV-role-playingEntity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:participation[@typeCode='DRIV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity">
      <sch:assert id="a-3346-34838-error" test="@classCode='PSN'">This playingEntity SHALL contain exactly one [1..1] @classCode="PSN" Person (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34838).</sch:assert>
      <sch:assert id="a-3346-34839-error" test="@determinerCode='KIND'">This playingEntity SHALL contain exactly one [1..1] @determinerCode="KIND" (CodeSystem: EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34839).</sch:assert>
      <sch:assert id="a-3346-34840-error" test="count(hqmf:code)=1">This playingEntity SHALL contain exactly one [1..1] code (CONF:3346-34840).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Provider-Characteristic-warnings">
     <sch:rule id="r-Provider-Characteristic-participation-DRIV-role-playingEntity-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:participation[@typeCode='DRIV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity/hqmf:code">
      <sch:assert id="a-3346-34841-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34841).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>