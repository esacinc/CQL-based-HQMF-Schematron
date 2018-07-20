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
    <sch:active pattern="p-Physical-Exam-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Physical-Exam-Performed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Physical-Exam-Performed-errors">
    <sch:rule id="r-Physical-Exam-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31251-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31251).</sch:assert>
      <sch:assert id="a-3346-31252-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31252).</sch:assert>
      <sch:assert id="a-3346-31254-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31254).</sch:assert>
      <sch:assert id="a-3346-31257-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31257).</sch:assert>
      <sch:assert id="a-3346-31260-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31260).</sch:assert>
      <sch:assert id="a-3346-31258-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31258).</sch:assert>
      <sch:assert id="a-3346-31261-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31261).</sch:assert>
      <sch:assert id="a-3346-31441-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-31441).</sch:assert>     
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-31439-error" test="@code='5880005'">This code SHALL contain exactly one [1..1] @code="5880005" Physical Examination (CONF:3346-31439).</sch:assert>
      <sch:assert id="a-3346-31440-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-31440).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31262-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31262).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-31255-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3346-31255). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.62" (CONF:3346-31256) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33428).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-methodCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-31268-error" test="count(hqmf:item)=1">The methodCode, if present, SHALL contain exactly one [1..1] item (CONF:3346-31268). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-participaiont-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34553-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34553).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-participaiont-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34554-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34554). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Physical-Exam-Performed-warnings">
    <sch:rule id="r-Physical-Exam-Performed-targetSiteCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3346-31271-warning" test="count(hqmf:item)=1">The targetSiteCode, if present, SHOULD contain zero or one [0..1] item (CONF:3346-31271).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3346-31272-warnnig" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31272).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3346-31269-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31269).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
       <sch:assert id="a-3346-31442-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31442).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>