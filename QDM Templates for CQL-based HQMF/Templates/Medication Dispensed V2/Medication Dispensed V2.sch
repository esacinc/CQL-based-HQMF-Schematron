<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--

  Update: 08-14-2018 - Removed extension from context of templateId rule
  Update: 08-22-2018 - Added 3372-34918, Participation(PRF) role

-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" >
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  <sch:phase id="errors">
    <sch:active pattern="p-Medication-Dispensed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Medication-Dispensed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Medication-Dispensed-errors">
    <sch:rule id="r-Medication-Dispensed-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' ]]/hqmf:templateId">
      <sch:assert id="a-3346-32564-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3346-32564). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.49" (CONF:3346-32565) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33752). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-32560-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3346-32560).</sch:assert>
      <sch:assert id="a-3346-32561-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32561).</sch:assert>
      <sch:assert id="a-3346-32563-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32563).</sch:assert>
      <sch:assert id="a-3346-32566-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32566).</sch:assert>
      <sch:assert id="a-3346-32567-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32567).</sch:assert>
      <sch:assert id="a-3346-32568-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32568).</sch:assert>
      <sch:assert id="a-3346-32573-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32573) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32574) SHALL contain exactly one [1..1] role (CONF:3346-32575).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Medication-Dispensed-statusCode-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-32582-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32582). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-CSM-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-32576-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32576).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-CSM-role-playingMaterial-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3346-32578-error" test="@classCode='MMAT'">The playingMaterial, if present, SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-32578). </sch:assert>
      <sch:assert id="a-3346-32579-error" test="@determinerCode='KIND'">The playingMaterial, if present, SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-32579).  </sch:assert>
      <sch:assert id="a-3346-32580-error" test="count(hqmf:code)=1">The playingMaterial, if present, SHALL contain exactly one [1..1] code (CONF:3346-32580).   </sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-AUT-time-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34865-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34865).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-AUT-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
       <sch:assert id="a-3346-34866-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3346-34866).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-PRF-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34918-error" test="@classCode='ROL'">i.	This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-34918).</sch:assert>
     </sch:rule>
    
   </sch:pattern>

  <sch:pattern id="p-Medication-Dispensed-warnings">
   <sch:rule id="r-Medication-Dispensed-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3346-3258-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-32581).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>