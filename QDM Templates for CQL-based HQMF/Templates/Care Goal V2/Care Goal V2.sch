<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--

  Update: 08-14-2018 - Removed extension from context of templateId rule

-->

  
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  
  <sch:phase id="errors">
    <sch:active pattern="p-Care-Goal-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Care-Goal-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Care-Goal-errors">
    <sch:rule id="r-Care-Goal-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' ]]/hqmf:templateId">
      <sch:assert id="a-3346-28447" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-28447) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.7" (CONF:3346-28448). This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33051).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Care-Goal-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-27869" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-27869).</sch:assert>
      <sch:assert id="a-3346-27870" test="@moodCode='GOL'">SHALL contain exactly one [1..1] @moodCode="GOL" Goal (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-27870).</sch:assert>
      <sch:assert id="a-3346-34760" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34760).</sch:assert>
      <sch:assert id="a-3346-27872" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-27872)  </sch:assert>
      <sch:assert id="a-3346-32479" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32479).</sch:assert>
      <sch:assert id="a-3346-27873" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-27873).</sch:assert>
      <sch:assert id="a-3346-32481" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32481).</sch:assert>
      <sch:assert id="a-3346-32480" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32480).</sch:assert>
      <sch:assert id="a-3346-27876" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-27876).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Care-Goal-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-27874" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" (CONF:3346-27874).</sch:assert>
      <sch:assert id="a-3346-27875" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-27875).</sch:assert>
    </sch:rule>

    <sch:rule id="r-Care-Goal-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-32482" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32482).</sch:assert>
    </sch:rule>
      
    </sch:pattern>
  
  <sch:pattern id="p-Care-Goal-warnings">
    <sch:rule id="r-Care-Goal-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-32483-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-32483).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>