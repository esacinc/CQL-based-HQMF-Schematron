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
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-errors">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-errors-abstract" abstract="true">
      <sch:assert id="a-3346-32130" test="count(hqmf:templateId[count(hqmf:item[@root='2.16.840.1.113883.10.20.28.3.10'])=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32130) such that it SHALL contain exactly one [1..1] item (CONF:3346-32131). This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.3.10" (CONF:3346-32132).</sch:assert>
      <sch:assert id="a-3346-32135" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32135).</sch:assert>
      <sch:assert id="a-3346-32140" test="count(hqmf:participation[@typeCode='IRCP'])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32140) such that it SHALL contain exactly one [1..1] @typeCode="IRCP" Information Recipient (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32141).</sch:assert>
      <sch:assert id="a-3346-32147" test="count(hqmf:participation[@typeCode='AUT'])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32147) such that it SHALL contain exactly one [1..1] @typeCode="AUT" Author (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32148).</sch:assert>
      <sch:assert id="a-3346-33524" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-33524).</sch:assert>
      <sch:assert id="a-3346-32136" test="hqmf:statusCode[lower-case(normalize-space(@code))='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32136).</sch:assert>
      <sch:assert id="a-3346-32127" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3346-32127).</sch:assert>
      <sch:assert id="a-3346-32128" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32128).</sch:assert>
      <sch:assert id="a-3346-32133" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32133).</sch:assert>
      <sch:assert id="a-3346-32134" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32134).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.10' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-errors-abstract" />
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32130-branch-32130-errors-abstract" abstract="true">
      <sch:assert id="a-3346-33640-branch-32130" test="hqmf:item[@extension='2017-08-01']">This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33640).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32130-branch-32130-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.10' and @extension='2017-08-01']]/hqmf:templateId[hqmf:item[@root='2.16.840.1.113883.10.20.28.3.10']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32130-branch-32130-errors-abstract" />
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32140-branch-32140-errors-abstract" abstract="true">
      <sch:assert id="a-3346-32142-branch-32140" test="count(hqmf:role)=1">SHALL contain exactly one [1..1] role (CONF:3346-32142).</sch:assert>
      <sch:assert id="a-3346-32144-branch-32140" test="hqmf:role[count(hqmf:code)=1]">This role SHALL contain exactly one [1..1] code (CONF:3346-32144).</sch:assert>
      <sch:assert id="a-3346-32145-branch-32140" test="hqmf:role/hqmf:code[@code='158965000' and @codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @code="158965000" Medical Practitioner (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-32145).</sch:assert>
      <sch:assert id="a-3346-32146-branch-32140" test="hqmf:role/hqmf:code[@codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" SNOMED-CT (CONF:3346-32146).</sch:assert>
      <sch:assert id="a-3346-32143-branch-32140" test="hqmf:role[@classCode='ASSIGNED']">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32143).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32140-branch-32140-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.10' and @extension='2017-08-01']]/hqmf:participation[@typeCode='IRCP']">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32140-branch-32140-errors-abstract" />
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32147-branch-32147-errors-abstract" abstract="true">
      <sch:assert id="a-3346-32149-branch-32147" test="count(hqmf:role)=1">SHALL contain exactly one [1..1] role (CONF:3346-32149).</sch:assert>
      <sch:assert id="a-3346-32151-branch-32147" test="hqmf:role[count(hqmf:code)=1]">This role SHALL contain exactly one [1..1] code (CONF:3346-32151).</sch:assert>
      <sch:assert id="a-3346-32152-branch-32147" test="hqmf:role/hqmf:code[@code='158965000' and @codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @code="158965000" Medical practitioner (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-32152).</sch:assert>
      <sch:assert id="a-3346-32153-branch-32147" test="hqmf:role/hqmf:code[@codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" SNOMED-CT (CONF:3346-32153).</sch:assert>
      <sch:assert id="a-3346-32150-branch-32147" test="hqmf:role[@classCode='ASSIGNED']">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32150).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32147-branch-32147-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.10' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT']">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-32147-branch-32147-errors-abstract" />
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-warnings">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-warnings-abstract" abstract="true">
      <sch:assert id="a-3346-33525" test="hqmf:code[@valueSet]">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33525).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.10' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.10-2017-08-01-warnings-abstract" />
    </sch:rule>
  </sch:pattern>
  
  
</sch:schema>