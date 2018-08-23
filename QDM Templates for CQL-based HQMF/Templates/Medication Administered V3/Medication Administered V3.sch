<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--
    Update: 07-30-2018  Removed author participation. Not required
    Update: 08-14-2018 - Removed extension from context of templateId rule

-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  <sch:phase id="errors">
    <sch:active pattern="p-Medication-Administered-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Medication-Administered-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Medication-Administered-errors">
    <sch:rule id="r-Medication-Administered-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' ]]/hqmf:templateId">
      <sch:assert id="a-3372-32051-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32051). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.45" (CONF:3372-32052) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33386). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32047-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32047).</sch:assert>
      <sch:assert id="a-3372-32048-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32048).</sch:assert>
      <sch:assert id="a-3372-32050-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32050).</sch:assert>
      <sch:assert id="a-3372-32053-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32053).</sch:assert>
      <sch:assert id="a-3372-32057-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32057).</sch:assert>
      <sch:assert id="a-3372-32054-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-32054).</sch:assert>
      <sch:assert id="a-3372-32058-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32058).</sch:assert>
      <sch:assert id="a-3372-32497-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32497) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32503) SHALL contain exactly one [1..1] role (CONF:3372-32498).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Medication-Administered-code-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-32055-error" test="@code='416118004' and @codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @code="416118004" Administration (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-32055).</sch:assert>
      <sch:assert id="a-3372-32056-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CONF:3372-32056).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32059-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32059). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32504-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32504).</sch:assert>
      <sch:assert id="a-3372-32499-error" test="count(hqmf:playingManufacturedMaterial)=1">This role SHALL contain exactly one [1..1] playingManufacturedMaterial (CONF:3372-32499).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-CSM-role-playingManufacturedMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial">
      <sch:assert id="a-3372-32500-error" test="@classCode='MMAT'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32500).</sch:assert>
      <sch:assert id="a-3372-32520-error" test="@determinerCode='KIND'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32520).</sch:assert>
      <sch:assert id="a-3372-32501-error" test="count(hqmf:code)=1">This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3372-32501).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34546-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34546).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34547-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34547).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Medication-Administered-warnings">
    <sch:rule id="r-Medication-Administered-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-32507-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32507).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-CSM-role-playingManufacturedMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial/hqmf:code">
      <sch:assert id="a-3372-32502-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32502).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>