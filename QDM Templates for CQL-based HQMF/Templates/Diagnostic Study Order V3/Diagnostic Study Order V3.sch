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
    <sch:active pattern="p-Diagnostic-Study-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Diagnostic-Study-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Diagnostic-Study-Order-errors">
    <sch:rule id="r-Diagnostic-Study-Order-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]" >
      <sch:assert id="a-3372-34723-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-34723).</sch:assert>
      <sch:assert id="a-3372-30106-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:3372-30106).</sch:assert>
      <sch:assert id="a-3372-30108-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-30108)</sch:assert>
      <sch:assert id="a-3372-30110-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30110).</sch:assert>
      <sch:assert id="a-3372-30112-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30112).</sch:assert>
      <sch:assert id="a-3372-30111-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-30111).</sch:assert>
      <sch:assert id="a-3372-30232-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-30232).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-30109-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30109) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.22" (CONF:3372-30117) 	This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33643). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30233-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30233).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-33483-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33483). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33573-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33573). </sch:assert>
      <sch:assert id="a-3372-33574-error" test="count(hqmf:id)=1">This role SHALL contain exactly one [1..1] id (CONF:3372-33574).  </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Diagnostic-Study-Order-warnings">
    <sch:rule id="r-Diagnostic-Study-Order-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30126-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30126).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
  
</sch:schema>