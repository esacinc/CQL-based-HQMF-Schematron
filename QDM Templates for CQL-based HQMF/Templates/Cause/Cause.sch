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
    <sch:active pattern="p-Cause-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Cause-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Cause-errors">
    <sch:rule id="r-Cause-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-33456-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-33456).</sch:assert>
      <sch:assert id="a-3335-33457-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3335-33457).</sch:assert>
      <sch:assert id="a-3335-33453-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-33453)</sch:assert>
      <sch:assert id="a-3335-33455-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-33455).</sch:assert>
      <sch:assert id="a-3335-33459-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-33459).</sch:assert>
      <sch:assert id="a-3335-33462-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-33462).</sch:assert>
      <sch:assert id="a-3335-33463-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-33463).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Cause-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01']]/hqmf:code">
       <sch:assert id="a-3335-33460-error" test="@code='42752001'">This code SHALL contain exactly one [1..1] @code="42752001" Due to (CONF:3335-33460).</sch:assert>
       <sch:assert id="a-3335-33461-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-33461).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Cause-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-33454-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-33454). such that it	This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.105" (CONF:3335-33458). This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34647). </sch:assert>
    </sch:rule>
  </sch:pattern>

  <sch:pattern id="p-Cause-warnings">
    <sch:rule id="r-Cause-valuewarnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']" >
      <sch:assert id="a-3335-34663-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34663).</sch:assert>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>