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
    <sch:active pattern="p-Related-To-errors"/>
  </sch:phase>
  
   
  <sch:pattern id="p-Related-To-errors">
    <sch:rule id="r-Related-To-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34718-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34718) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.127" (CONF:3346-34721) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34722). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Related-To-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34725-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-34725).</sch:assert>
      <sch:assert id="a-3346-34726-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3346-34726).</sch:assert>
      <sch:assert id="a-3346-34717-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34717).</sch:assert>
      <sch:assert id="a-3346-34727-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34727).</sch:assert>
      <sch:assert id="a-3346-34729-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34729).</sch:assert>
      <sch:assert id="a-3346-34719-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34719).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Related-To-id-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01']]/hqmf:id">
      <sch:assert id="a-3346-34730-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34730).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Related-To-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34723-error" test="@code='42752001'">This code SHALL contain exactly one [1..1] @code="42752001" Due to (CONF:3346-34723).</sch:assert>
      <sch:assert id="a-3346-34724-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34724).</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>