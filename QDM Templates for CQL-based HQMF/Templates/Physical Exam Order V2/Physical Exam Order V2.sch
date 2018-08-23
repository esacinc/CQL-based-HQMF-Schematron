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
    <sch:active pattern="p-Physical-Exam-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Physical-Exam-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Physical-Exam-Order-errors">
    <sch:rule id="r-Physical-Exam-Order-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' ]]/hqmf:templateId">
      <sch:assert id="a-3372-31409-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31409) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.61" (CONF:3372-31410) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33437). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]" >
      <sch:assert id="a-3372-31405-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-31405).</sch:assert>
      <sch:assert id="a-3372-31406-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31406).</sch:assert>
      <sch:assert id="a-3372-31408-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31408).</sch:assert>
      <sch:assert id="a-3372-31411-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31411).</sch:assert>
      <sch:assert id="a-3372-31413-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31413).</sch:assert>
      <sch:assert id="a-3372-31412-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31412).</sch:assert>
      <sch:assert id="a-3372-31414-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31414).</sch:assert>
      <sch:assert id="a-3372-31437-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-31437).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31434-error" test="@code='5880005'">This code SHALL contain exactly one [1..1] @code="5880005" Physical Examination (CONF:3372-31434).</sch:assert>
      <sch:assert id="a-3372-31435-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-31435).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-31415-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-31415).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-33504-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33504).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-33596-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33596). </sch:assert>
    </sch:rule>
    
  </sch:pattern>  
  
  <sch:pattern id="p-Physical-Exam-Order-warnings">
    <sch:rule id="r-Physical-Exam-Order-targetSiteCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-31423-warning" test="count(hqmf:item)=1">The targetSiteCode, if present, SHOULD contain zero or one [0..1] item (CONF:3372-31423).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-31424-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31424).</sch:assert>
    </sch:rule>  
    <sch:rule id="r-Physical-Exam-Order-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3372-31438-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31438).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
  
</sch:schema>