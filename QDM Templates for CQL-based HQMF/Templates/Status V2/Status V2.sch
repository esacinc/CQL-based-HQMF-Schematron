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
    <sch:active pattern="p-Status-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Status-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Status-errors">
    <sch:rule id="r-Status-30153-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94']]/hqmf:templateId">
      <sch:assert id="a-3346-30155-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30155). such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.94" (CONF:3346-30156) 	This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33690). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Status-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01']]" >
      <sch:assert id="a-3346-30151-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30151).</sch:assert>
      <sch:assert id="a-3346-30152-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-30152).</sch:assert>
      <sch:assert id="a-3346-30153-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30153).</sch:assert>
      <sch:assert id="a-3346-30158-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30158).</sch:assert>
      <sch:assert id="a-3346-30162-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-30162).</sch:assert>
      <sch:assert id="a-3346-30161-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30161).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Status-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30159-error" test="@code='33999-4'">This code SHALL contain exactly one [1..1] @code="33999-4" Status (CONF:3346-30159).</sch:assert>
      <sch:assert id="a-3346-30160-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3346-30160).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
  <sch:pattern id="p-Status-warnings">
    <sch:rule id="r-Status-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34844-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34844).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>