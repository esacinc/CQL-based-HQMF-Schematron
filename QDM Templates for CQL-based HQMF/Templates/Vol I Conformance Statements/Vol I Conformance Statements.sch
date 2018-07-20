<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--
    Title:  CQL HQMF Vol I Conformance Statments schematron
    Author: Dan Donahue
    Date:   03-21-2018
    Note:   Assertion Ids reference conformance requirements listed in internal ESAC document: 'CQL_QMF_Conformance Requirements - for schematron.docx'

-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  <sch:ns prefix="cql-ext" uri="urn:hhs-cql:hqmf-n1-extensions:v1"/>
  
  <sch:phase id="errors">
    <sch:active pattern="p-vol-I-pattern-errors"/>
  </sch:phase>
  <sch:phase id="warnings">
    <sch:active pattern="p-vol-I-pattern-warnings"/>
  </sch:phase>
  
  
  <sch:pattern id="p-vol-I-pattern-errors">
    <sch:rule id="r-vol-I-relatedDocument-errors" context="hqmf:QualityMeasureDocument/hqmf:relatedDocument">
      <sch:assert id="a-vol-I-001-relatedDocument-error" test="count(hqmf:expressionDocument)=1">Measures utilizing CQL libraries SHALL include exactly 1 expressionDocument element per CQL library refenced in the HQMF</sch:assert>
     </sch:rule>
    <sch:rule id="r-vol-I-relatedDocument-expressionDocument-errors" context="hqmf:QualityMeasureDocument/hqmf:relatedDocument/hqmf:expressionDocument">
      <sch:assert id="a-vol-I-002-expressionDocument-error" test="count(hqmf:text[@mediaType='text/cql'][count(hqmf:reference) &gt;=1])=1">The expressionDocument element SHALL contain a child text element that SHALL have a mediaType attribute value of text/cql and SHALL include a child reference element whose value contains a URI (relative or absolute) that identifies the CQL expression document.</sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-definition-valueSet-errors" context="hqmf:definition/hqmf:valueSet">
      <sch:assert id="a-vol-I-004-valueSet-error" test="count(hqmf:id[@root]) = 1 and count(hqmf:title[@value])=1">If definition/valueset is present, it SHALL contain both valueset.id@root and valueset.title@value.  </sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-definition-cqlCode-errors" context="hqmf:definition/cql-ext:code">
      <sch:assert id="a-vol-I-004-cqlCode-error" test="@codeSystemName and count(hqmf:displayName[@value])=1">If defitnion/cql:code is present, it SHALL contain both cql:code@codeSystemName and cql:code.displayName@value)  </sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-dataCriteriaSection-errors" context="hqmf:QualityMeasureDocument/hqmf:component/hqmf:dataCriteriaSection/hqmf:entry/hqmf:actCriteria|hqmf:substanceAdministrationCriteria|hqmf:observationCriteria|hqmf:encounterCriteria|hqmf:procedureCriteria|hqmf:supplyCriteria|hqmf:grouperCriteria">
      <sch:assert id="a-vol-I-005-dataCriteriaSection-error" test="count(hqmf:templateId)=1">Data criteria entries SHALL conform to the templates defined in Volume 3 of this IG.</sch:assert>
      <sch:assert id="a-vol-I-005-dataCriteriaSection-exception-error" test="count(hqmf:excerpt)=0 and count(hqmf:temporallyRelatedInformation) = 0">Data criteria entries SHALL NOT include excerpt or temporallyRelatedInformation elements.</sch:assert>
   </sch:rule>
   <sch:rule id="r-vol-I-populationCriteriaSection-errors" context="hqmf:QualityMeasureDocument/hqmf:component/hqmf:populationCriteriaSection/hqmf:component/*/hqmf:precondition">
      <!-- The following 007 rule also satisfies vol I conformance statements 15-->
      <sch:assert id="a-vol-I-007-populationCriteriaSection-error" test="count(hqmf:allTrue)=0 and count(hqmf:allFalse) = 0 and count(hqmf:atLeastOneTrue) =0 and count(hqmf:atLeastOneFalse) =0 and count(hqmf:onlyOneTrue) =0 and count(hqmf:onlyOneFalse) =0">Population criteria SHALL NOT include allTrue, allFalse, atLeastOneTrue, atLeastOneFalse, onlyOneTrue or onlyOneFalse elements</sch:assert>
    </sch:rule>

    <sch:rule id="r-vol-I-populationCriteriaSection-criteriaReference-errors" context="hqmf:QualityMeasureDocument/hqmf:component/hqmf:populationCriteriaSection/hqmf:component/*/hqmf:precondition/hqmf:criteriaReference">
      <!-- The following 008 rule also satisfies vol I conformance statements 11, 12, 13, 15-->
      <sch:assert id="a-vol-I-008-populationCriteriaSection-criteriaReference-error" test="count(hqmf:id)=1 ">All HQMF populationCriteriaSection components	SHALL reference exactly one CQL expression. </sch:assert>
    </sch:rule>
    
   </sch:pattern>
  
  <sch:pattern id="p-vol-I-pattern-warnings">
    <sch:rule id="r-vol-I-relatedDocument-expressionDocument-text-warnings" context="hqmf:QualityMeasureDocument/hqmf:relatedDocument/hqmf:expressionDocument/hqmf:text">
      <sch:assert id="a-vol-I-002-relatedDocument-expressionDocument-text-warning" test="count(hqmf:translation[count(hqmf:reference) &gt;=1])&gt;=1">Any expressionDocument/text elements that reference a CQL document SHOULD include a translation element that includes a child reference element</sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-supplementalData-warnings" context="//cql-ext:supplementalDataElement">
      <sch:assert id="a-vol-I-016-supplementalData-warning" test="count(hqmf:code[starts-with(@code,'SDE')]) =1 ">Each supplemental data element referrenced in the CQL SHOULD have a name begining with "SDE"
      </sch:assert>
    </sch:rule>
  </sch:pattern>
    
</sch:schema>