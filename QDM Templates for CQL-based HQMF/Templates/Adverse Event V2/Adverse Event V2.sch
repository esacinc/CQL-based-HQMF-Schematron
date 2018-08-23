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
    <sch:active pattern="p-Adverse-Event-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Adverse-Event-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Adverse-Event-errors">
    
    <sch:rule id="r-Adverse-Event-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34184-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01'])=1">SHALL contain exactly one [1..1] item (CONF:3346-34184). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.120" (CONF:3346-34194)	This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34531). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Adverse-Event-errors"  context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]">
      <sch:assert id="a-3346-34210-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3346-34210).</sch:assert>
      <sch:assert id="a-3346-34211-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34211).</sch:assert>
      <sch:assert id="a-3346-34758-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34758).</sch:assert>
      <sch:assert id="a-3346-34183-error" test="count(hqmf:templateId[count(hqmf:item)=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34183) </sch:assert>
      <sch:assert id="a-3346-34212-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34212).</sch:assert>
      <sch:assert id="a-3346-34185-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34185).</sch:assert>
      <sch:assert id="a-3346-34213-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34213).</sch:assert>
      <sch:assert id="a-3346-34186-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34186).</sch:assert>
      <sch:assert id="a-3346-34188-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34188).</sch:assert>
      <sch:assert id="a-3346-34189-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34189) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34207). HALL contain exactly one [1..1] role (CONF:3346-34190). </sch:assert>
    </sch:rule> 
  
    <sch:rule id="r-Adverse-Event-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34196-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34196).</sch:assert>
      <sch:assert id="a-3346-34197-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34197). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Adverse-Event-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34198-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34198).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Adverse-Event-value-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34201-error" test="@code='281647001'">This value SHALL contain exactly one [1..1] @code="281647001" Adverse Reaction (CONF:3346-34201).</sch:assert>
      <sch:assert id="a-3346-34202-error" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34202).</sch:assert>
    </sch:rule>

    <sch:rule id="r-Adverse-Event-participation-role-CSM-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='CSM']/hqmf:role">
      <sch:assert id="a-3346-34206-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34206). </sch:assert>
      <sch:assert id="a-3346-34191-error" test="count(hqmf:playingEntity)=1">This role SHALL contain exactly one [1..1] playingEntity (CONF:3346-34191). </sch:assert>
    </sch:rule>  

    <sch:rule id="r-Adverse-Event-participation-role-AUT-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='AUT']/hqmf:role">
      <sch:assert id="a-3346-34696-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34696).</sch:assert>
     </sch:rule>
    
    <sch:rule id="r-Adverse-Event-participation-role-playingEntity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='CSM']/hqmf:role/hqmf:playingEntity">
      <sch:assert id="a-3346-34204-error" test="@classCode='MMAT'">This playingEntity SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34204).</sch:assert>
      <sch:assert id="a-3346-34205-error" test="@determinerCode='KIND'">This playingEntity SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34205).</sch:assert>
      <sch:assert id="a-3346-34192-error" test="count(hqmf:code)=1">This playingEntity SHALL contain exactly one [1..1] code (CONF:3346-34192).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Adverse-Event-outboundRelationship-observationCriteria-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR']/hqmf:observationCriteria">
      <sch:assert id="a-3346-34687-error" test="@classCode='OBS'">This observationCriteria SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3346-34687). </sch:assert>
      <sch:assert id="a-3346-34688-error" test="@moodCode='EVN'">This observationCriteria SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34688). </sch:assert>
      <sch:assert id="a-3346-34684-error" test="count(hqmf:code)=1">This observationCriteria SHALL contain exactly one [1..1] code (CONF:3346-34684).  </sch:assert>
      <sch:assert id="a-3346-34685-error" test="count(hqmf:value[@xsi:type='CD'])=1">This observationCriteria SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34685). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Adverse-Event-outboundRelationship-observationCriteria-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR']/hqmf:observationCriteria/hqmf:code">
      <sch:assert id="a-3346-34689-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34689). </sch:assert>
      <sch:assert id="a-3346-34690-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34690). </sch:assert>
      
    </sch:rule>
  </sch:pattern>

  <sch:pattern id="p-Adverse-Event-warnings">
    
    <sch:rule id="r-Adverse-Event-participation-role-playingEntity-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='CSM']/hqmf:role/hqmf:playingEntity/hqmf:code">
      <sch:assert id="a-3346-34203-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34203).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Adverse-Event-outboundRelationship-observationCriteria-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR']/hqmf:observationCriteria/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34691-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34691). </sch:assert>
    </sch:rule>
      
  </sch:pattern>
  
</sch:schema>