<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--

    Update: 08-14-2018 - Removed extension from context of templateId rule

-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  <sch:phase id="errors">
    <sch:active pattern="p-Substance-Administered-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Substance-Administered-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Substance-Administered-errors">
    <sch:rule id="r-Substance-Administered-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' ]]/hqmf:templateId">
      <sch:assert id="a-3372-32882-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32882) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.73" (CONF:3372-32883) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33393).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]" >
      <sch:assert id="a-3372-32878-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32878).</sch:assert>
      <sch:assert id="a-3372-32879-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32879).</sch:assert>
      <sch:assert id="a-3372-32881-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32881).</sch:assert>
      <sch:assert id="a-3372-32885-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-32885).</sch:assert>
      <sch:assert id="a-3372-32888-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32888).</sch:assert>
      <sch:assert id="a-3372-32884-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32884).</sch:assert>
      <sch:assert id="a-3372-32887-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32887).</sch:assert>
      <sch:assert id="a-3372-32897-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32897) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32898) SHALL contain exactly one [1..1] role (CONF:3372-32899). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-code-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-33177-error" test="@code='416118004'">This code SHALL contain exactly one [1..1] @code="416118004" Administration (CONF:3372-33177).</sch:assert>
      <sch:assert id="a-3372-33178-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96 " (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-33178).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32889-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32889).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32900-error" test="@classCode='ADMM'">This role SHALL contain exactly one [1..1] @classCode="ADMM" Administerable Material (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32900).</sch:assert>
      <sch:assert id="a-3372-32901-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-32901).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-32904-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-32904).</sch:assert>
      <sch:assert id="a-3372-32902-error" test="@classCode='MAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MAT" Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32902).</sch:assert>
      <sch:assert id="a-3372-32903-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32903).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-34567-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34567).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-34568-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34568).</sch:assert>
    </sch:rule>

  </sch:pattern>
  
  <sch:pattern id="p-Substance-Administered-warnings">
    <sch:rule id="r-Substance-Administered-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:routeCode" >
      <sch:assert id="a-3372-32895-error" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32895).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-32905-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32905).</sch:assert>
    </sch:rule>

  </sch:pattern>
  
</sch:schema>