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
    <sch:active pattern="p-Incision-Datetime-errors" />
  </sch:phase>
  
  <sch:pattern id="p-Incision-Datetime-errors">
    <sch:rule id="r-Incision-Datetime-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-29907-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" (CONF:3335-29907).</sch:assert>
      <sch:assert id="a-3335-29908-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-29908).</sch:assert>
      <sch:assert id="a-3335-29909-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-29909).</sch:assert>
      <sch:assert id="a-3335-29913-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-29913).</sch:assert>
      <sch:assert id="a-3335-29993-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-29993).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Incision-Datetime-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-29910-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-29910) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.89" (CONF:3335-29911) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33648).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Incision-Datetime-code-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-29914-error" test="@code='34896006'">This code SHALL contain exactly one [1..1] @code="34896006" Incision (CONF:3335-29914).</sch:assert>
      <sch:assert id="a-3335-29915-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-29915).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Incision-Datetime-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-33152-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-33152).</sch:assert>
    </sch:rule>  
  </sch:pattern>
 
</sch:schema>