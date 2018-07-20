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
    <sch:active pattern="p-Provider-Care-Experience-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Provider-Care-Experience-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Provider-Care-Experience-errors">
    <sch:rule id="r-Provider-Care-Experience-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-32218-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-32218).</sch:assert>
      <sch:assert id="a-3335-32219-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-32219).</sch:assert>
      <sch:assert id="a-3335-34708-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34708).</sch:assert>
      <sch:assert id="a-3335-32220-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-32220).</sch:assert>
      <sch:assert id="a-3335-32223-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-32223).</sch:assert>
      <sch:assert id="a-3335-32227-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-32227).</sch:assert>
      <sch:assert id="a-3335-32224-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-32224).</sch:assert>
      <sch:assert id="a-3335-32228-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-32228).</sch:assert>
      <sch:assert id="a-3335-32230-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-32230).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Provider-Care-Experience-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-32225-error" test="@code='405193005'">This code SHALL contain exactly one [1..1] @code="405193005" Caregiver Satisfaction (CONF:3335-32225).</sch:assert>
      <sch:assert id="a-3335-32226-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-32226).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Care-Experience-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-32221-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-32221) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.70" (CONF:3335-32222) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33701). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Care-Experience-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-32229-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-32229).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Provider-Care-Experience-warnings">
    <sch:rule id="r-Provider-Care-Experience-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-32231-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-32231).</sch:assert>
    </sch:rule>
   </sch:pattern>
  
</sch:schema>