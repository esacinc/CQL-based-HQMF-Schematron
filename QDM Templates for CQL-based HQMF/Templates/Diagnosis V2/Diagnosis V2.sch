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
    <sch:active pattern="p-Diagnosis-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Diagnosis-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Diagnosis-errors">
    <sch:rule id="r-Diagnosis-errors"  context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-33768-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-33768).</sch:assert>
      <sch:assert id="a-3346-33769-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-33769).</sch:assert>
      <sch:assert id="a-3346-34702-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34702).</sch:assert>
      <sch:assert id="a-3346-33770-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-33770) </sch:assert>
      <sch:assert id="a-3346-33777-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-33777).</sch:assert>
      <sch:assert id="a-3346-33780-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-33780).</sch:assert>
      <sch:assert id="a-3346-33772-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-33772).</sch:assert>
      <sch:assert id="a-3346-33773-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-33773).</sch:assert>
      <sch:assert id="a-3346-33775-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-33775).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Diagnosis-code-errors"  context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-33778-error" test="@code='282291009' and @codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @code="282291009" Diagnosis (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-33778).</sch:assert>
      <sch:assert id="a-3346-33779-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (SNOMED CT) (CONF:3346-33779).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-statusCode-errors"  context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-33781-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-33781).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-targetSiteCode-error" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3346-33786-error" test="count(hqmf:item) =1 ">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3346-33786).</sch:assert>
    </sch:rule>  
    
    <sch:rule id="r-Diagnosis-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:templateId" >
      <sch:assert id="a-3346-33771-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-33771). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.110" (CONF:3346-33776) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34321).      </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  <sch:pattern id="p-Diagnosis-warnings">
    <sch:rule id="r-Diagnosis-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-33784-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33784).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Diagnosis-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3346-33788-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33788).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
  
</sch:schema>