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
    <sch:active pattern="p-Measure-Description-Section-errors" />
  </sch:phase>
  
  <sch:pattern id="p-Measure-Description-Section-errors">
    <sch:rule id="r-Measure-Description-Section-templateId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2']]/hqmf:component/hqmf:measureDescriptionSection/hqmf:templateId">
      <sch:assert id="a-3372-18898-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.3'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:87-18898) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.3" (CONF:87-18899). </sch:assert>    
    </sch:rule>
    <sch:rule id="r-Measure-Description-Section-errors"  context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureDescriptionSection">
      <sch:assert id="a-3372-18897-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18897). </sch:assert>
      <sch:assert id="a-3372-18914-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18914). </sch:assert>
      <sch:assert id="a-3372-18918-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18918). </sch:assert>
      <sch:assert id="a-3372-18920-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3372-18920). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Description-Section-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureDescriptionSection/hqmf:code">
      <sch:assert id="a-3372-19064-error" test="@code='74045-6'">This code SHALL contain exactly one [1..1] @code="74045-6" Measure Description (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:87-19064).</sch:assert>
      <sch:assert id="a-3372-30102-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:87-30102).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Measure-Description-Section-title-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureDescriptionSection/hqmf:title">
      <sch:assert id="a-3372-18919-error" test="@value='Measure Description Section'">This title SHALL contain exactly one [1..1] @value="Measure Description Section" (CONF:87-18919).</sch:assert>
    </sch:rule>
  </sch:pattern>
    
  
</sch:schema>