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
    <sch:active pattern="p-Laboratory-Test-Component-errors" />
  </sch:phase>
  
  <sch:pattern id="p-Laboratory-Test-Component-errors">
    <sch:rule id="r-Laboratory-Test-Component-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.126']]/hqmf:templateId" >
      <sch:assert id="a-3335-34582-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.126' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34582) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.126" (CONF:3335-34584). This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34585). </sch:assert>
    </sch:rule> 
    <sch:rule id="r-Laboratory-Test-Component-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.126' and @extension='2017-05-01']]" >
      <sch:assert id="a-3335-34588-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34588).</sch:assert>
      <sch:assert id="a-3335-34589-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3335-34589).</sch:assert>
      <sch:assert id="a-3335-34581-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34581) </sch:assert>
    </sch:rule>
    
   </sch:pattern>
  
</sch:schema>