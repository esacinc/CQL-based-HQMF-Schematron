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
    <sch:active pattern="p-Supply-errors"/>
  </sch:phase>
  
   
  <sch:pattern id="p-Supply-errors">
    <sch:rule id="r-Supply-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.129' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34795" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3346-34795).</sch:assert>
      <sch:assert id="a-3346-34796" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34796).</sch:assert>
      <sch:assert id="a-3346-34771" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34771).</sch:assert>
      <sch:assert id="a-3346-34797" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34797).</sch:assert>
      <sch:assert id="a-3346-34798" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34798).</sch:assert>
      <sch:assert id="a-3346-34800" test="count(hqmf:quantity)=1">SHALL contain exactly one [1..1] quantity (CONF:3346-34800).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Supply-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.129' and @extension='2017-08-01']]/hqmf:templateId">
      <sch:assert id="a-3346-34772" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.129' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34772) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.129" (CONF:3346-34783) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34784).</sch:assert>
   </sch:rule>
    
  </sch:pattern>
  
 
  
</sch:schema>