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
    <sch:active pattern="p-Immunization-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Immunization-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Immunization-Order-errors">
    <sch:rule id="r-Immunization-Order-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34025-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3346-34025).</sch:assert>
      <sch:assert id="a-3346-34026-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34026).</sch:assert>
      <sch:assert id="a-3346-34003-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34003.</sch:assert>
      <sch:assert id="a-3346-34028-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34028).</sch:assert>
      <sch:assert id="a-3346-34029-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34029).</sch:assert>
      <sch:assert id="a-3346-34005-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34005).</sch:assert>
      <sch:assert id="a-3346-34008-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34008) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34024) SHALL contain exactly one [1..1] role (CONF:3346-34009). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-34004-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34004) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.113" (CONF:3346-34016) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34385). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Immunization-Order-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34017-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34017).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Immunization-Order-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34022-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34020). </sch:assert>
      <sch:assert id="a-3346-34010-error" test="count(hqmf:playingManufacturedMaterial)=1">This role SHALL contain exactly one [1..1] playingManufacturedMaterial (CONF:3346-34010).</sch:assert>  
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-CSM-role-playingManufacturedMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial">
      <sch:assert id="a-3346-34011-error" test="count(hqmf:code)=1">This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3346-34011).</sch:assert>
      <sch:assert id="a-3346-34020-error" test="@classCode='MMAT'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34020).</sch:assert>
      <sch:assert id="a-3346-34023-error" test="@determinerCode='KIND'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34023).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34031-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34031).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3346-34033-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34033).</sch:assert>
    </sch:rule>
  </sch:pattern>
    
  <sch:pattern id="p-Immunization-Order-warnings">
    <sch:rule id="r-Immunization-Order-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:routeCode">
      <sch:assert id="a-3346-34019-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34019).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-CSM-role-playingManufacturedMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]//hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial/hqmf:code">
      <sch:assert id="a-3346-34021-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34021).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>