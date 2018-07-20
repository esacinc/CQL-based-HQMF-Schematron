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
    <sch:active pattern="p-Encounter-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Encounter-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Encounter-Order-errors">
    <sch:rule id="r-Encounter-Order-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30860-error" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:3335-30860).</sch:assert>
      <sch:assert id="a-3335-30861-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30861).</sch:assert>
      <sch:assert id="a-3335-30863-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30863).</sch:assert>
      <sch:assert id="a-3335-30867-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30867).</sch:assert>
      <sch:assert id="a-3335-30870-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30870).</sch:assert>
      <sch:assert id="a-3335-30866-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30866).</sch:assert>
      <sch:assert id="a-3335-30869-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30869).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Order-statusCode-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30871-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30871).</sch:assert>      
    </sch:rule>
    <sch:rule id="r-Encounter-Order-templateId-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-30864-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30864). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.27" (CONF:3335-30865) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33645).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Order-participation-AUT-time-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-33488-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-33488).</sch:assert>      
    </sch:rule>
    <sch:rule id="r-Encounter-Order-participation-AUT-role-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-33576-error" test="@classCode='ROL'">i.	This role SHALL contain exactly one [1..1] @classCode="ROL" Role(CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-33576). </sch:assert>      
    </sch:rule>
    
   </sch:pattern>  
  
  <sch:pattern id="p-Encounter-Order-warnings">
    <sch:rule id="r-Encounter-Order-code-warnings"  context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30868-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30868).</sch:assert>
    </sch:rule> 
  </sch:pattern>
  
</sch:schema>