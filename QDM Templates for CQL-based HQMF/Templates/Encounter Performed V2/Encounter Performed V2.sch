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
    <sch:active pattern="p-Encounter-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Encounter-Performed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Encounter-Performed-errors">
    <sch:rule id="r-Encounter-Performed-templateId-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' ]]/hqmf:templateId" >
      <sch:assert id="a-3346-31009-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31009) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.5" (CONF:3346-31010) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33397).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Performed-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]" >
      <sch:assert id="a-3346-31005-error" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:3346-31005).</sch:assert>
      <sch:assert id="a-3346-31006-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31006).</sch:assert>
      <sch:assert id="a-3346-31008-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31008).</sch:assert>
      <sch:assert id="a-3346-31011-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31011).</sch:assert>
      <sch:assert id="a-3346-31014-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31014).</sch:assert>
      <sch:assert id="a-3346-31012-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31012).</sch:assert>
      <sch:assert id="a-3346-31015-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31015).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Encounter-Performed-statusCode-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31016-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31016).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Performed-participation-AUT-time-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time" >
      <sch:assert id="a-3346-34660-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34660). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Performed-participation-AUT-role-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role" >
      <sch:assert id="a-3346-34661-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34661).  </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Encounter-Performed-warnings">
    <sch:rule id="r-Encounter-Performed-code-warnings" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-31013-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31013).</sch:assert>
    </sch:rule>
     <sch:rule id="r-Encounter-Performed-dischargeDispositionCode-warnings" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:dischargeDispositionCode">
       <sch:assert id="a-3346-33105-warning" test="@valueSet">The dischargeDispositionCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33105).</sch:assert>
       
    </sch:rule>
  </sch:pattern>
  
</sch:schema>