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
    <sch:active pattern="p-Result-errors"/>
  </sch:phase>
  
  
  <sch:pattern id="p-Result-errors">
    <sch:rule id="r-Result-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' ]]/hqmf:templateId">
      <sch:assert id="a-3346-32189-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01'])=1">This templateId  SHALL contain exactly one [1..1] item (CONF:3346-32189). such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.101" (CONF:3346-32190) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34653). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Result-errors"  context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-32186-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-32186).</sch:assert>
      <sch:assert id="a-3346-32187-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32187).</sch:assert>
      <sch:assert id="a-3346-32188-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32188).</sch:assert>
      <sch:assert id="a-3346-32192-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-32192).</sch:assert>
      <sch:assert id="a-3346-32195-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32195).</sch:assert>
      <sch:assert id="a-3346-32196-error" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3346-32196).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Result-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-32193-error" test="@code='394617004'">This code SHALL contain exactly one [1..1] @code="394617004" Result (CONF:3346-32193).</sch:assert>
      <sch:assert id="a-3346-32194-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-32194).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Result-effectiveTime-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01']]/hqmf:effectiveTime">
      <sch:assert id="a-3346-34762-error" test="count(hqmf:low)=1">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:3346-34762).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
 
</sch:schema>