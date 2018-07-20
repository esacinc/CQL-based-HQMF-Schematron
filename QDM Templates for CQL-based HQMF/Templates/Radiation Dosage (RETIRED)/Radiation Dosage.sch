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
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-errors"/>
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-warnings"/>
  </sch:phase>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-errors">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-errors-abstract" abstract="true">
      <sch:assert id="a-3346-33526" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-33526).</sch:assert>
      <sch:assert id="a-3346-33527" test="hqmf:templateId[count(hqmf:item)=1]">This templateId SHALL contain exactly one [1..1] item (CONF:3346-33527).</sch:assert>
      <sch:assert id="a-3346-33528" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-33528).</sch:assert>
      <sch:assert id="a-3346-33531" test="hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.106']">This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.106" (CONF:3346-33531).</sch:assert>
      <sch:assert id="a-3346-34648" test="hqmf:templateId/hqmf:item[@extension='2017-05-01']">This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3346-34648).</sch:assert>
      <sch:assert id="a-3346-33533" test="hqmf:code[@code='228815006']">This code SHALL contain exactly one [1..1] @code="228815006" Incident Radiation Dose (CONF:3346-33533).</sch:assert>
      <sch:assert id="a-3346-33534" test="hqmf:code[@codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-33534).</sch:assert>
      <sch:assert id="a-3346-33529" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-33529).</sch:assert>
      <sch:assert id="a-3346-33530" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3346-33530).</sch:assert>
      <sch:assert id="a-3346-33532" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-33532).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.106' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-errors-abstract" />
    </sch:rule>
  </sch:pattern>

  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-warnings">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-warnings-abstract" abstract="true">
      <sch:assert id="a-3346-33535" test="count(hqmf:value[@xsi:type='PQ'])=1">SHOULD contain zero or one [0..1] value with @xsi:type="PQ" (CONF:3346-33535).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.106' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.106-2017-08-01-warnings-abstract" />
    </sch:rule>
  </sch:pattern>
  
</sch:schema>