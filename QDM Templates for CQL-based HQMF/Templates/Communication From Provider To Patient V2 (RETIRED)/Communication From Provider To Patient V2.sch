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
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-errors">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-errors-abstract" abstract="true">
      <sch:assert id="a-3346-32078" test="count(hqmf:templateId[count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9'])=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32078) such that it SHALL contain exactly one [1..1] item (CONF:3346-32079). This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.9" (CONF:3346-32080).</sch:assert>
      <sch:assert id="a-3346-32083" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32083).</sch:assert>
      <sch:assert id="a-3346-32088" test="count(hqmf:participation[@typeCode='IRCP'])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32088) such that it SHALL contain exactly one [1..1] @typeCode="IRCP" Information Recipient (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32089).</sch:assert>
      <sch:assert id="a-3346-32092" test="count(hqmf:participation[@typeCode='AUT'])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32092) such that it SHALL contain exactly one [1..1] @typeCode="AUT" Author (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32093).</sch:assert>
      <sch:assert id="a-3346-33521" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-33521).</sch:assert>
      <sch:assert id="a-3346-32084" test="hqmf:statusCode[lower-case(normalize-space(@code))='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32084).</sch:assert>
      <sch:assert id="a-3346-32075" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3346-32075).</sch:assert>
      <sch:assert id="a-3346-32076" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32076).</sch:assert>
      <sch:assert id="a-3346-32081" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32081).</sch:assert>
      <sch:assert id="a-3346-32082" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32082).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-errors-abstract" />
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32078-branch-32078-errors-abstract" abstract="true">
      <sch:assert id="a-3346-33639-branch-32078" test="hqmf:item[@extension='2017-08-01']">This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33639).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32078-branch-32078-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9' and @extension='2017-08-01']]/hqmf:templateId[hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32078-branch-32078-errors-abstract" />
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32088-branch-32088-errors-abstract" abstract="true">
      <sch:assert id="a-3346-32090-branch-32088" test="count(hqmf:role)=1">SHALL contain exactly one [1..1] role (CONF:3346-32090).</sch:assert>
      <sch:assert id="a-3346-32091-branch-32088" test="hqmf:role[@classCode='PAT']">This role SHALL contain exactly one [1..1] @classCode="PAT" Patient (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32091).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32088-branch-32088-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9' and @extension='2017-08-01']]/hqmf:participation[@typeCode='IRCP']">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32088-branch-32088-errors-abstract" />
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32092-branch-32092-errors-abstract" abstract="true">
      <sch:assert id="a-3346-32094-branch-32092" test="count(hqmf:role)=1">SHALL contain exactly one [1..1] role (CONF:3346-32094).</sch:assert>
      <sch:assert id="a-3346-32096-branch-32092" test="hqmf:role[count(hqmf:code)=1]">This role SHALL contain exactly one [1..1] code (CONF:3346-32096).</sch:assert>
      <sch:assert id="a-3346-32097-branch-32092" test="hqmf:role/hqmf:code[@code='158965000' and @codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @code="158965000" Medical practitioner (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-32097).</sch:assert>
      <sch:assert id="a-3346-32098-branch-32092" test="hqmf:role/hqmf:code[@codeSystem='2.16.840.1.113883.6.96']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" SNOMED-CT (CONF:3346-32098).</sch:assert>
      <sch:assert id="a-3346-32095-branch-32092" test="hqmf:role[@classCode='ASSIGNED']">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32095).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32092-branch-32092-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT']">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-32092-branch-32092-errors-abstract" />
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-warnings">
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-warnings-abstract" abstract="true">
      <sch:assert id="a-3346-33522" test="hqmf:code[@valueSet]">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33522).</sch:assert>
    </sch:rule>
    <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.9' and @extension='2017-08-01']]">
      <sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.28.4.9-2017-08-01-warnings-abstract" />
    </sch:rule>
  </sch:pattern>
  
  
</sch:schema>