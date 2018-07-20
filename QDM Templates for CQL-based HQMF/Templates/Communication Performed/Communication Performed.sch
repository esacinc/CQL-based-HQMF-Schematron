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
    <sch:active pattern="p-Communication-Performed-errors" />
  </sch:phase>
  
  <sch:phase id="warnings">
    <sch:active pattern="p-Communication-Performed-warnings" />
  </sch:phase>
  
  <sch:pattern id="p-Communication-Performed-errors">
    <sch:rule id="r-Communication-Performed-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34706-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3372-34706).</sch:assert>
      <sch:assert id="a-3372-34707-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34707).</sch:assert>
      <sch:assert id="a-3372-34683-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34683)  </sch:assert>
      <sch:assert id="a-3372-34709-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34709).</sch:assert>
      <sch:assert id="a-3372-34710-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34710).</sch:assert>
      <sch:assert id="a-3372-34690-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-34690). </sch:assert>
      <sch:assert id="a-3372-34681-error" test="count(hqmf:outboundRelationship[@typeCode='RSON'][count(hqmf:observationCriteria/hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88'][@extension='2017-05-01'])=1])=1">SHALL contain exactly one [1..1] outboundRelationship (CONF:3372-34681) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:3372-34695). SHALL contain exactly one [1..1] Reason (identifier: urn:hl7ii:2.16.840.1.113883.10.20.28.4.88:2017-05-01) (CONF:3372-34682).
      </sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-34684-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34684) such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.132" (CONF:3372-34696). This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34697).</sch:assert>
     </sch:rule>
    <sch:rule id="r-Communication-Performed-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-34704-error" test="lower-case(normalize-space(@code))='completed'"> This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-34704). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Communication-Performed-participation-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34718-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34718).</sch:assert>
     </sch:rule>
    
    <sch:rule id="r-Communication-Performed-participation-PRF-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34855-error" test="@classCode='ASSIGNED'">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34855) .</sch:assert>
      <sch:assert id="a-3372-34856-error" test="count(hqmf:code)=1">his role SHALL contain exactly one [1..1] code (CONF:3372-34856). </sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Communication-Performed-participation-IRCP-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='IRCP'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34858-error" test="count(hqmf:code)=1">This role SHALL contain exactly one [1..1] code (CONF:3372-34858).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Communication-Performed-participation-VIA-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='VIA'][@modeCode][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34870-error" test="@classCode='ASSIGNED'">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34870). </sch:assert>
    </sch:rule>  

  </sch:pattern>
  
  <sch:pattern id="p-Communication-Performed-warnings">
    <sch:rule id="r-Communication-Performed-code-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-34705-warning" test="@valueSet">The code, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-34705). </sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
  
</sch:schema>