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
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-errors">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-errors-abstract" abstract="true">
      <sch:assert id="a-3346-31901" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31901).</sch:assert>
      <sch:assert id="a-3346-31902" test="hqmf:templateId[count(hqmf:item)=1]">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31902).</sch:assert>
      <sch:assert id="a-3346-31905" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31905).</sch:assert>
      <sch:assert id="a-3346-31908" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31908).</sch:assert>
      <sch:assert id="a-3346-31903" test="hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.26']">This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.26" (CONF:3346-31903).</sch:assert>
      <sch:assert id="a-3346-33370" test="hqmf:templateId/hqmf:item[@extension='2017-05-01']">This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3346-33370).</sch:assert>
      <sch:assert id="a-3346-31909" test="hqmf:statusCode[lower-case(normalize-space(@code))='active']">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31909).</sch:assert>
      <sch:assert id="a-3346-31898" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:3346-31898).</sch:assert>
      <sch:assert id="a-3346-31899" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31899).</sch:assert>
      <sch:assert id="a-3346-31904" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31904).</sch:assert>
      <sch:assert id="a-3346-31907" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31907).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-errors" context="hqmf:EncounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.26' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-errors-abstract" />
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-warnings">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-warnings-abstract" abstract="true">
      <sch:assert id="a-3346-31906" test="hqmf:code[@valueSet]">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31906).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-warnings" context="hqmf:EncounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.26' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.26-2017-08-01-warnings-abstract" />
    </sch:rule>
  </sch:pattern>
</sch:schema>