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
    <sch:active pattern="p-Data-Criteria-Section-errors" />
  </sch:phase>
  
  <sch:pattern id="p-Data-Criteria-Section-errors">
    <sch:rule id="r-Data-Criteria-Section-errors-abstract" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-18804-error" test="count(hqmf:templateId[count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6'][ @extension='2018-05-01'])=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18804) such that it  SHALL contain exactly one [1..1] item (CONF:3372-18805) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.6" (CONF:3372-18806).SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33440).  </sch:assert>
      <sch:assert id="a-3372-18807-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18807).</sch:assert>
      <sch:assert id="a-3372-18857-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18857).</sch:assert>
      <sch:assert id="a-3372-18858-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3372-18858).</sch:assert>
      <sch:assert id="a-3372-18853-error" test="count(hqmf:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:3372-18853).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Data-Criteria-Section-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-18808-error" test="@code='57025-9'">This code SHALL contain exactly one [1..1] @code="57025-9" Data Criteria (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:3372-18808).</sch:assert>
      <sch:assert id="a-3372-30091-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3372-30091).</sch:assert>
    </sch:rule>
  
    <sch:rule id="r-Data-Criteria-Section-title-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']]/hqmf:title">
      <sch:assert id="a-3372-18964-error" test="@value='Data Criteria Section'">This title SHALL contain exactly one [1..1] @value="Data Criteria Section" (CONF:3372-18964). </sch:assert>
    </sch:rule>
    
   </sch:pattern>
  
 
</sch:schema>