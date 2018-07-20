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
    <sch:active pattern="p-Dosage-errors" />
  </sch:phase>
  
  
  <sch:pattern id="p-Dosage-errors">
    <sch:rule id="r-Dosage-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34423-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34423).</sch:assert>
      <sch:assert id="a-3335-34424-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-34424).</sch:assert>
      <sch:assert id="a-3335-34426-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34426).</sch:assert>
      <sch:assert id="a-3335-34429-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34429).</sch:assert>
      <sch:assert id="a-3335-34430-error" test="count(hqmf:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:3335-34430).</sch:assert>
      <sch:assert id="a-3335-34420-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34420).</sch:assert>
      <sch:assert id="a-3335-34422-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34422).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Dosage-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-34421-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34421)) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.125" (CONF:3335-34425) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34650).</sch:assert>
    </sch:rule>
     <sch:rule id="r-Dosage-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34427-error" test="@code='260911001'">This code SHALL contain exactly one [1..1] @code="260911001" Dosage (CONF:3335-34427).</sch:assert>
      <sch:assert id="a-3335-34428-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-34428).</sch:assert>
    </sch:rule>
  </sch:pattern>
  

</sch:schema>