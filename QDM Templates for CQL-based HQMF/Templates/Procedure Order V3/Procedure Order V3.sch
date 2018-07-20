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
    <sch:active pattern="p-Procedure-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Procedure-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Procedure-Order-errors">
    <sch:rule id="r-Procedure-Order-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-31120-error-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31120).</sch:assert>
      <sch:assert id="a-3372-33158-error-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-33158).</sch:assert>
      <sch:assert id="a-3372-31122-error-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31122)).</sch:assert>
      <sch:assert id="a-3372-31125-error-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31125).</sch:assert>
      <sch:assert id="a-3372-31128-error-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31128).</sch:assert>
      <sch:assert id="a-3372-31126-error-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31126).</sch:assert>
      <sch:assert id="a-3372-31129-error-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31129).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33147-error-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-33147). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-31123-error-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31123) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.66" (CONF:3372-31124) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33422).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33421-error-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-33421).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-33509-error-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33509). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33599-error-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33599). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Procedure-Order-warnings">
    <sch:rule id="r-Procedure-Order-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31127-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31127).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-priorityCode-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:priorityCode">
      <sch:assert id="a-3372-31134-warning" test="count(hqmf:item)=1">The priorityCode, if present, SHOULD contain zero or one [0..1] item (CONF:3372-31134). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33424-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33424).</sch:assert>
    </sch:rule>
      

  </sch:pattern>
  
</sch:schema>