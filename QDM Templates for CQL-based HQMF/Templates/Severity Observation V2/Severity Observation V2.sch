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
    <sch:active pattern="p-Severity-Observation-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Severity-Observation-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Severity-Observation-errors">
    <sch:rule id="r-Severity-Observation-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30129-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30129).</sch:assert>
      <sch:assert id="a-3346-30130-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-30130).</sch:assert>
      <sch:assert id="a-3346-30131-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30131).</sch:assert>
      <sch:assert id="a-3346-30135-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30135).</sch:assert>
      <sch:assert id="a-3346-30138-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-30138).</sch:assert>
      <sch:assert id="a-3346-30140-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30140).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Severity-Observation-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30136-error" test="@code='SEV'">This code SHALL contain exactly one [1..1] @code="SEV" Severity Observation (CONF:3346-30136).</sch:assert>
      <sch:assert id="a-3346-30137-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30137).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Severity-Observation-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-30132-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30132) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.93" (CONF:3346-30133) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33691).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
  <sch:pattern id="p-Severity-Observation-warnings">
    <sch:rule id="r-Severity-Observation-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34843-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34843).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>