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
    <sch:active pattern="p-Medication-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Medication-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Medication-Order-errors">
    <sch:rule id="r-Medication-Order-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-30218-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-30218).</sch:assert>
      <sch:assert id="a-3372-29049-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-29049).</sch:assert>
      <sch:assert id="a-3372-29050-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-29050).</sch:assert>
      <sch:assert id="a-3372-30185-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30185).</sch:assert>
      <sch:assert id="a-3372-30186-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30186).</sch:assert>
      <sch:assert id="a-3372-30227-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-30227).</sch:assert>
      <sch:assert id="a-3372-29053-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-29053) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-29054) SHALL contain exactly one [1..1] role (CONF:3372-29055).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30228-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30228).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-templateId-item-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-29051-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-29051) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.51" (CONF:3372-29052) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33443).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-29057-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-29057).</sch:assert>
      <sch:assert id="a-3372-29056-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-29056).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-29060-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-29060).</sch:assert>
      <sch:assert id="a-3372-29058-error" test="@classCode='MMAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-29058).</sch:assert>
      <sch:assert id="a-3372-29059-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-29059).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Medication-Order-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-33500-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33500). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-33593-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-33593).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-LOC-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='LOC'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34863-error" test="@classCode='EXLOC'">This role SHALL contain exactly one [1..1] @classCode="EXLOC" event location (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34863). </sch:assert>
      <sch:assert id="a-3372-34864-error" test="count(hqmf:code)=1">This role SHALL contain exactly one [1..1] code (CONF:3372-34864). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Medication-Order-warnings">
    <sch:rule id="r-Medication-Order-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-30231-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30231).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Medication-Order-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-30164-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30164).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>