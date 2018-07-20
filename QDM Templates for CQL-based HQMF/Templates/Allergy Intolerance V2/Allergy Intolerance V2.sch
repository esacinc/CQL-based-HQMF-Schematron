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
    <sch:active pattern="p-Allergy-Intolerance-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Allergy-Intolerance-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Allergy-Intolerance-errors">
    <sch:rule id="r-Allergy-Intolerance-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34241-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3346-34241).</sch:assert>
      <sch:assert id="a-3346-34242-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34242).</sch:assert>
      <sch:assert id="a-3346-34759-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34759).</sch:assert>
      <sch:assert id="a-3346-34215-error" test="count(hqmf:templateId[count(hqmf:item)=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34215)</sch:assert>
      <sch:assert id="a-3346-34243-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34243).</sch:assert>
      <sch:assert id="a-3346-34217-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34217).</sch:assert>
      <sch:assert id="a-3346-34244-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34244).</sch:assert>
      <sch:assert id="a-3346-34218-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34218).</sch:assert>
      <sch:assert id="a-3346-34220-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34220).</sch:assert>
      <sch:assert id="a-3346-34221-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34221) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34240). SHALL contain exactly one [1..1] role (CONF:3346-34222).  </sch:assert>
    </sch:rule>
   
    <sch:rule id="r-Allergy-Intolerance-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-34216-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01'])=1">SHALL contain exactly one [1..1] item (CONF:3346-34216) such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.119" (CONF:3346-34228) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34532). </sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Allergy-Intolerance-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34229-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34229). </sch:assert>
      <sch:assert id="a-3346-34230-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34230). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Allergy-Intolerance-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34231-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34231).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Allergy-Intolerance-value-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34234-error" test="@code='106190000'">This value SHALL contain exactly one [1..1] @code="106190000" Allergy (CONF:3346-34234).</sch:assert>
      <sch:assert id="a-3346-34235-error" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34235).</sch:assert>
    </sch:rule>

   
    <sch:rule id="r-Allergy-Intolerance-participation-CSM-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34239-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34239).</sch:assert>
      <sch:assert id="a-3346-34223-error" test="count(hqmf:playingEntity)=1">This role SHALL contain exactly one [1..1] playingEntity (CONF:3346-34223).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Allergy-Intolerance-participation-role-playingEntity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity">
      <sch:assert id="a-3346-34237-error" test="@classCode='MMAT'">This playingEntity SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34237).</sch:assert>
      <sch:assert id="a-3346-34238-error" test="@determinerCode='KIND'">This playingEntity SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34238).</sch:assert>
     <sch:assert id="a-3346-34224-error" test="count(hqmf:code)=1">This playingEntity SHALL contain exactly one [1..1] code (CONF:3346-34224).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Allergy-Intolerance-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34714-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34714). </sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Allergy-Intolerance-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34715-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34715). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Allergy-Intolerance-outboundRelationship-observationCriteria-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR'][count(hqmf:observationCriteria)=1]/hqmf:observationCriteria">
      <sch:assert id="a-3346-34707-error" test="@classCode='OBS'">This observationCriteria SHALL contain exactly one [1..1] @classCode="OBS" (CONF:3346-34707).  </sch:assert>
      <sch:assert id="a-3346-34708-error" test="@moodCode='EVN'">This observationCriteria SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:3346-34708).  </sch:assert>
      <sch:assert id="a-3346-34706-error" test="count(hqmf:code)=1">This observationCriteria SHALL contain exactly one [1..1] code (CONF:3346-34706). </sch:assert>
      <sch:assert id="a-3346-34700-error" test="count(hqmf:value[@xsi:type='CD'])=1">This observationCriteria SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34700). </sch:assert>
    </sch:rule>

    <sch:rule id="r-Allergy-Intolerance-outboundRelationship-observationCriteria-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR'][count(hqmf:observationCriteria)=1]/hqmf:observationCriteria/hqmf:code">
      <sch:assert id="a-3346-34698-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34698). </sch:assert>
      <sch:assert id="a-3346-34699-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34699). </sch:assert>
    </sch:rule>
    
   
   </sch:pattern>
 
  <sch:pattern id="p-Allergy-Intolerance-warnings">
    <sch:rule id="r-Allergy-Intolerance-participation-role-playingEntity-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity/hqmf:code">
      <sch:assert id="a-3346-34236-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34236).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-outboundRelationship-observationCriteria-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR'][count(hqmf:observationCriteria)=1]/hqmf:observationCriteria/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34701-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34701).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>