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
    <sch:active pattern="p-Population-Criteria-Section-errors" />
  </sch:phase>
  
 
  <sch:pattern id="p-Population-Criteria-Section-errors">
    <sch:rule id="r-Population-Criteria-Section-templateId-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' ]]/hqmf:templateId">
      <sch:assert id="a-3346-18775-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7'][@extension='2017-08-01']) &gt; 0">This templateId SHALL contain at least one [1..*] item (CONF:3346-18775) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.7" (CONF:3346-18776). SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34633).</sch:assert>
    </sch:rule>
    
    <sch:rule id="r-Population-Criteria-Section-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-18774-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-18774).</sch:assert>
      <sch:assert id="a-3346-19059-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-19059).</sch:assert>
      <sch:assert id="a-3346-18781-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-18781).</sch:assert>
      <sch:assert id="a-3346-18961-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3346-18961).</sch:assert>
      <sch:assert id="a-3346-29995-error" test="count(hqmf:component[count(hqmf:initialPopulationCriteria)=1]) &gt; 0">SHALL contain at least one [1..*] component (CONF:3346-29995) such that it SHALL contain exactly one [1..1] initialPopulationCriteria (CONF:3346-29996).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-19060-error" test="@code='57026-7'">This code SHALL contain exactly one [1..1] @code="57026-7" Population Criteria (CONF:3346-19060).</sch:assert>
      <sch:assert id="a-3346-30092-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3346-30092).</sch:assert>
    </sch:rule>
 
    <sch:rule id="r-Population-Criteria-Section-title-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:title">
      <sch:assert id="a-3346-18782-error" test="@value='Population Criteria Section'">This title SHALL contain exactly one [1..1] @value="Population Criteria Section" (CONF:3346-18782).</sch:assert>
    </sch:rule>
    
    <!-- INITIAL POPULATION CRITERIA (SHALL CONTAIN AT LEAST ONE)-->
    <sch:rule id="r-Population-Criteria-Section-component-initialPopulationCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:initialPopulationCriteria">
      <sch:assert id="a-3346-30022-error" test="count(hqmf:code)=1">This initialPopulationCriteria SHALL contain exactly one [1..1] code (CONF:3346-30022).</sch:assert>
      <sch:assert id="a-3346-34868-error" test="count(hqmf:precondition) &gt; 0">This initialPopulationCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34868).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-initialPopulationCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:initialPopulationCriteria/hqmf:code">
      <sch:assert id="a-3346-30023-error" test="@code='IPOP'">This code SHALL contain exactly one [1..1] @code="IPOP" Initial Population (CONF:3346-30023).</sch:assert>
      <sch:assert id="a-3346-30093-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30093).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-initialPopulationCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:initialPopulationCriteria/hqmf:precondition">
       <sch:assert id="a-3346-34869-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34869).</sch:assert>
    </sch:rule>
     <sch:rule id="r-Population-Criteria-Section-component-initialPopulationCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:initialPopulationCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34870-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34870).</sch:assert>
    </sch:rule>
     <sch:rule id="r-Population-Criteria-Section-component-initialPopulationCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:initialPopulationCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34886-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34886).</sch:assert>
      <sch:assert id="a-3346-34887-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34887).</sch:assert>
    </sch:rule>
    
    <!-- NUMERATOR CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria">
      <sch:assert id="a-3346-30028-error" test="count(hqmf:code)=1">This numeratorCriteria SHALL contain exactly one [1..1] code (CONF:3346-30028). </sch:assert>
      <sch:assert id="a-3346-34871-error" test="count(hqmf:precondition) &gt; 0">This numeratorCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34871).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:code">
      <sch:assert id="a-3346-30029-error" test="@code='NUMER'">This code SHALL contain exactly one [1..1] @code="NUMER" Numerator (CONF:3346-30029). </sch:assert>
      <sch:assert id="a-3346-30094-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30094).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34872-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34872). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34873-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34873).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34888-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34888). </sch:assert>
      <sch:assert id="a-3346-34889-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34889).  </sch:assert>
    </sch:rule>

    <!-- DENOMINATOR CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria">
      <sch:assert id="a-3346-30030-error" test="count(hqmf:code)=1">This denominatorCriteria SHALL contain exactly one [1..1] code (CONF:3346-30030).  </sch:assert>
      <sch:assert id="a-3346-34874-error" test="count(hqmf:precondition) &gt; 0">This denominatorCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34874).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:code">
      <sch:assert id="a-3346-30031-error" test="@code='DENOM'">This code SHALL contain exactly one [1..1] @code="DENOM" Denominator (CONF:3346-30031).  </sch:assert>
      <sch:assert id="a-3346-30095-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30095).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34875-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34875).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34876-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34876). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34890-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34890). </sch:assert>
      <sch:assert id="a-3346-34891-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34891).  </sch:assert>
    </sch:rule>
    
    <!-- MEASURE POPULATION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria">
      <sch:assert id="a-3346-30034-error" test="count(hqmf:code)=1">This measurePopulationCriteria SHALL contain exactly one [1..1] code (CONF:3346-30034).  </sch:assert>
      <sch:assert id="a-3346-34877-error" test="count(hqmf:precondition) &gt; 0">This measurePopulationCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34877).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:code">
      <sch:assert id="a-3346-30035-error" test="@code='MSRPOPL'">This code SHALL contain exactly one [1..1] @code="MSRPOPL" Measure Population (CONF:3346-30035).  </sch:assert>
      <sch:assert id="a-3346-30096-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30096).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34878-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34878).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34879-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34879). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34892-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34892). </sch:assert>
      <sch:assert id="a-3346-34893-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34893).  </sch:assert>
    </sch:rule>
    
    <!-- DENOMINATOR EXCEPTION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria">
      <sch:assert id="a-3346-30038-error" test="count(hqmf:code)=1">This denominatorExceptionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30038).  </sch:assert>
      <sch:assert id="a-3346-34880-error" test="count(hqmf:precondition) &gt; 0">This denominatorExceptionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34880).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:code">
      <sch:assert id="a-3346-30039-error" test="@code='DENEXCEP'">This code SHALL contain exactly one [1..1] @code="DENEXCEP" Denominator Exception (CONF:3346-30039).  </sch:assert>
      <sch:assert id="a-3346-30097-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30097).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34881-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34881).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34882-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34882). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34894-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34894). </sch:assert>
      <sch:assert id="a-3346-34895-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34895).  </sch:assert>
    </sch:rule>
    
    <!-- DENOMINATOR EXCLUSION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria">
      <sch:assert id="a-3346-30042-error" test="count(hqmf:code)=1">This denominatorExclusionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30042).  </sch:assert>
      <sch:assert id="a-3346-34883-error" test="count(hqmf:precondition) &gt; 0">This denominatorExclusionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34883).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:code">
      <sch:assert id="a-3346-30043-error" test="@code='DENEX'">This code SHALL contain exactly one [1..1] @code="DENEX" Denominator Exclusion (CONF:3346-30043).  </sch:assert>
      <sch:assert id="a-3346-30098-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30098).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34884-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34884).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34885-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34885). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34896-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34896). </sch:assert>
      <sch:assert id="a-3346-34897-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34897).  </sch:assert>
    </sch:rule>
    
    <!-- NUMERATOR EXCLUSION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria">
      <sch:assert id="a-3346-30046-error" test="count(hqmf:code)=1">This numeratorExclusionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30046).  </sch:assert>
      <sch:assert id="a-3346-34898-error" test="count(hqmf:precondition) &gt; 0">This numeratorExclusionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34898).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:code">
      <sch:assert id="a-3346-30047-error" test="@code='NUMEX'">This code SHALL contain exactly one [1..1] @code="NUMEX" Numerator Exclusion (CONF:3346-30047). </sch:assert>
      <sch:assert id="a-3346-30099-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30099).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34899-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34899).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34900-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34900). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34904-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34904). </sch:assert>
      <sch:assert id="a-3346-34905-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34905).  </sch:assert>
    </sch:rule>
    
    <!-- MEASURE POPULATION EXCLUSION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria">
      <sch:assert id="a-3346-30050-error" test="count(hqmf:code)=1">This measurePopulationExclusionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30050).  </sch:assert>
      <sch:assert id="a-3346-34901-error" test="count(hqmf:precondition) &gt; 0">This measurePopulationExclusionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34901).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:code">
      <sch:assert id="a-3346-30051-error" test="@code='MSRPOPLEX'">This code SHALL contain exactly one [1..1] @code="MSRPOPLEX" Measure Population Exclusions (CONF:3346-30051). </sch:assert>
      <sch:assert id="a-3346-30100-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30100).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34902-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34902).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34903-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34903). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34906-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34906). </sch:assert>
      <sch:assert id="a-3346-34907-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34907).  </sch:assert>
    </sch:rule>
    
    <!-- STRATIFIER CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria">
      <sch:assert id="a-3346-34634-error" test="count(hqmf:precondition) &gt; 0">This stratifierCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34634).  </sch:assert>
    </sch:rule>  
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:code">
      <sch:assert id="a-3346-30055-error" test="@code='STRAT'">The code, if present, SHALL contain exactly one [1..1] @code="STRAT" Stratification (CONF:3346-30055). </sch:assert>
      <sch:assert id="a-3346-30101-error" test="@codeSystem">The code, if present, SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30101).   </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34635-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34635).  </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34644-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34644). </sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34645-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34645). </sch:assert>
      <sch:assert id="a-3346-34646-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34646).  </sch:assert>
    </sch:rule>
    
   </sch:pattern>  
  

</sch:schema>