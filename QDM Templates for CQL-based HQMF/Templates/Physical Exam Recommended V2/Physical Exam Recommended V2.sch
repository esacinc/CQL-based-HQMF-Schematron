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
    <sch:active pattern="p-Physical-Exam-Recommended-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Physical-Exam-Recommended-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Physical-Exam-Recommended-errors">
    <sch:rule id="r-Physical-Exam-Recommended-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]" >
      <sch:assert id="a-3372-31443-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-31443).</sch:assert>
      <sch:assert id="a-3372-31444-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31444).</sch:assert>
      <sch:assert id="a-3372-31446-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31446).</sch:assert>
      <sch:assert id="a-3372-31449-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31449).</sch:assert>
      <sch:assert id="a-3372-31453-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31453).</sch:assert>
      <sch:assert id="a-3372-31450-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31450).</sch:assert>
      <sch:assert id="a-3372-31454-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31454).</sch:assert>
      <sch:assert id="a-3372-31459-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-31459).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31451-error" test="@code='5880005'">This code SHALL contain exactly one [1..1] @code="5880005" Physical Examination (CONF:3372-31451).</sch:assert>
      <sch:assert id="a-3372-31452-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-31452).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-31447-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31447) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.61" (CONF:3372-31448) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33449).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-31455-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-31455).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-participaiont-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34462-error-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34462).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-participaiont-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34463-error-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34463). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Physical-Exam-Recommended-warnings">
    <sch:rule id="r-Physical-Exam-Recommended-targetSiteCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-31465-warning" test="count(hqmf:item)=1">The targetSiteCode, if present, SHOULD contain zero or one [0..1] item (CONF:3372-31465).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-31466-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31466).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:value">
      <sch:assert id="a-3372-31460-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31460).</sch:assert>
    </sch:rule>

  </sch:pattern>
  
</sch:schema>