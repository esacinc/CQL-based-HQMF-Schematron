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
    <sch:active pattern="p-Laboratory-Test-Reference-Range-errors" />
  </sch:phase>
  

  
  <sch:pattern id="p-Laboratory-Test-Reference-Range-errors">
    <sch:rule id="r-Laboratory-Test-Reference-Range-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34406-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34406).</sch:assert>
      <sch:assert id="a-3335-34407-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-34407).</sch:assert>
      <sch:assert id="a-3335-34398-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34398).</sch:assert>
      <sch:assert id="a-3335-34400-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34400).</sch:assert>
      <sch:assert id="a-3335-34405-error" test="count(hqmf:value[@xsi:type='IVL_PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="IVL_PQ" (CONF:3335-34405).</sch:assert>
      <sch:assert id="a-3335-34408-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34408).</sch:assert>
      <sch:assert id="a-3335-34409-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34409).</sch:assert>
      
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Reference-Range-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-34399-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34399). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.124" (CONF:3335-34401) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34615).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Reference-Range-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34403-error" test="@code='19147-8'">This code SHALL contain exactly one [1..1] @code="19147-8" Lab Test Reference Range (CONF:3335-34403).</sch:assert>
      <sch:assert id="a-3335-34404-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-34404).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  

</sch:schema>