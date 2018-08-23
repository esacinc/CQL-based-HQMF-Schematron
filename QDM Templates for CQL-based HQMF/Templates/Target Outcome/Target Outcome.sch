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
    <sch:active pattern="p-Target-Outcome-errors"/>
  </sch:phase>
  
 
  <sch:pattern id="p-Target-Outcome-errors">
    <sch:rule id="r-Target-Outcome-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' ]]/hqmf:templateId">
      <sch:assert id="a-3346-29105" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-29105) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.128" (CONF:3346-29108) SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-29109). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Target-Outcome-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-29112" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-29112).</sch:assert>
      <sch:assert id="a-3346-29113" test="@moodCode='GOL'">SHALL contain exactly one [1..1] @moodCode="GOL" Goal (CONF:3346-29113).</sch:assert>
      <sch:assert id="a-3346-29104" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-29104). </sch:assert>
      <sch:assert id="a-3346-29106" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-29106).</sch:assert>
      <sch:assert id="a-3346-29114" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-29114).</sch:assert>
      <sch:assert id="a-3346-29116" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-29116).</sch:assert>
      <sch:assert id="a-3346-29107" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3346-29107).</sch:assert>
    </sch:rule>
     <sch:rule id="r-Target-Outcome-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-29110" test="@code='385676005'">This code SHALL contain exactly one [1..1] @code="385676005" Outcome of action (CONF:3346-29110).</sch:assert>
      <sch:assert id="a-3346-29111" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-29111).</sch:assert>
    </sch:rule>

  </sch:pattern>  
</sch:schema>