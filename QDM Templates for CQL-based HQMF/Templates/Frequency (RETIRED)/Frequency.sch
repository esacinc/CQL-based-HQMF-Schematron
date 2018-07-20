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
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-errors">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-errors-abstract" abstract="true">
      <sch:assert id="a-3346-31051" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31051).</sch:assert>
      <sch:assert id="a-3346-31052" test="hqmf:templateId[count(hqmf:item)=1]">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31052).</sch:assert>
      <sch:assert id="a-3346-31055" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31055).</sch:assert>
      <sch:assert id="a-3346-31053" test="hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.99']">This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.99" (CONF:3346-31053).</sch:assert>
      <sch:assert id="a-3346-34652" test="hqmf:templateId/hqmf:item[@extension='2017-05-01']">This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3346-34652).</sch:assert>
      <sch:assert id="a-3346-31056" test="hqmf:code[@code='307430002']">This code SHALL contain exactly one [1..1] @code="307430002" Frequency (CONF:3346-31056).</sch:assert>
      <sch:assert id="a-3346-31057" test="hqmf:code[@codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-31057).</sch:assert>
      <sch:assert id="a-3346-31049" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31049).</sch:assert>
      <sch:assert id="a-3346-31050" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31050).</sch:assert>
      <sch:assert id="a-3346-31054" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31054).</sch:assert>
      <sch:assert id="a-3346-31058" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31058).</sch:assert>
      <sch:assert id="a-3346-31059" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3346-31059).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.99' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-errors-abstract" />
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-warnings">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-warnings-abstract" abstract="true">
      <sch:assert test="."></sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.99' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.99-2017-08-01-warnings-abstract" />
    </sch:rule>
  </sch:pattern>
  
</sch:schema>