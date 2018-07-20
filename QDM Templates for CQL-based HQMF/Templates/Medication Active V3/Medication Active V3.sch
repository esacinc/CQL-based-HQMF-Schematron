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
    <sch:active pattern="p-Medication-Active-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Medication-Active-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Medication-Active-errors">
    <sch:rule id="r-Medication-Active-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]">
      <sch:assert id="a-3346-31950-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administrated (CONF:3346-31950).</sch:assert>
      <sch:assert id="a-3346-31951-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31951).</sch:assert>
      <sch:assert id="a-3346-31953-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31953.</sch:assert>
      <sch:assert id="a-3346-31956-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31956).</sch:assert>
      <sch:assert id="a-3346-31957-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31957).</sch:assert>
      <sch:assert id="a-3346-31958-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31958).</sch:assert>
      <sch:assert id="a-3346-33121-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-33121) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable  (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-33122) SHALL contain exactly one [1..1] role (CONF:3372-33123). </sch:assert>
       <sch:assert id="a-3346-34809-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34809).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31959-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31959).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-templateId--errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3346-31954-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31954) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.44" (CONF:3372-31955) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33376). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33124-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-33124). </sch:assert> 
    </sch:rule>
    <sch:rule id="r-Medication-Active-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3346-33125-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-33125).</sch:assert>
      <sch:assert id="a-3346-34116-error" test="@classCode='MMAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34116).</sch:assert>
    </sch:rule>
      
   </sch:pattern>

  <sch:pattern id="p-Medication-Active-warnings">
    <sch:rule id="r-Medication-Active-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3346-33116-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33116).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>