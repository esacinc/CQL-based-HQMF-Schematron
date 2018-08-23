<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--

  Update: 08-22-2018 - New template

-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  
  <sch:phase id="errors">
    <sch:active pattern="p-Days-Supplied-errors" />
  </sch:phase>
  
   <sch:pattern id="p-Days-Supplied-errors">
    <sch:rule id="r-Days-Supplied-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' ]]/hqmf:templateId">
      <sch:assert id="a-3372-34886-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34886) such that it  SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.133" (CONF:3372-34887)  SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34888). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Days-Supplied-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34889-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3372-34889).</sch:assert>
      <sch:assert id="a-3372-34890-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34890). </sch:assert>
      <sch:assert id="a-3372-34885-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34885). </sch:assert>
      <sch:assert id="a-3372-34891-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34891)</sch:assert>
      <sch:assert id="a-3372-34893-error" test="count(hqmf:quantity)=1">SHALL contain exactly one [1..1] quantity (CONF:3372-34893). </sch:assert>
      <sch:assert id="a-3372-34892-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34892). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Days-Supplied-quantity-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' and @extension='2018-05-01']]/hqmf:quantity">
       <sch:assert id="a-3372-34894-error" test="@unit='d'">This quantity SHALL contain exactly one [1..1] @unit="d" Day (CodeSystem: UCUM urn:oid:2.16.840.1.113883.6.8) (CONF:3372-34894).</sch:assert>
    </sch:rule>
  </sch:pattern>

 </sch:schema>