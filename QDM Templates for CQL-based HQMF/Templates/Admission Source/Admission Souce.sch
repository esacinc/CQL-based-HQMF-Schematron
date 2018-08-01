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
    <sch:active pattern="p-Admission-Source-errors"/>
  </sch:phase>
  <sch:phase id="warnings">
    <sch:active pattern="p-Admission-Source-warnings"/>
  </sch:phase>
  
  
  <sch:pattern id="p-Admission-Source-errors">
    <sch:rule id="r-Admission-Source-errors" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123'][@extension='2017-05-01']]">
      <sch:assert id="a-3335-34340-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34340)</sch:assert>
      <sch:assert id="a-3335-34344-error" test="@classCode='SDLOC'">SHALL contain exactly one [1..1] @classCode="SDLOC" Service Delivery Location (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-34344).</sch:assert>
      <sch:assert id="a-3335-34342-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34342).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Admission-Source-templateId-errors" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123' and @extension='2017-05-01']]/hqmf:templateId">
      <sch:assert id="a-3335-34341-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123'][@extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34341). such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.3.123" (CONF:3335-34345)	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34530). </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="p-Admission-Source-warnings">
    <sch:rule id="r-Admission-Source-code-warnings" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34346-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34346).</sch:assert>
    </sch:rule>
  </sch:pattern>
    
</sch:schema>