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
    <sch:active pattern="p-Symptom-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Symptom-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Symptom-errors">
    <sch:rule id="r-Symptom-34079-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34080-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34080) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.116" (CONF:3346-34093) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34480). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Symptom-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34108-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-34108).</sch:assert>
      <sch:assert id="a-3346-34109-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34109).</sch:assert>
      <sch:assert id="a-3346-34079-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34079).</sch:assert>
      <sch:assert id="a-3346-34081-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34081).</sch:assert>
      <sch:assert id="a-3346-34082-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34082).</sch:assert>
      <sch:assert id="a-3346-34088-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34088).</sch:assert>
      <sch:assert id="a-3346-34111-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34111).</sch:assert>
      <sch:assert id="a-3346-34112-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34112).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Symptom-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34095-error" test="@code='418799008'">This code SHALL contain exactly one [1..1] @code="418799008" Symptom (CONF:3346-34095).</sch:assert>
      <sch:assert id="a-3346-34096-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34096).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Symptom-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34097-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34097).</sch:assert>
    </sch:rule>
    
   </sch:pattern>
  
  <sch:pattern id="p-Symptom-warnings">
    <sch:rule id="r-Symptom-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34105-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34105).</sch:assert>
    </sch:rule>
 
  </sch:pattern>
  
</sch:schema>