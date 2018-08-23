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
    <sch:active pattern="p-Component-errors" />
  </sch:phase>
  
 
  <sch:pattern id="p-Component-errors">
    <sch:rule id="r-Component-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.121']]/hqmf:templateId" >
      <sch:assert id="a-3335-34571-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.121' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34571) such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.121" (CONF:3335-34573). 	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34580).</sch:assert>
    </sch:rule>      
    
    <sch:rule id="r-Component-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.121' and @extension='2017-05-01']]" >
      <sch:assert id="a-3335-34576-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34576).</sch:assert>
      <sch:assert id="a-3335-34577-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3335-34577).</sch:assert>
      <sch:assert id="a-3335-34570-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34570) </sch:assert>
      <sch:assert id="a-3335-34572-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34572).</sch:assert>
      <sch:assert id="a-3335-34578-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34578).</sch:assert>
      <sch:assert id="a-3335-34579-error" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3335-34579).</sch:assert>
      <sch:assert id="a-3335-34607-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34607).</sch:assert>
    </sch:rule>
 
    </sch:pattern>
  
  
</sch:schema>