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
    <sch:active pattern="p-Patient-Characteristic-Payer-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Patient-Characteristic-Payer-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Patient-Characteristic-Payer-errors">
    <sch:rule id="r-Patient-Characteristic-Payer-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31627-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31627).</sch:assert>
      <sch:assert id="a-3335-31628-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31628).</sch:assert>
      <sch:assert id="a-3335-34710-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34710).</sch:assert>
      <sch:assert id="a-3335-31629-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31629). </sch:assert>
      <sch:assert id="a-3335-31632-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31632).</sch:assert>
      <sch:assert id="a-3335-31636-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31636).</sch:assert>
      <sch:assert id="a-3335-31633-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31633).</sch:assert>
      <sch:assert id="a-3335-31637-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31637).</sch:assert>
      <sch:assert id="a-3335-31639-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31639).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Payer-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31634-error" test="@code='48768-6'">This code SHALL contain exactly one [1..1] @code="48768-6" Payment Source (CONF:3335-31634).</sch:assert>
      <sch:assert id="a-3335-31635-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-31635).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Payer-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31643-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31643).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Payer-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:templateId" >
      <sch:assert id="a-3335-31630-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-31630) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.58" (CONF:3335-31631) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34457). </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Patient-Characteristic-Payer-warnings">
    <sch:rule id="r-Patient-Characteristic-Payer-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31640-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-31640).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>