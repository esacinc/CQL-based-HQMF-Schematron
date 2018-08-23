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
    <sch:active pattern="p-Laboratory-Test-Order-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Laboratory-Test-Order-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Laboratory-Test-Order-errors">
    <sch:rule id="r-Laboratory-Test-Order-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' ]]/hqmf:templateId" >
      <sch:assert id="a-3372-30393-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30393). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.41" (CONF:3372-30394) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3372-33649). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Order-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-30389-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-30389).</sch:assert>
      <sch:assert id="a-3372-30390-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-30390).</sch:assert>
      <sch:assert id="a-3372-30392-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-30392).</sch:assert>
      <sch:assert id="a-3372-30395-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30395).</sch:assert>
      <sch:assert id="a-3372-30398-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30398).</sch:assert>
      <sch:assert id="a-3372-30396-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-30396).</sch:assert>
      <sch:assert id="a-3372-33109-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-33109).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Laboratory-Test-Order-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33110-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-33110).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Order-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time" >
      <sch:assert id="a-3372-33498-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33498). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Order-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role" >
      <sch:assert id="a-3372-33590-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33590).  </sch:assert>
    </sch:rule>
    

  </sch:pattern>
  
  <sch:pattern id="p-Laboratory-Test-Order-warnings">
    <sch:rule id="r-Laboratory-Test-Order-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30397-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30397).</sch:assert>
    </sch:rule>
 
  </sch:pattern>
  
</sch:schema>