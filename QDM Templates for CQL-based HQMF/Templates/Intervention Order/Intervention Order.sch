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
    <sch:active pattern="p-Intervention-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Intervention-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Intervention-Order-errors">
    <sch:rule id="r-Intervention-Order-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' ]]/hqmf:templateId">
      <sch:assert id="a-3335-30644-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30644)  such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.35" (CONF:3335-30645) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33383). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30631-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3335-30631).</sch:assert>
      <sch:assert id="a-3335-30632-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30632).</sch:assert>
      <sch:assert id="a-3335-30643-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30643).</sch:assert>
      <sch:assert id="a-3335-30650-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30650).</sch:assert>
      <sch:assert id="a-3335-30651-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30651).</sch:assert>
      <sch:assert id="a-3335-30652-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30652).</sch:assert>
      <sch:assert id="a-3335-30654-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30654).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Intervention-Order-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30655-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30655).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-participaton-AUT-time-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-33493-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-33493).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-participaton-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-33587-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-33587).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
 
  <sch:pattern id="p-Intervention-Order-warnings">
    <sch:rule id="r-Intervention-Order-code-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30653-error" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30653).</sch:assert>
    </sch:rule>
  </sch:pattern>
      
</sch:schema>