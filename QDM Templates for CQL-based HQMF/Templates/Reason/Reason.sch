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
    <sch:active pattern="p-Reason-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Reason-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-Reason-errors">
    <sch:rule id="r-Reason-29897-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' ]]/hqmf:templateId">
      <sch:assert id="a-3335-29898-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' and @extension='2017-05-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-29898) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.88" (CONF:3335-29899) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33686).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Reason-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-29895-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-29895).</sch:assert>
      <sch:assert id="a-3335-29896-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-29896).</sch:assert>
      <sch:assert id="a-3335-29897-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-29897). </sch:assert>
      <sch:assert id="a-3335-29901-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-29901).</sch:assert>
      <sch:assert id="a-3335-29904-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-29904).</sch:assert>
      <sch:assert id="a-3335-33173-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-33173).</sch:assert>
    </sch:rule>
  </sch:pattern>

  <sch:pattern id="p-Reason-warnings">
    <sch:rule id="r-Reason-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-34681-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34681).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>