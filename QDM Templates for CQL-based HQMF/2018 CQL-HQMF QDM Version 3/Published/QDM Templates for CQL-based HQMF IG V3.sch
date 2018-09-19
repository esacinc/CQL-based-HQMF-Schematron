<?xml version="1.0" encoding="UTF-8"?>
<!--
QDM Templates for CQL-base HQMF
Version 3.0 

    THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
    IN NO EVENT SHALL ESAC INC., OR ANY OF THEIR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
    SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
    GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
     
    This schematron corresponds to the CQL-base HQMF IG Release 1, STU 3, August 2018.
     
	  This schematron implements conformance for QDM Templates for CQL-Based HQMF data files. 
	  It contains conformance tests adherent to both Volume 1 and Volume 3 implementation guides (IG).
	  
	
	  In this schematron conformance rules and assertions for Volume 1 are prefixed with "vol-I" in their identifiers.
	  The numbers following "vol-I" reference "Conformance Requirement" identifiers in the Volume I implementation guide.

	  Conformance rules and assertions NOT prefixed with "vol-I" correspond to conformance statements in the Volume 3 
	  QDM Templates for CQL-based HQMF IG V3 implementation guide.
	  
	  Updates as of 09-07-2018
	       - Removed extension from context on all rules examining templateId conformance in all entry templates
	       - Fixed statusCode = 'active' conformance in Assessment Order and Procedure Recommended V2
	       - Removed author participation conformance check in Device Applied, Laboratory Test Performed, Medication Administered, 
	                 Medication Discharge and Substance Administered
	       - Added setId conformance on expressionDocument in HQMF document header
	       - Fixed role classCode = 'ADMM' in Substance Recommended
	       - Fixed playingMaterial classCode = 'MAT' in Substance Recommended
	       - Changed typeCode='DRV' to typeCode='PRF' conformance in ParticipationType of Provider Characteristic
	       - Added role constraints to optional performer participation in Medication Dispensed V2
	       - Added new template "Days Supplied"
	       - Added assertions to check for classCode='ROL' in Medication Discharge participation(PRF). 3372-34918
	       - Added assertions for 3372-34882, 3372-34883, 3372-34884
	       - Changed assertion 3372-34627 so that it is a "such that..." containing 3372-34628.  
	       - Removed standalone 3372-34628 assertion
	       - Added assertion a-3372-34898-error
	       - Added XCRPT relatedDocument assertions 3372-34898, 3372-34900, 3372-34903, 3372-34904, 3372-34905, 3372-34907, 3372-34901, 3372-34906
	  
	  Update as of 09-19-2018
	       - Added typeCode='COMP' constraint to relatedDocument rules.
	               Context change for rules: r-vol-I-relatedDocument-errors and r-vol-I-relatedDocument-expressionDocument-errors
	       - Removed assertion a-3372-34898-error as it should be a MAY in the IG rather than a SHALL 

Wed Sep 19 10:19:19 MDT 2018
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:hqmf="urn:hl7-org:v3" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:voc="http://www.lantanagroup.com/voc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="hqmf" uri="urn:hl7-org:v3" />
  <sch:ns prefix="cql-ext" uri="urn:hhs-cql:hqmf-n1-extensions:v1" />
  <sch:phase id="errors">
    <sch:active pattern="p-Admission-Source-errors" />
    <sch:active pattern="p-Adverse-Event-errors" />
    <sch:active pattern="p-Allergy-Intolerance-errors" />
    <sch:active pattern="p-Assessment-Order-errors" />
    <sch:active pattern="p-Assessment-Performed-errors" />
    <sch:active pattern="p-Assessment-Recommended-errors" />
    <sch:active pattern="p-Care-Goal-errors" />
    <sch:active pattern="p-Cause-errors" />
    <sch:active pattern="p-Communication-Performed-errors" />
    <sch:active pattern="p-Component-errors" />
    <sch:active pattern="p-Data-Criteria-Section-errors" />
    <sch:active pattern="p-Days-Supplied-errors" />
    <sch:active pattern="p-Device-Applied-errors" />
    <sch:active pattern="p-Device-Order-errors" />
    <sch:active pattern="p-Device-Recommended-errors" />
    <sch:active pattern="p-Diagnosis-errors" />
    <sch:active pattern="p-Diagnostic-Study-Order-errors" />
    <sch:active pattern="p-Diagnostic-Study-Performed-errors" />
    <sch:active pattern="p-Diagnostic-Study-Recommended-errors" />
    <sch:active pattern="p-Dosage-errors" />
    <sch:active pattern="p-Encounter-Order-errors" />
    <sch:active pattern="p-Encounter-Performed-errors" />
    <sch:active pattern="p-Encounter-Recommended-errors" />
    <sch:active pattern="p-Facility-Location-errors" />
    <sch:active pattern="p-Family-History-errors" />
    <sch:active pattern="p-Immunization-Administered-errors" />
    <sch:active pattern="p-Immunization-Order-errors" />
    <sch:active pattern="p-Incision-Datetime-errors" />
    <sch:active pattern="p-Intervention-Order-errors" />
    <sch:active pattern="p-Intervention-Performed-errors" />
    <sch:active pattern="p-Intervention-Recommended-errors" />
    <sch:active pattern="p-Laboratory-Test-Component-errors" />
    <sch:active pattern="p-Laboratory-Test-Order-errors" />
    <sch:active pattern="p-Laboratory-Test-Performed-errors" />
    <sch:active pattern="p-Laboratory-Test-Recommended-errors" />
    <sch:active pattern="p-Laboratory-Test-Reference-Range-errors" />
    <sch:active pattern="p-Measure-Description-Section-errors" />
    <sch:active pattern="p-Measure-Observations-Section-errors" />
    <sch:active pattern="p-Medication-Active-errors" />
    <sch:active pattern="p-Medication-Administered-errors" />
    <sch:active pattern="p-Medication-Discharge-errors" />
    <sch:active pattern="p-Medication-Dispensed-errors" />
    <sch:active pattern="p-Medication-Order-errors" />
    <sch:active pattern="p-Patient-Care-Experience-errors" />
    <sch:active pattern="p-Patient-Characteristic-Birth-Date-errors" />
    <sch:active pattern="p-Patient-Characteristic-Clinical-Trial-Participant-errors" />
    <sch:active pattern="p-Patient-Characteristic-Ethnicity-errors" />
    <sch:active pattern="p-Patient-Characteristic-Expired-errors" />
    <sch:active pattern="p-Patient-Characteristic-Payer-errors" />
    <sch:active pattern="p-Patient-Characteristic-Race-errors" />
    <sch:active pattern="p-Patient-Characteristic-Sex-errors" />
    <sch:active pattern="p-Patient-Characteristic-errors" />
    <sch:active pattern="p-Physical-Exam-Order-errors" />
    <sch:active pattern="p-Physical-Exam-Performed-errors" />
    <sch:active pattern="p-Physical-Exam-Recommended-errors" />
    <sch:active pattern="p-Population-Criteria-Section-errors" />
    <sch:active pattern="p-Principal-Diagnosis-errors" />
    <sch:active pattern="p-Procedure-Order-errors" />
    <sch:active pattern="p-Procedure-Performed-errors" />
    <sch:active pattern="p-Procedure-Recommended-errors" />
    <sch:active pattern="p-Program-Participation-errors" />
    <sch:active pattern="p-Provider-Care-Experience-errors" />
    <sch:active pattern="p-Provider-Characteristic-errors" />
    <sch:active pattern="p-CQL-Based-HQMF-Header-errors" />
    <sch:active pattern="p-Reason-errors" />
    <sch:active pattern="p-Related-To-errors" />
    <sch:active pattern="p-Result-errors" />
    <sch:active pattern="p-Severity-Observation-errors" />
    <sch:active pattern="p-Status-errors" />
    <sch:active pattern="p-Substance-Administered-errors" />
    <sch:active pattern="p-Substance-Order-errors" />
    <sch:active pattern="p-Substance-Recommended-errors" />
    <sch:active pattern="p-Supply-errors" />
    <sch:active pattern="p-Symptom-errors" />
    <sch:active pattern="p-Target-Outcome-errors" />
    <sch:active pattern="p-vol-I-pattern-errors" />
  </sch:phase>
  <sch:phase id="warnings">
    <sch:active pattern="p-Admission-Source-warnings" />
    <sch:active pattern="p-Adverse-Event-warnings" />
    <sch:active pattern="p-Allergy-Intolerance-warnings" />
    <sch:active pattern="p-Assessment-Order-warnings" />
    <sch:active pattern="p-Assessment-Performed-warnings" />
    <sch:active pattern="p-Assessment-Recommended-warnings" />
    <sch:active pattern="p-Care-Goal-warnings" />
    <sch:active pattern="p-Cause-warnings" />
    <sch:active pattern="p-Communication-Performed-warnings" />
    <sch:active pattern="p-Device-Applied-warnings" />
    <sch:active pattern="p-Device-Order-warnings" />
    <sch:active pattern="p-Device-Recommended-warnings" />
    <sch:active pattern="p-Diagnosis-warnings" />
    <sch:active pattern="p-Diagnostic-Study-Order-warnings" />
    <sch:active pattern="p-Diagnostic-Study-Performed-warnings" />
    <sch:active pattern="p-Diagnostic-Study-Recommended-warnings" />
    <sch:active pattern="p-Encounter-Order-warnings" />
    <sch:active pattern="p-Encounter-Performed-warnings" />
    <sch:active pattern="p-Encounter-Recommended-warnings" />
    <sch:active pattern="p-Facility-Location-warnings" />
    <sch:active pattern="p-Family-History-warnings" />
    <sch:active pattern="p-Immunization-Administered-warnings" />
    <sch:active pattern="p-Immunization-Order-warnings" />
    <sch:active pattern="p-Intervention-Order-warnings" />
    <sch:active pattern="p-Intervention-Performed-warnings" />
    <sch:active pattern="p-Intervention-Recommended-warnings" />
    <sch:active pattern="p-Laboratory-Test-Order-warnings" />
    <sch:active pattern="p-Laboratory-Test-Performed-warnings" />
    <sch:active pattern="p-Laboratory-Test-Recommended-warnings" />
    <sch:active pattern="p-Medication-Active-warnings" />
    <sch:active pattern="p-Medication-Administered-warnings" />
    <sch:active pattern="p-Medication-Discharge-warnings" />
    <sch:active pattern="p-Medication-Dispensed-warnings" />
    <sch:active pattern="p-Medication-Order-warnings" />
    <sch:active pattern="p-Patient-Care-Experience-warnings" />
    <sch:active pattern="p-Patient-Characteristic-Clinical-Trial-Participant-warnings" />
    <sch:active pattern="p-Patient-Characteristic-Ethnicity-warnings" />
    <sch:active pattern="p-Patient-Characteristic-Payer-warnings" />
    <sch:active pattern="p-Patient-Characteristic-Race-warnings" />
    <sch:active pattern="p-Patient-Characteristic-Sex-warnings" />
    <sch:active pattern="p-Patient-Characteristic-warnings" />
    <sch:active pattern="p-Physical-Exam-Order-warnings" />
    <sch:active pattern="p-Physical-Exam-Performed-warnings" />
    <sch:active pattern="p-Physical-Exam-Recommended-warnings" />
    <sch:active pattern="p-Principal-Diagnosis-warnings" />
    <sch:active pattern="p-Procedure-Order-warnings" />
    <sch:active pattern="p-Procedure-Performed-warnings" />
    <sch:active pattern="p-Procedure-Recommended-warnings" />
    <sch:active pattern="p-Program-Participation-warnings" />
    <sch:active pattern="p-Provider-Care-Experience-warnings" />
    <sch:active pattern="p-Provider-Characteristic-warnings" />
    <sch:active pattern="p-CQL-Based-HQMF-Header-warnings" />
    <sch:active pattern="p-Reason-warnings" />
    <sch:active pattern="p-Severity-Observation-warnings" />
    <sch:active pattern="p-Status-warnings" />
    <sch:active pattern="p-Substance-Administered-warnings" />
    <sch:active pattern="p-Substance-Order-warnings" />
    <sch:active pattern="p-Substance-Recommended-warnings" />
    <sch:active pattern="p-Symptom-warnings" />
    <sch:active pattern="p-vol-I-pattern-warnings" />
  </sch:phase>
  <!--
      ERROR Patterns and Assertions
  -->
  <sch:pattern id="p-Admission-Source-errors">
    <sch:rule id="r-Admission-Source-templateId-errors" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123' ]]/hqmf:templateId">
      <sch:assert id="a-3335-34341-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123'][@extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34341). such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.3.123" (CONF:3335-34345)	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34530).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Admission-Source-errors" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123'][@extension='2017-05-01']]">
      <sch:assert id="a-3335-34340-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34340)</sch:assert>
      <sch:assert id="a-3335-34344-error" test="@classCode='SDLOC'">SHALL contain exactly one [1..1] @classCode="SDLOC" Service Delivery Location (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-34344).</sch:assert>
      <sch:assert id="a-3335-34342-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34342).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Adverse-Event-errors">
    <sch:rule id="r-Adverse-Event-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34184-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01'])=1">SHALL contain exactly one [1..1] item (CONF:3346-34184). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.120" (CONF:3346-34194)	This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34531).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]">
      <sch:assert id="a-3346-34210-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3346-34210).</sch:assert>
      <sch:assert id="a-3346-34211-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34211).</sch:assert>
      <sch:assert id="a-3346-34758-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34758).</sch:assert>
      <sch:assert id="a-3346-34183-error" test="count(hqmf:templateId[count(hqmf:item)=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34183)</sch:assert>
      <sch:assert id="a-3346-34212-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34212).</sch:assert>
      <sch:assert id="a-3346-34185-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34185).</sch:assert>
      <sch:assert id="a-3346-34213-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34213).</sch:assert>
      <sch:assert id="a-3346-34186-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34186).</sch:assert>
      <sch:assert id="a-3346-34188-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34188).</sch:assert>
      <sch:assert id="a-3346-34189-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34189) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34207). HALL contain exactly one [1..1] role (CONF:3346-34190).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34196-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34196).</sch:assert>
      <sch:assert id="a-3346-34197-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34197).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34198-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34198).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-value-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34201-error" test="@code='281647001'">This value SHALL contain exactly one [1..1] @code="281647001" Adverse Reaction (CONF:3346-34201).</sch:assert>
      <sch:assert id="a-3346-34202-error" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34202).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-participation-role-CSM-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='CSM']/hqmf:role">
      <sch:assert id="a-3346-34206-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34206).</sch:assert>
      <sch:assert id="a-3346-34191-error" test="count(hqmf:playingEntity)=1">This role SHALL contain exactly one [1..1] playingEntity (CONF:3346-34191).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-participation-role-AUT-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='AUT']/hqmf:role">
      <sch:assert id="a-3346-34696-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34696).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-participation-role-playingEntity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='CSM']/hqmf:role/hqmf:playingEntity">
      <sch:assert id="a-3346-34204-error" test="@classCode='MMAT'">This playingEntity SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34204).</sch:assert>
      <sch:assert id="a-3346-34205-error" test="@determinerCode='KIND'">This playingEntity SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34205).</sch:assert>
      <sch:assert id="a-3346-34192-error" test="count(hqmf:code)=1">This playingEntity SHALL contain exactly one [1..1] code (CONF:3346-34192).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-outboundRelationship-observationCriteria-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR']/hqmf:observationCriteria">
      <sch:assert id="a-3346-34687-error" test="@classCode='OBS'">This observationCriteria SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3346-34687).</sch:assert>
      <sch:assert id="a-3346-34688-error" test="@moodCode='EVN'">This observationCriteria SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34688).</sch:assert>
      <sch:assert id="a-3346-34684-error" test="count(hqmf:code)=1">This observationCriteria SHALL contain exactly one [1..1] code (CONF:3346-34684).</sch:assert>
      <sch:assert id="a-3346-34685-error" test="count(hqmf:value[@xsi:type='CD'])=1">This observationCriteria SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34685).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-outboundRelationship-observationCriteria-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR']/hqmf:observationCriteria/hqmf:code">
      <sch:assert id="a-3346-34689-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34689).</sch:assert>
      <sch:assert id="a-3346-34690-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34690).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Allergy-Intolerance-errors">
    <sch:rule id="r-Allergy-Intolerance-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119']]/hqmf:templateId">
      <sch:assert id="a-3346-34216-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01'])=1">SHALL contain exactly one [1..1] item (CONF:3346-34216) such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.119" (CONF:3346-34228) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34532).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34241-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3346-34241).</sch:assert>
      <sch:assert id="a-3346-34242-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34242).</sch:assert>
      <sch:assert id="a-3346-34759-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34759).</sch:assert>
      <sch:assert id="a-3346-34215-error" test="count(hqmf:templateId[count(hqmf:item)=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34215)</sch:assert>
      <sch:assert id="a-3346-34243-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34243).</sch:assert>
      <sch:assert id="a-3346-34217-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34217).</sch:assert>
      <sch:assert id="a-3346-34244-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34244).</sch:assert>
      <sch:assert id="a-3346-34218-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34218).</sch:assert>
      <sch:assert id="a-3346-34220-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34220).</sch:assert>
      <sch:assert id="a-3346-34221-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34221) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34240). SHALL contain exactly one [1..1] role (CONF:3346-34222).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34229-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34229).</sch:assert>
      <sch:assert id="a-3346-34230-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34230).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34231-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34231).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-value-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34234-error" test="@code='106190000'">This value SHALL contain exactly one [1..1] @code="106190000" Allergy (CONF:3346-34234).</sch:assert>
      <sch:assert id="a-3346-34235-error" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34235).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-participation-CSM-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34239-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34239).</sch:assert>
      <sch:assert id="a-3346-34223-error" test="count(hqmf:playingEntity)=1">This role SHALL contain exactly one [1..1] playingEntity (CONF:3346-34223).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-participation-role-playingEntity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity">
      <sch:assert id="a-3346-34237-error" test="@classCode='MMAT'">This playingEntity SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34237).</sch:assert>
      <sch:assert id="a-3346-34238-error" test="@determinerCode='KIND'">This playingEntity SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34238).</sch:assert>
      <sch:assert id="a-3346-34224-error" test="count(hqmf:code)=1">This playingEntity SHALL contain exactly one [1..1] code (CONF:3346-34224).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34714-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34714).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34715-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34715).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-outboundRelationship-observationCriteria-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR'][count(hqmf:observationCriteria)=1]/hqmf:observationCriteria">
      <sch:assert id="a-3346-34707-error" test="@classCode='OBS'">This observationCriteria SHALL contain exactly one [1..1] @classCode="OBS" (CONF:3346-34707).</sch:assert>
      <sch:assert id="a-3346-34708-error" test="@moodCode='EVN'">This observationCriteria SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:3346-34708).</sch:assert>
      <sch:assert id="a-3346-34706-error" test="count(hqmf:code)=1">This observationCriteria SHALL contain exactly one [1..1] code (CONF:3346-34706).</sch:assert>
      <sch:assert id="a-3346-34700-error" test="count(hqmf:value[@xsi:type='CD'])=1">This observationCriteria SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34700).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-outboundRelationship-observationCriteria-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR'][count(hqmf:observationCriteria)=1]/hqmf:observationCriteria/hqmf:code">
      <sch:assert id="a-3346-34698-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3346-34698).</sch:assert>
      <sch:assert id="a-3346-34699-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-34699).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Assessment-Order-errors">
    <sch:rule id="r-Assessment-Order-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131']]/hqmf:templateId">
      <sch:assert id="a-3372-34655-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131' and @extension='2018-05-01'])=1">SHALL contain exactly one [1..1] item (CONF:3372-34655) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.131" (CONF:3372-34664).This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34665).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Order-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34673-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-34673).</sch:assert>
      <sch:assert id="a-3372-34674-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34674).</sch:assert>
      <sch:assert id="a-3372-34654-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34654).</sch:assert>
      <sch:assert id="a-3372-34676-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34676).</sch:assert>
      <sch:assert id="a-3372-34677-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34677).</sch:assert>
      <sch:assert id="a-3372-34656-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-34656).</sch:assert>
      <sch:assert id="a-3372-34657-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-34657).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Order-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131' and @extension='2018-05-01']]/hqmf:statusCode">
      <!-- Fixed: Changed 'completed' to 'active' -->
      <sch:assert id="a-3372-34667-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-34667).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Order-participation-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34669-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34669).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Order-participation-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34670-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-34670).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Assessment-Performed-errors">
    <sch:rule id="r-Assessment-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117']]/hqmf:templateId">
      <sch:assert id="a-3346-34127-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01'])=1">SHALL contain exactly one [1..1] item (CONF:3346-34127) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.117" (CONF:3346-34134) 	This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34254).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34142-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-34142).</sch:assert>
      <sch:assert id="a-3346-34143-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34143).</sch:assert>
      <sch:assert id="a-3346-34126-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId</sch:assert>
      <sch:assert id="a-3346-34145-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34145).</sch:assert>
      <sch:assert id="a-3346-34128-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34128).</sch:assert>
      <sch:assert id="a-3346-34146-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34146).</sch:assert>
      <sch:assert id="a-3346-34129-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34129).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34137-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34137).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-participation-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34739-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34739).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-participation-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3346-34741-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3346-34741).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Assessment-Recommended-errors">
    <sch:rule id="r-Assessment-Recommended-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' ]]/hqmf:templateId">
      <sch:assert id="a-3372-34150-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34150) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.118" (CONF:3372-34157) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34273).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Recommended-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34165-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-34165).</sch:assert>
      <sch:assert id="a-3372-34166-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34166).</sch:assert>
      <sch:assert id="a-3372-34149-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34149).</sch:assert>
      <sch:assert id="a-3372-34168-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34168).</sch:assert>
      <sch:assert id="a-3372-34151-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-34151).</sch:assert>
      <sch:assert id="a-3372-34152-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-34152).</sch:assert>
      <sch:assert id="a-3372-34169-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34169).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Recommended-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-34160-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-34160).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Recommended-participation-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34275-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34275).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Recommended-participation-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34276-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-34276).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Care-Goal-errors">
    <sch:rule id="r-Care-Goal-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' ]]/hqmf:templateId">
      <sch:assert id="a-3346-28447" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-28447) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.7" (CONF:3346-28448). This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33051).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Care-Goal-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-27869" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-27869).</sch:assert>
      <sch:assert id="a-3346-27870" test="@moodCode='GOL'">SHALL contain exactly one [1..1] @moodCode="GOL" Goal (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-27870).</sch:assert>
      <sch:assert id="a-3346-34760" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34760).</sch:assert>
      <sch:assert id="a-3346-27872" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-27872)</sch:assert>
      <sch:assert id="a-3346-32479" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32479).</sch:assert>
      <sch:assert id="a-3346-27873" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-27873).</sch:assert>
      <sch:assert id="a-3346-32481" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32481).</sch:assert>
      <sch:assert id="a-3346-32480" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32480).</sch:assert>
      <sch:assert id="a-3346-27876" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-27876).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Care-Goal-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-27874" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" (CONF:3346-27874).</sch:assert>
      <sch:assert id="a-3346-27875" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-27875).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Care-Goal-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-32482" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32482).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Cause-errors">
    <sch:rule id="r-Cause-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' ]]/hqmf:templateId">
      <sch:assert id="a-3335-33454-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-33454). such that it	This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.105" (CONF:3335-33458). This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34647).</sch:assert>
    </sch:rule>
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
  </sch:pattern>
  <sch:pattern id="p-Communication-Performed-errors">
    <sch:rule id="r-Communication-Performed-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132']]/hqmf:templateId">
      <sch:assert id="a-3372-34684-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34684) such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.132" (CONF:3372-34696). This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34697).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34706-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3372-34706).</sch:assert>
      <sch:assert id="a-3372-34707-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34707).</sch:assert>
      <sch:assert id="a-3372-34683-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34683)</sch:assert>
      <sch:assert id="a-3372-34709-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34709).</sch:assert>
      <sch:assert id="a-3372-34710-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34710).</sch:assert>
      <sch:assert id="a-3372-34690-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-34690).</sch:assert>
      <sch:assert id="a-3372-34681-error" test="count(hqmf:outboundRelationship[@typeCode='RSON'][count(hqmf:observationCriteria/hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88'][@extension='2017-05-01'])=1])=1">SHALL contain exactly one [1..1] outboundRelationship (CONF:3372-34681) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:3372-34695). SHALL contain exactly one [1..1] Reason (identifier: urn:hl7ii:2.16.840.1.113883.10.20.28.4.88:2017-05-01) (CONF:3372-34682).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-34704-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-34704).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-participation-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34718-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34718).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-participation-PRF-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34855-error" test="@classCode='ASSIGNED'">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34855) .</sch:assert>
      <sch:assert id="a-3372-34856-error" test="count(hqmf:code)=1">his role SHALL contain exactly one [1..1] code (CONF:3372-34856).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-participation-IRCP-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='IRCP'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34858-error" test="count(hqmf:code)=1">This role SHALL contain exactly one [1..1] code (CONF:3372-34858).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Communication-Performed-participation-VIA-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:participation[@typeCode='VIA'][@modeCode][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34870-error" test="@classCode='ASSIGNED'">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34870).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Component-errors">
    <sch:rule id="r-Component-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.121']]/hqmf:templateId">
      <sch:assert id="a-3335-34571-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.121' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34571) such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.121" (CONF:3335-34573). 	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34580).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Component-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.121' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34576-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34576).</sch:assert>
      <sch:assert id="a-3335-34577-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3335-34577).</sch:assert>
      <sch:assert id="a-3335-34570-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34570)</sch:assert>
      <sch:assert id="a-3335-34572-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34572).</sch:assert>
      <sch:assert id="a-3335-34578-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34578).</sch:assert>
      <sch:assert id="a-3335-34579-error" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3335-34579).</sch:assert>
      <sch:assert id="a-3335-34607-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34607).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Data-Criteria-Section-errors">
    <sch:rule id="r-Data-Criteria-Section-errors-abstract" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-18804-error" test="count(hqmf:templateId[count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6'][ @extension='2018-05-01'])=1])=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18804) such that it  SHALL contain exactly one [1..1] item (CONF:3372-18805) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.6" (CONF:3372-18806).SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33440).</sch:assert>
      <sch:assert id="a-3372-18807-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18807).</sch:assert>
      <sch:assert id="a-3372-18857-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18857).</sch:assert>
      <sch:assert id="a-3372-18858-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3372-18858).</sch:assert>
      <sch:assert id="a-3372-18853-error" test="count(hqmf:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:3372-18853).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Data-Criteria-Section-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-18808-error" test="@code='57025-9'">This code SHALL contain exactly one [1..1] @code="57025-9" Data Criteria (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:3372-18808).</sch:assert>
      <sch:assert id="a-3372-30091-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3372-30091).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Data-Criteria-Section-title-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']]/hqmf:title">
      <sch:assert id="a-3372-18964-error" test="@value='Data Criteria Section'">This title SHALL contain exactly one [1..1] @value="Data Criteria Section" (CONF:3372-18964).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Days-Supplied-errors">
    <sch:rule id="r-Days-Supplied-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' ]]/hqmf:templateId">
      <sch:assert id="a-3372-34886-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34886) such that it  SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.133" (CONF:3372-34887)  SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34888).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Days-Supplied-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34889-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3372-34889).</sch:assert>
      <sch:assert id="a-3372-34890-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34890).</sch:assert>
      <sch:assert id="a-3372-34885-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34885).</sch:assert>
      <sch:assert id="a-3372-34891-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34891)</sch:assert>
      <sch:assert id="a-3372-34893-error" test="count(hqmf:quantity)=1">SHALL contain exactly one [1..1] quantity (CONF:3372-34893).</sch:assert>
      <sch:assert id="a-3372-34892-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34892).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Days-Supplied-quantity-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.133' and @extension='2018-05-01']]/hqmf:quantity">
      <sch:assert id="a-3372-34894-error" test="@unit='d'">This quantity SHALL contain exactly one [1..1] @unit="d" Day (CodeSystem: UCUM urn:oid:2.16.840.1.113883.6.8) (CONF:3372-34894).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Device-Applied-errors">
    <sch:rule id="r-Device-Applied-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13']]/hqmf:templateId">
      <sch:assert id="a-3372-31306-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01'])=1">This templateId a.	SHALL contain exactly one [1..1] item (CONF:3372-31306). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.13" (CONF:3372-31307). This item SHALL contain exactly one [1..1] @extension="20187-05-01" (CONF:3372-33361).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-31302-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-31302).</sch:assert>
      <sch:assert id="a-3372-31303-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31303).</sch:assert>
      <sch:assert id="a-3372-31305-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31305)</sch:assert>
      <sch:assert id="a-3372-31308-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31308).</sch:assert>
      <sch:assert id="a-3372-31517-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31517).</sch:assert>
      <sch:assert id="a-3372-31309-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31309).</sch:assert>
      <sch:assert id="a-3372-31310-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31310).</sch:assert>
      <sch:assert id="a-3372-31315-error" test="count(hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-31315) such that it SHALL contain exactly one [1..1] @typeCode="DEV" Device (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-31316). SHALL contain exactly one [1..1] role (CONF:3372-31317).</sch:assert>
      <!-- <sch:assert id="a-3372-34503-error" test="count(hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-34503) such that it SHALL contain exactly one [1..1] time (CONF:3372-34504). SHALL contain exactly one [1..1] role (CONF:3372-34505). SHALL contain exactly one [1..1] @typeCode="AUT" Author (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-34506).</sch:assert> -->
    </sch:rule>
    <sch:rule id="r-Device-Applied-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-31311-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-31311).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-code-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-33062-error" test="@code='360030002'">This code SHALL contain exactly one [1..1] @code="360030002" Application of Device  (CONF:3372-33062).</sch:assert>
      <sch:assert id="a-3372-33063-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-33063).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33060-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain zero or one [0..1] item (CONF:3372-33060).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-participation-DEV-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-31318-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-31318).</sch:assert>
      <sch:assert id="a-3372-31319-error" test="count(hqmf:playingDevice)=1">This role SHALL contain exactly one [1..1] playingDevice (CONF:3372-31319).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-participation-DEV-role-playingDevice-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice">
      <sch:assert id="a-3372-31322-error" test="count(hqmf:code)=1">This playingDevice SHALL contain exactly one [1..1] code (CONF:3372-31322).</sch:assert>
      <sch:assert id="a-3372-31320-error" test="@classCode='DEV'">This playingDevice SHALL contain exactly one [1..1] @classCode="DEV" Device (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-31320).</sch:assert>
      <sch:assert id="a-3372-31321-error" test="@determinerCode='KIND'">This playingDevice SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-31321).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-34507-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34507).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-34508-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34508).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Device-Order-errors">
    <sch:rule id="r-Device-Order-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' ]]/hqmf:templateId">
      <sch:assert id="a-3335-29843-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-29843). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.15" (CONF:3335-29844) 	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33642).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Order-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-29840-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3335-29840).</sch:assert>
      <sch:assert id="a-3335-29841-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-29841).</sch:assert>
      <sch:assert id="a-3335-29842-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-29842).</sch:assert>
      <sch:assert id="a-3335-29845-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-29845).</sch:assert>
      <sch:assert id="a-3335-29846-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-29846).</sch:assert>
      <sch:assert id="a-3335-31003-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31003).</sch:assert>
      <sch:assert id="a-3335-29847-error" test="count(hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3335-29847) such that it SHALL contain exactly one [1..1] @typeCode="DEV" Device (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3335-29848) &gt;SHALL contain exactly one [1..1] role (CONF:3335-29849).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Order-statusCode-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31004-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31004).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Order-participation-DEV-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-29850-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-29850).</sch:assert>
      <sch:assert id="a-3335-29851-error" test="count(hqmf:playingDevice)=1">This role SHALL contain exactly one [1..1] playingDevice (CONF:3335-29851).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Order-participation-DEV-role-playingDevice-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice">
      <sch:assert id="a-3335-29854-error" test="count(hqmf:code)=1">This playingDevice SHALL contain exactly one [1..1] code (CONF:3335-29854).</sch:assert>
      <sch:assert id="a-3335-29852-error" test="@classCode='DEV'">This playingDevice SHALL contain exactly one [1..1] @classCode="DEV" Device (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3335-29852).</sch:assert>
      <sch:assert id="a-3335-29853-error" test="@determinerCode='KIND'">This playingDevice SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3335-29853).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Device-Recommended-errors">
    <sch:rule id="r-Device-Recommended-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16']]/hqmf:templateId">
      <sch:assert id="a-3335-31712-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-31712) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.16" (CONF:3335-31713) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33699).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Recommended-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31708-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3335-31708).</sch:assert>
      <sch:assert id="a-3335-31709-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31709).</sch:assert>
      <sch:assert id="a-3335-31711-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31711)</sch:assert>
      <sch:assert id="a-3335-31714-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31714).</sch:assert>
      <sch:assert id="a-3335-31715-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31715).</sch:assert>
      <sch:assert id="a-3335-31716-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31716).</sch:assert>
      <sch:assert id="a-3335-31721-error" test="count(hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3335-31721) such that it SHALL contain exactly one [1..1] @typeCode="DEV" Device (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3335-31722) SHALL contain exactly one [1..1] role (CONF:3335-31723).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Recommended-statusCode-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31717-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31717).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Recommended-participation-DEV-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-31724-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-31724).</sch:assert>
      <sch:assert id="a-3335-31725-error" test="count(hqmf:playingDevice)=1">This role SHALL contain exactly one [1..1] playingDevice (CONF:3335-31725).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Recommended-participation-DEV-role-playingDevice-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice">
      <sch:assert id="a-3335-31728-error" test="count(hqmf:code)=1">This playingDevice SHALL contain exactly one [1..1] code (CONF:3335-31728).</sch:assert>
      <sch:assert id="a-3335-31726-error" test="@classCode='DEV'">This playingDevice SHALL contain exactly one [1..1] @classCode="DEV" Device (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3335-31726).</sch:assert>
      <sch:assert id="a-3335-31727-error" test="@determinerCode='KIND'">This playingDevice SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3335-31727).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnosis-errors">
    <sch:rule id="r-Diagnosis-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' ]]/hqmf:templateId">
      <sch:assert id="a-3346-33771-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-33771). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.110" (CONF:3346-33776) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34321).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-33768-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-33768).</sch:assert>
      <sch:assert id="a-3346-33769-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-33769).</sch:assert>
      <sch:assert id="a-3346-34702-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34702).</sch:assert>
      <sch:assert id="a-3346-33770-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-33770)</sch:assert>
      <sch:assert id="a-3346-33777-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-33777).</sch:assert>
      <sch:assert id="a-3346-33780-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-33780).</sch:assert>
      <sch:assert id="a-3346-33772-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-33772).</sch:assert>
      <sch:assert id="a-3346-33773-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-33773).</sch:assert>
      <sch:assert id="a-3346-33775-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-33775).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-33778-error" test="@code='282291009' and @codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @code="282291009" Diagnosis (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-33778).</sch:assert>
      <sch:assert id="a-3346-33779-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (SNOMED CT) (CONF:3346-33779).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-33781-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-33781).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-targetSiteCode-error" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3346-33786-error" test="count(hqmf:item) =1 ">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3346-33786).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnostic-Study-Order-errors">
    <sch:rule id="r-Diagnostic-Study-Order-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' ]]/hqmf:templateId">
      <sch:assert id="a-3372-30109-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30109) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.22" (CONF:3372-30117) 	This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33643).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34723-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-34723).</sch:assert>
      <sch:assert id="a-3372-30106-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:3372-30106).</sch:assert>
      <sch:assert id="a-3372-30108-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-30108)</sch:assert>
      <sch:assert id="a-3372-30110-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30110).</sch:assert>
      <sch:assert id="a-3372-30112-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30112).</sch:assert>
      <sch:assert id="a-3372-30111-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-30111).</sch:assert>
      <sch:assert id="a-3372-30232-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-30232).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30233-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30233).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-33483-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33483).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Order-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33573-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33573).</sch:assert>
      <sch:assert id="a-3372-33574-error" test="count(hqmf:id)=1">This role SHALL contain exactly one [1..1] id (CONF:3372-33574).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnostic-Study-Performed-errors">
    <sch:rule id="r-Diagnostic-Study-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' ]]/hqmf:templateId">
      <sch:assert id="a-3346-30779-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30779) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.23" (CONF:3346-30780) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33605).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30775-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30775).</sch:assert>
      <sch:assert id="a-3346-30776-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:3346-30776).</sch:assert>
      <sch:assert id="a-3346-30778-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30778).</sch:assert>
      <sch:assert id="a-3346-30781-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-30781).</sch:assert>
      <sch:assert id="a-3346-30784-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30784).</sch:assert>
      <sch:assert id="a-3346-34764-error" test="count(hqmf:value)=0">SHALL NOT contain [0..0] value (CONF:3346-34764).</sch:assert>
      <sch:assert id="a-3346-30782-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30782).</sch:assert>
      <sch:assert id="a-3346-30785-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-30785).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-30786-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-30786).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34514-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34514).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34515-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34515).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnostic-Study-Recommended-errors">
    <sch:rule id="r-Diagnostic-Study-Recommended-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24']]/hqmf:templateId">
      <sch:assert id="a-3372-30576-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30576). such that it This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.24" (CONF:3372-30577) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33751)..</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Recommended-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-30572-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-30572).</sch:assert>
      <sch:assert id="a-3372-30573-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:3372-30573).</sch:assert>
      <sch:assert id="a-3372-30575-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-30575).</sch:assert>
      <sch:assert id="a-3372-30578-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30578).</sch:assert>
      <sch:assert id="a-3372-30581-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30581).</sch:assert>
      <sch:assert id="a-3372-30579-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-30579).</sch:assert>
      <sch:assert id="a-3372-30582-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-30582).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Recommended-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30583-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30583).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Recommended-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34332-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34332).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Recommended-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34334-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34334).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Dosage-errors">
    <sch:rule id="r-Dosage-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125']]/hqmf:templateId">
      <sch:assert id="a-3335-34421-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34421)) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.125" (CONF:3335-34425) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34650).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Dosage-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34423-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34423).</sch:assert>
      <sch:assert id="a-3335-34424-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-34424).</sch:assert>
      <sch:assert id="a-3335-34426-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34426).</sch:assert>
      <sch:assert id="a-3335-34429-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34429).</sch:assert>
      <sch:assert id="a-3335-34430-error" test="count(hqmf:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:3335-34430).</sch:assert>
      <sch:assert id="a-3335-34420-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34420).</sch:assert>
      <sch:assert id="a-3335-34422-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34422).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Dosage-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.125' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34427-error" test="@code='260911001'">This code SHALL contain exactly one [1..1] @code="260911001" Dosage (CONF:3335-34427).</sch:assert>
      <sch:assert id="a-3335-34428-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-34428).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Encounter-Order-errors">
    <sch:rule id="r-Encounter-Order-templateId-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' ]]/hqmf:templateId">
      <sch:assert id="a-3335-30864-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30864). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.27" (CONF:3335-30865) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33645).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Order-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30860-error" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:3335-30860).</sch:assert>
      <sch:assert id="a-3335-30861-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30861).</sch:assert>
      <sch:assert id="a-3335-30863-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30863).</sch:assert>
      <sch:assert id="a-3335-30867-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30867).</sch:assert>
      <sch:assert id="a-3335-30870-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30870).</sch:assert>
      <sch:assert id="a-3335-30866-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30866).</sch:assert>
      <sch:assert id="a-3335-30869-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30869).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Order-statusCode-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30871-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30871).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Order-participation-AUT-time-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-33488-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-33488).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Order-participation-AUT-role-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-33576-error" test="@classCode='ROL'">i.	This role SHALL contain exactly one [1..1] @classCode="ROL" Role(CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-33576).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Encounter-Performed-errors">
    <sch:rule id="r-Encounter-Performed-templateId-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31009-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31009) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.5" (CONF:3346-31010) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33397).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Performed-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]">
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
    <sch:rule id="r-Encounter-Performed-participation-AUT-time-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34660-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34660).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Performed-participation-AUT-role-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.5' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34661-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34661).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Encounter-Recommended-errors">
    <sch:rule id="r-Encounter-Recommended-templateId-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' ]]/hqmf:templateId">
      <sch:assert id="a-3335-30520-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' and @extension='2017-05-01'])=1">This templateId a.	SHALL contain exactly one [1..1] item (CONF:3335-30520). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.28" (CONF:3335-30521) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33694).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Recommended-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30854-error" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:3335-30854).</sch:assert>
      <sch:assert id="a-3335-30518-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30518).</sch:assert>
      <sch:assert id="a-3335-30519-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30519).</sch:assert>
      <sch:assert id="a-3335-30523-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30523).</sch:assert>
      <sch:assert id="a-3335-30857-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30857).</sch:assert>
      <sch:assert id="a-3335-30522-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30522).</sch:assert>
      <sch:assert id="a-3335-30526-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30526).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Recommended-statusCode-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30858-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30858).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Recommended-participation-AUT-time-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-34381-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-34381).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Encounter-Recommended-participation-AUT-role-errors" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-34713-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-34713).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Facility-Location-errors">
    <sch:rule id="r-Facility-Location-templateId-errors" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.92' ]]/hqmf:templateId">
      <sch:assert id="a-3335-30516-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.92' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30516) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.92" (CONF:3335-30517) 	This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34376).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Facility-Location-errors" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.92' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30514-error" test="@classCode='SDLOC'">SHALL contain exactly one [1..1] @classCode="SDLOC" Service Delivery Location (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-30514).</sch:assert>
      <sch:assert id="a-3335-30515-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30515)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Family-History-errors">
    <sch:rule id="r-Family-History-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' ]]/hqmf:templateId">
      <sch:assert id="a-3335-33792-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-33792) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.111" (CONF:3335-33799) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34383).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-33797-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-33797).</sch:assert>
      <sch:assert id="a-3335-33798-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-33798).</sch:assert>
      <sch:assert id="a-3335-34703-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34703).</sch:assert>
      <sch:assert id="a-3335-33791-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-33791).</sch:assert>
      <sch:assert id="a-3335-33793-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-33793).</sch:assert>
      <sch:assert id="a-3335-33794-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-33794).</sch:assert>
      <sch:assert id="a-3335-33800-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-33800).</sch:assert>
      <sch:assert id="a-3335-33803-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-33803).</sch:assert>
      <sch:assert id="a-3335-33795-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-33795).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-33801-error" test="@code='10157-6'">This code SHALL contain exactly one [1..1] @code="10157-6" Family History (CONF:3335-33801).</sch:assert>
      <sch:assert id="a-3335-33802-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (LOINC) (CONF:3335-33802).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-33804-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-33804).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-33815-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-33815).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-33791-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-33817-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3335-33817).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Immunization-Administered-errors">
    <sch:rule id="r-Immunization-Administered-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' ]]/hqmf:templateId">
      <sch:assert id="a-3372-33831-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-33831) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.112" (CONF:3372-33836) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34384).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Administered-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-33833-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-33833).</sch:assert>
      <sch:assert id="a-3372-33834-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-33834).</sch:assert>
      <sch:assert id="a-3372-33830-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-33830).</sch:assert>
      <sch:assert id="a-3372-33837-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-33837).</sch:assert>
      <sch:assert id="a-3372-33832-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-33832).</sch:assert>
      <sch:assert id="a-3372-33840-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-33840).</sch:assert>
      <sch:assert id="a-3372-33841-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-33841).</sch:assert>
      <sch:assert id="a-3372-33844-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-33844) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-33852) SHALL contain exactly one [1..1] role (CONF:3372-33845).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Administered-code-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-33838-error" test="@code='416118004'">This code SHALL contain exactly one [1..1] @code="416118004" Administration (CONF:3372-33838).</sch:assert>
      <sch:assert id="a-3372-33839-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (SNOMED CT) (CONF:3372-33839).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Administered-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33847-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-33847).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Administered-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33853-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33853).</sch:assert>
      <sch:assert id="a-3372-33846-error" test="count(hqmf:playingManufacturedMaterial)=1">This role SHALL contain exactly one [1..1] playingManufacturedMaterial (CONF:3372-33846).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Administered-participation-CSM-role-playingManufacturedMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial">
      <sch:assert id="a-3372-33854-error" test="@classCode='MMAT'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-33854).</sch:assert>
      <sch:assert id="a-3372-33855-error" test="@determinerCode='KIND'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-33855).</sch:assert>
      <sch:assert id="a-3372-33856-error" test="count(hqmf:code)=1">This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3372-33856).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Immunization-Order-errors">
    <sch:rule id="r-Immunization-Order-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34004-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34004) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.113" (CONF:3346-34016) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34385).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34025-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3346-34025).</sch:assert>
      <sch:assert id="a-3346-34026-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34026).</sch:assert>
      <sch:assert id="a-3346-34003-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34003.</sch:assert>
      <sch:assert id="a-3346-34028-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34028).</sch:assert>
      <sch:assert id="a-3346-34029-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34029).</sch:assert>
      <sch:assert id="a-3346-34005-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34005).</sch:assert>
      <sch:assert id="a-3346-34008-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-34008) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34024) SHALL contain exactly one [1..1] role (CONF:3346-34009).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34017-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34017).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34022-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34020).</sch:assert>
      <sch:assert id="a-3346-34010-error" test="count(hqmf:playingManufacturedMaterial)=1">This role SHALL contain exactly one [1..1] playingManufacturedMaterial (CONF:3346-34010).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-CSM-role-playingManufacturedMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial">
      <sch:assert id="a-3346-34011-error" test="count(hqmf:code)=1">This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3346-34011).</sch:assert>
      <sch:assert id="a-3346-34020-error" test="@classCode='MMAT'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34020).</sch:assert>
      <sch:assert id="a-3346-34023-error" test="@determinerCode='KIND'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34023).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34031-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34031).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3346-34033-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34033).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Incision-Datetime-errors">
    <sch:rule id="r-Incision-Datetime-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' ]]/hqmf:templateId">
      <sch:assert id="a-3335-29910-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-29910) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.89" (CONF:3335-29911) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33648).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Incision-Datetime-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-29907-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" (CONF:3335-29907).</sch:assert>
      <sch:assert id="a-3335-29908-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-29908).</sch:assert>
      <sch:assert id="a-3335-29909-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-29909).</sch:assert>
      <sch:assert id="a-3335-29913-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-29913).</sch:assert>
      <sch:assert id="a-3335-29993-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-29993).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Incision-Datetime-code-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-29914-error" test="@code='34896006'">This code SHALL contain exactly one [1..1] @code="34896006" Incision (CONF:3335-29914).</sch:assert>
      <sch:assert id="a-3335-29915-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-29915).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Incision-Datetime-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.89' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-33152-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-33152).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Intervention-Order-errors">
    <sch:rule id="r-Intervention-Order-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' ]]/hqmf:templateId">
      <sch:assert id="a-3335-30644-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30644)  such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.35" (CONF:3335-30645) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33383).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30631-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3335-30631).</sch:assert>
      <sch:assert id="a-3335-30632-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30632).</sch:assert>
      <sch:assert id="a-3335-30643-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30643).</sch:assert>
      <sch:assert id="a-3335-30650-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30650).</sch:assert>
      <sch:assert id="a-3335-30651-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30651).</sch:assert>
      <sch:assert id="a-3335-30652-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30652).</sch:assert>
      <sch:assert id="a-3335-30654-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30654).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30655-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30655).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-participaton-AUT-time-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3335-33493-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3335-33493).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Order-participaton-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3335-33587-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3335-33587).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Intervention-Performed-errors">
    <sch:rule id="r-Intervention-Performed-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31154-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31154) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.36" (CONF:3346-31155) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33384).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Performed-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31150-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3346-31150).</sch:assert>
      <sch:assert id="a-3346-31151-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31151).</sch:assert>
      <sch:assert id="a-3346-31153-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31153).</sch:assert>
      <sch:assert id="a-3346-31156-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31156).</sch:assert>
      <sch:assert id="a-3346-31159-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31159).</sch:assert>
      <sch:assert id="a-3346-31157-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31157).</sch:assert>
      <sch:assert id="a-3346-31160-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31160).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Performed-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31161-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31161).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Performed-participation-AUT-time-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34527-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34527).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Performed-participation-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34528-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34528).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Intervention-Recommended-errors">
    <sch:rule id="r-Intervention-Recommended-templateId-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' ]]/hqmf:templateId">
      <sch:assert id="a-3335-30804-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-30804) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.37" (CONF:3335-30805) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33385).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30801-error" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CONF:3335-30801).</sch:assert>
      <sch:assert id="a-3335-30802-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-30802).</sch:assert>
      <sch:assert id="a-3335-30803-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-30803).</sch:assert>
      <sch:assert id="a-3335-30807-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-30807).</sch:assert>
      <sch:assert id="a-3335-30810-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-30810).</sch:assert>
      <sch:assert id="a-3335-30808-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-30808).</sch:assert>
      <sch:assert id="a-3335-30811-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-30811).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-statusCode-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-30812-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-30812).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-participation-AUT-time-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34396-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34396).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Intervention-Recommended-participation-AUT-role-errors" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34534-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34534).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Component-errors">
    <sch:rule id="r-Laboratory-Test-Component-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.126']]/hqmf:templateId">
      <sch:assert id="a-3335-34582-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.126' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34582) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.126" (CONF:3335-34584). This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34585).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Component-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.126' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34588-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34588).</sch:assert>
      <sch:assert id="a-3335-34589-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3335-34589).</sch:assert>
      <sch:assert id="a-3335-34581-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34581)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Order-errors">
    <sch:rule id="r-Laboratory-Test-Order-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' ]]/hqmf:templateId">
      <sch:assert id="a-3372-30393-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30393). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.41" (CONF:3372-30394) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3372-33649).</sch:assert>
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
    <sch:rule id="r-Laboratory-Test-Order-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-33498-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33498).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Order-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33590-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33590).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Performed-errors">
    <sch:rule id="r-Laboratory-Test-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' ]]/hqmf:templateId">
      <sch:assert id="a-3346-30367-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30367) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.42" (CONF:3346-30368) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33373).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30364-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30364).</sch:assert>
      <sch:assert id="a-3346-33237-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-33237).</sch:assert>
      <sch:assert id="a-3346-30366-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30366).</sch:assert>
      <sch:assert id="a-3346-30370-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30370).</sch:assert>
      <sch:assert id="a-3346-30373-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-30373).</sch:assert>
      <sch:assert id="a-3346-30369-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-30369).</sch:assert>
      <sch:assert id="a-3346-30372-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30372).</sch:assert>
      <sch:assert id="a-3346-33611-error" test="count(hqmf:value)=0">SHALL NOT contain [0..0] value (CONF:3346-33611).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-30509-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-30509).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-methodCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-30378-error" test="count(hqmf:item)=1">The methodCode, if present, SHALL contain exactly one [1..1] item (CONF:3346-30378).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34539-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34539).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34540-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34540).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Recommended-errors">
    <sch:rule id="r-Laboratory-Test-Recommended-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' ]]/hqmf:templateId">
      <sch:assert id="a-3372-30418-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-30418). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.43" (CONF:3372-30419) This item SHALL contain exactly one [1..1] @extension="20187-05-01" (CONF:3372-33692).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-30414-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-30414).</sch:assert>
      <sch:assert id="a-3372-30415-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-30415).</sch:assert>
      <sch:assert id="a-3372-30417-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-30417).</sch:assert>
      <sch:assert id="a-3372-30420-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30420).</sch:assert>
      <sch:assert id="a-3372-30423-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30423).</sch:assert>
      <sch:assert id="a-3372-30421-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-30421).</sch:assert>
      <sch:assert id="a-3372-30424-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30424).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30510-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30510).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34417-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34417).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Recommended-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34418-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-34418).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Reference-Range-errors">
    <sch:rule id="r-Laboratory-Test-Reference-Range-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' ]]/hqmf:templateId">
      <sch:assert id="a-3335-34399-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34399). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.124" (CONF:3335-34401) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34615).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Reference-Range-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34406-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34406).</sch:assert>
      <sch:assert id="a-3335-34407-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-34407).</sch:assert>
      <sch:assert id="a-3335-34398-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34398).</sch:assert>
      <sch:assert id="a-3335-34400-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34400).</sch:assert>
      <sch:assert id="a-3335-34405-error" test="count(hqmf:value[@xsi:type='IVL_PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="IVL_PQ" (CONF:3335-34405).</sch:assert>
      <sch:assert id="a-3335-34408-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34408).</sch:assert>
      <sch:assert id="a-3335-34409-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34409).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Reference-Range-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.124' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34403-error" test="@code='19147-8'">This code SHALL contain exactly one [1..1] @code="19147-8" Lab Test Reference Range (CONF:3335-34403).</sch:assert>
      <sch:assert id="a-3335-34404-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-34404).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Measure-Description-Section-errors">
    <sch:rule id="r-Measure-Description-Section-templateId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2']]/hqmf:component/hqmf:measureDescriptionSection/hqmf:templateId">
      <sch:assert id="a-3372-18898-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.3'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:87-18898) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.3" (CONF:87-18899).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Description-Section-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureDescriptionSection">
      <sch:assert id="a-3372-18897-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18897).</sch:assert>
      <sch:assert id="a-3372-18914-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18914).</sch:assert>
      <sch:assert id="a-3372-18918-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18918).</sch:assert>
      <sch:assert id="a-3372-18920-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3372-18920).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Description-Section-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureDescriptionSection/hqmf:code">
      <sch:assert id="a-3372-19064-error" test="@code='74045-6'">This code SHALL contain exactly one [1..1] @code="74045-6" Measure Description (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:87-19064).</sch:assert>
      <sch:assert id="a-3372-30102-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:87-30102).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Description-Section-title-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureDescriptionSection/hqmf:title">
      <sch:assert id="a-3372-18919-error" test="@value='Measure Description Section'">This title SHALL contain exactly one [1..1] @value="Measure Description Section" (CONF:87-18919).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Measure-Observations-Section-errors">
    <sch:rule id="r-Measure-Observations-Section-templateId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2']]/hqmf:component/hqmf:measureObservationsSection/hqmf:templateId">
      <sch:assert id="a-3372-18902-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-18902) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.2.4" (CONF:3372-18903). SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-30104).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection">
      <sch:assert id="a-3372-18901-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18901).</sch:assert>
      <sch:assert id="a-3372-18905-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18905).</sch:assert>
      <sch:assert id="a-3372-18910-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18910).</sch:assert>
      <sch:assert id="a-3372-30105-error" test="count(hqmf:definition) &gt; 0">SHALL contain at least one [1..*] definition (CONF:3372-30105).</sch:assert>
      <sch:assert id="a-3372-18911-error" test="count(hqmf:text)=1">SHALL contain exactly one [1..1] text (CONF:3372-18911).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-18906-error" test="@code='57027-5'">This code SHALL contain exactly one [1..1] @code="57027-5" Measure Observation (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:3372-18906).</sch:assert>
      <sch:assert id="a-3372-30103-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3372-30103).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-title-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:title">
      <sch:assert id="a-3372-18965-error" test="@value='Measure Observations Section'">This title SHALL contain exactly one [1..1] @value="Measure Observations Section" (CONF:3372-18965).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-definition-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition">
      <sch:assert id="a-3372-34644-error" test="count(hqmf:measureObservationDefinition) = 1">Such definitions SHALL contain exactly one [1..1] measureObservationDefinition (CONF:3372-34644).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-definition-measureObservationDefinition-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition/hqmf:measureObservationDefinition">
      <sch:assert id="a-3372-34650-error" test="count(hqmf:code) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] code (CONF:3372-34650).</sch:assert>
      <sch:assert id="a-3372-34651-error" test="count(hqmf:value) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] value (CONF:3372-34651).</sch:assert>
      <sch:assert id="a-3372-34649-error" test="count(hqmf:methodCode) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] methodCode (CONF:3372-34649).</sch:assert>
      <sch:assert id="a-3372-34645-error" test="count(hqmf:componentOf) = 1">This measureObservationDefinition SHALL contain exactly one [1..1] componentOf (CONF:3372-34645)</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-definition-measureObservationDefinition-componentOf-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition/hqmf:measureObservationDefinition/hqmf:componentOf">
      <sch:assert id="a-3372-34646-error" test="count(hqmf:criteriaReference) = 1">This componentOf SHALL contain exactly one [1..1] criteriaReference (CONF:3372-34646).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Measure-Observations-Section-definition-measureObservationDefinition-componentOf-criteriaReference-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:component/hqmf:measureObservationsSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.4'][@extension='2018-05-01']]/hqmf:definition/hqmf:measureObservationDefinition/hqmf:componentOf/hqmf:criteriaReference">
      <sch:assert id="a-3372-34647-error" test="@classCode='OBS'">This criteriaReference SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3372-34647).</sch:assert>
      <sch:assert id="a-3372-34648-error" test="@moodCode='EVN'">This criteriaReference SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34648).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Active-errors">
    <sch:rule id="r-Medication-Active-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31954-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31954) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.44" (CONF:3372-31955) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33376).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]">
      <sch:assert id="a-3346-31950-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administrated (CONF:3346-31950).</sch:assert>
      <sch:assert id="a-3346-31951-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31951).</sch:assert>
      <sch:assert id="a-3346-31953-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31953.</sch:assert>
      <sch:assert id="a-3346-31956-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31956).</sch:assert>
      <sch:assert id="a-3346-31957-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31957).</sch:assert>
      <sch:assert id="a-3346-31958-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31958).</sch:assert>
      <sch:assert id="a-3346-33121-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-33121) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable  (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-33122) SHALL contain exactly one [1..1] role (CONF:3372-33123).</sch:assert>
      <sch:assert id="a-3346-34809-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-34809).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31959-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31959).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33124-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-33124).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Active-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3346-33125-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-33125).</sch:assert>
      <sch:assert id="a-3346-34116-error" test="@classCode='MMAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34116).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Administered-errors">
    <sch:rule id="r-Medication-Administered-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' ]]/hqmf:templateId">
      <sch:assert id="a-3372-32051-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32051). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.45" (CONF:3372-32052) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33386).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32047-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32047).</sch:assert>
      <sch:assert id="a-3372-32048-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32048).</sch:assert>
      <sch:assert id="a-3372-32050-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32050).</sch:assert>
      <sch:assert id="a-3372-32053-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32053).</sch:assert>
      <sch:assert id="a-3372-32057-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32057).</sch:assert>
      <sch:assert id="a-3372-32054-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-32054).</sch:assert>
      <sch:assert id="a-3372-32058-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32058).</sch:assert>
      <sch:assert id="a-3372-32497-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32497) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32503) SHALL contain exactly one [1..1] role (CONF:3372-32498).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-code-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-32055-error" test="@code='416118004' and @codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @code="416118004" Administration (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-32055).</sch:assert>
      <sch:assert id="a-3372-32056-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CONF:3372-32056).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32059-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32059).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32504-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32504).</sch:assert>
      <sch:assert id="a-3372-32499-error" test="count(hqmf:playingManufacturedMaterial)=1">This role SHALL contain exactly one [1..1] playingManufacturedMaterial (CONF:3372-32499).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-CSM-role-playingManufacturedMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial">
      <sch:assert id="a-3372-32500-error" test="@classCode='MMAT'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32500).</sch:assert>
      <sch:assert id="a-3372-32520-error" test="@determinerCode='KIND'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32520).</sch:assert>
      <sch:assert id="a-3372-32501-error" test="count(hqmf:code)=1">This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3372-32501).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34546-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34546).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34547-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34547).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Discharge-errors">
    <sch:rule id="r-Medication-Discharge-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' ]]/hqmf:templateId">
      <sch:assert id="a-3346-32524-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-32524) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.48" (CONF:3346-32525) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33439).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-32521-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3346-32521).</sch:assert>
      <sch:assert id="a-3346-32522-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32522).</sch:assert>
      <sch:assert id="a-3346-32523-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32523).</sch:assert>
      <sch:assert id="a-3346-32526-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32526).</sch:assert>
      <sch:assert id="a-3346-32530-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32530).</sch:assert>
      <sch:assert id="a-3346-32527-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-32527).</sch:assert>
      <sch:assert id="a-3346-32531-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32531).</sch:assert>
      <sch:assert id="a-3346-32539-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32539) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32540) SHALL contain exactly one [1..1] role (CONF:3346-32541).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-code-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-32528-error" test="@code='10183-2'">This code SHALL contain exactly one [1..1] @code="10183-2" Discharge Medication (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3346-32528).</sch:assert>
      <sch:assert id="a-3346-32529-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CONF:3346-32529).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-32532-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32532).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-32542-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32542).</sch:assert>
      <sch:assert id="a-3346-32543-error" test="count(hqmf:playingManufacturedMaterial)=1">This role SHALL contain exactly one [1..1] playingManufacturedMaterial (CONF:3346-32543). This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3346-32546).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-participation-CSM-role-playingManufacturedMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial">
      <sch:assert id="a-3346-32544-error" test="@classCode='MMAT'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-32544).</sch:assert>
      <sch:assert id="a-3346-32545-error" test="@determinerCode='KIND'">This playingManufacturedMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-32545).</sch:assert>
      <sch:assert id="a-3346-32546-error" test="count(hqmf:code)=1">This playingManufacturedMaterial SHALL contain exactly one [1..1] code (CONF:3346-32546).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34443-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34443).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3346-34444-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3346-34444).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-participation-PRF-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34918-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3346-34918).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Dispensed-errors">
    <sch:rule id="r-Medication-Dispensed-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' ]]/hqmf:templateId">
      <sch:assert id="a-3346-32564-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3346-32564). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.49" (CONF:3346-32565) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33752).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-32560-error" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3346-32560).</sch:assert>
      <sch:assert id="a-3346-32561-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32561).</sch:assert>
      <sch:assert id="a-3346-32563-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32563).</sch:assert>
      <sch:assert id="a-3346-32566-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-32566).</sch:assert>
      <sch:assert id="a-3346-32567-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32567).</sch:assert>
      <sch:assert id="a-3346-32568-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-32568).</sch:assert>
      <sch:assert id="a-3346-32573-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-32573) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-32574) SHALL contain exactly one [1..1] role (CONF:3346-32575).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-statusCode-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-32582-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-32582).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-CSM-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-32576-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-32576).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-CSM-role-playingMaterial-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3346-32578-error" test="@classCode='MMAT'">The playingMaterial, if present, SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-32578).</sch:assert>
      <sch:assert id="a-3346-32579-error" test="@determinerCode='KIND'">The playingMaterial, if present, SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-32579).</sch:assert>
      <sch:assert id="a-3346-32580-error" test="count(hqmf:code)=1">The playingMaterial, if present, SHALL contain exactly one [1..1] code (CONF:3346-32580).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-AUT-time-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3346-34865-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34865).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-AUT-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3346-34866-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3346-34866).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Dispensed-participation-PRF-role-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34918-error" test="@classCode='ROL'">i.	This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-34918).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Order-errors">
    <sch:rule id="r-Medication-Order-templateId-item-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' ]]/hqmf:templateId">
      <sch:assert id="a-3372-29051-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-29051) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.51" (CONF:3372-29052) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33443).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-30218-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-30218).</sch:assert>
      <sch:assert id="a-3372-29049-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-29049).</sch:assert>
      <sch:assert id="a-3372-29050-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-29050).</sch:assert>
      <sch:assert id="a-3372-30185-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-30185).</sch:assert>
      <sch:assert id="a-3372-30186-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-30186).</sch:assert>
      <sch:assert id="a-3372-30227-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-30227).</sch:assert>
      <sch:assert id="a-3372-29053-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-29053) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-29054) SHALL contain exactly one [1..1] role (CONF:3372-29055).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-30228-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-30228).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-29057-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-29057).</sch:assert>
      <sch:assert id="a-3372-29056-error" test="@classCode='MANU'">This role SHALL contain exactly one [1..1] @classCode="MANU" Manufactured (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-29056).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-29060-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-29060).</sch:assert>
      <sch:assert id="a-3372-29058-error" test="@classCode='MMAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-29058).</sch:assert>
      <sch:assert id="a-3372-29059-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-29059).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-33500-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33500).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-33593-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CONF:3372-33593).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-LOC-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='LOC'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34863-error" test="@classCode='EXLOC'">This role SHALL contain exactly one [1..1] @classCode="EXLOC" event location (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34863).</sch:assert>
      <sch:assert id="a-3372-34864-error" test="count(hqmf:code)=1">This role SHALL contain exactly one [1..1] code (CONF:3372-34864).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Care-Experience-errors">
    <sch:rule id="r-Patient-Care-Experience-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.52' ]]/hqmf:templateId">
      <sch:assert id="a-3335-32207-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.52' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-32207) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.52" (CONF:3335-32208) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33700).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Care-Experience-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.52' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-32204-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-32204).</sch:assert>
      <sch:assert id="a-3335-32205-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-32205).</sch:assert>
      <sch:assert id="a-3335-34707-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34707).</sch:assert>
      <sch:assert id="a-3335-32206-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-32206).</sch:assert>
      <sch:assert id="a-3335-32209-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-32209).</sch:assert>
      <sch:assert id="a-3335-32213-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-32213).</sch:assert>
      <sch:assert id="a-3335-32210-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-32210).</sch:assert>
      <sch:assert id="a-3335-32214-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-32214).</sch:assert>
      <sch:assert id="a-3335-32216-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-32216).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Care-Experience-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.52' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-32211-error" test="@code='406193000'">This code SHALL contain exactly one [1..1] @code="406193000" Patient Satisfaction (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-32211).</sch:assert>
      <sch:assert id="a-3335-32212-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-32212).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Care-Experience-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.52' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-32217-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-32217).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Birth-Date-errors">
    <sch:rule id="r-Patient-Characteristic-Birth-Date-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31553-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-31553) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.54" (CONF:3335-31554) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33650).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Birth-Date-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31550-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31550).</sch:assert>
      <sch:assert id="a-3335-31551-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31551).</sch:assert>
      <sch:assert id="a-3335-34706-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34706).</sch:assert>
      <sch:assert id="a-3335-31552-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31552).</sch:assert>
      <sch:assert id="a-3335-31555-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31555).</sch:assert>
      <sch:assert id="a-3335-31559-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31559).</sch:assert>
      <sch:assert id="a-3335-31556-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31556).</sch:assert>
      <sch:assert id="a-3335-31583-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31583).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Birth-Date-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31557-error" test="@code='21112-8'">This code SHALL contain exactly one [1..1] @code="21112-8" Birth Date (CONF:3335-31557).</sch:assert>
      <sch:assert id="a-3335-31558-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CONF:3335-31558).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Birth-Date-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.54' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31584-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31584).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Clinical-Trial-Participant-errors">
    <sch:rule id="r-Patient-Characteristic-Clinical-Trial-Participant-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.6' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31568-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.6' and @extension='2017-05-01'])">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-31568) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.6" (CONF:3335-31569) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33706).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Clinical-Trial-Participant-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.6' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31565-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31565).</sch:assert>
      <sch:assert id="a-3335-31566-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31566).</sch:assert>
      <sch:assert id="a-3335-34705-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34705).</sch:assert>
      <sch:assert id="a-3335-31570-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31570).</sch:assert>
      <sch:assert id="a-3335-31574-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31574).</sch:assert>
      <sch:assert id="a-3335-31567-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31567).</sch:assert>
      <sch:assert id="a-3335-31571-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31571).</sch:assert>
      <sch:assert id="a-3335-31575-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31575).</sch:assert>
      <sch:assert id="a-3335-31580-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31580).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Clinical-Trial-Participant-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.6' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31572-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3335-31572).</sch:assert>
      <sch:assert id="a-3335-31573-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-31573).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Clinical-Trial-Participant-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.6' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31576-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31576).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Ethnicity-errors">
    <sch:rule id="r-Patient-Characteristic-Ethnicity-templateId-item-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.56' ]]/hqmf:templateId">
      <sch:assert id="a-3335-28172-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.56' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-28172). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.56" (CONF:3335-28173) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34654).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Ethnicity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.56' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-28168-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:3335-28168).</sch:assert>
      <sch:assert id="a-3335-28169-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-28169).</sch:assert>
      <sch:assert id="a-3335-34704-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34704).</sch:assert>
      <sch:assert id="a-3335-28171-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-28171).</sch:assert>
      <sch:assert id="a-3335-34714-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34714).</sch:assert>
      <sch:assert id="a-3335-28179-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-28179).</sch:assert>
      <sch:assert id="a-3335-28174-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-28174).</sch:assert>
      <sch:assert id="a-3335-28180-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-28180).</sch:assert>
      <sch:assert id="a-3335-31180-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31180).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Ethnicity-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.56' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-28175-error" test="@code='54133-4'">This code SHALL contain exactly one [1..1] @code="54133-4" Ethnicity (CONF:3335-28175).</sch:assert>
      <sch:assert id="a-3335-28176-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-28176).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Ethnicity-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.56' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31181-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31181).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Expired-errors">
    <sch:rule id="r-Patient-Characteristic-Expired-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31588-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01'])=1">This templateId  SHALL contain exactly one [1..1] item (CONF:3335-31588) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.57" (CONF:3335-33141) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33381).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31585-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31585).</sch:assert>
      <sch:assert id="a-3335-31586-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31586).</sch:assert>
      <sch:assert id="a-3335-34709-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34709).</sch:assert>
      <sch:assert id="a-3335-31587-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31587)</sch:assert>
      <sch:assert id="a-3335-31590-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31590).</sch:assert>
      <sch:assert id="a-3335-31594-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31594).</sch:assert>
      <sch:assert id="a-3335-31591-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31591).</sch:assert>
      <sch:assert id="a-3335-31595-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31595).</sch:assert>
      <sch:assert id="a-3335-31600-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31600).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31592-error" test="@code='ASSERTION'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:3335-31592).</sch:assert>
      <sch:assert id="a-3335-31593-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-31593).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31596-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31596).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Expired-value-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.57' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-33429-error" test="@code='419099009'">This value SHALL contain exactly one [1..1] @code="419099009" Dead (CONF:3335-33429).</sch:assert>
      <sch:assert id="a-3335-33430-error" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-33430).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Payer-errors">
    <sch:rule id="r-Patient-Characteristic-Payer-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31630-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-31630) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.58" (CONF:3335-31631) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34457).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Payer-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31627-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31627).</sch:assert>
      <sch:assert id="a-3335-31628-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31628).</sch:assert>
      <sch:assert id="a-3335-34710-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34710).</sch:assert>
      <sch:assert id="a-3335-31629-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31629).</sch:assert>
      <sch:assert id="a-3335-31632-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31632).</sch:assert>
      <sch:assert id="a-3335-31636-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31636).</sch:assert>
      <sch:assert id="a-3335-31633-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31633).</sch:assert>
      <sch:assert id="a-3335-31637-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31637).</sch:assert>
      <sch:assert id="a-3335-31639-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31639).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Payer-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31634-error" test="@code='48768-6'">This code SHALL contain exactly one [1..1] @code="48768-6" Payment Source (CONF:3335-31634).</sch:assert>
      <sch:assert id="a-3335-31635-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-31635).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Payer-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31643-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31643).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Race-errors">
    <sch:rule id="r-Patient-Characteristic-Race-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.59' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31239-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.59' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-31239) such that This item SHALL contain exactly one [1..1] @root="  2.16.840.1.113883.10.20.28.4.59" (CONF:3335-31240) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34655).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Race-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.59' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31236-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31236).</sch:assert>
      <sch:assert id="a-3335-31237-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31237).</sch:assert>
      <sch:assert id="a-3335-34711-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34711).</sch:assert>
      <sch:assert id="a-3335-31238-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31238).</sch:assert>
      <sch:assert id="a-3335-31241-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31241).</sch:assert>
      <sch:assert id="a-3335-31242-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31242).</sch:assert>
      <sch:assert id="a-3335-31246-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31246).</sch:assert>
      <sch:assert id="a-3335-31245-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31245).</sch:assert>
      <sch:assert id="a-3335-31248-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31248).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Race-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.59' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31243-error" test="@code='32624-9'">This code SHALL contain exactly one [1..1] @code="32624-9" Race (CONF:3335-31243).</sch:assert>
      <sch:assert id="a-3335-31244-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-31244).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Race-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.59' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-31247-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-31247).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Sex-errors">
    <sch:rule id="r-Patient-Characteristic-Sex-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' ]]/hqmf:templateId">
      <sch:assert id="a-3335-31285-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-31285) such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.55" (CONF:3335-31286) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33382).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Sex-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-31282-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-31282).</sch:assert>
      <sch:assert id="a-3335-31283-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-31283).</sch:assert>
      <sch:assert id="a-3335-34712-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3335-34712).</sch:assert>
      <sch:assert id="a-3335-31284-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-31284).</sch:assert>
      <sch:assert id="a-3335-31287-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-31287).</sch:assert>
      <sch:assert id="a-3335-31291-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-31291).</sch:assert>
      <sch:assert id="a-3335-31288-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-31288).</sch:assert>
      <sch:assert id="a-3335-31292-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-31292).</sch:assert>
      <sch:assert id="a-3335-31293-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-31293).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Sex-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-31289-error" test="@code='263495000'">This code SHALL contain exactly one [1..1] @code="263495000" Gender (CONF:3335-31289).</sch:assert>
      <sch:assert id="a-3335-31290-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3335-31290).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-Sex-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-33142-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3335-33142).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-errors">
    <sch:rule id="r-Patient-Characteristic-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31606-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31606) such that  This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.53" (CONF:3346-31607) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34456).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31602-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31602).</sch:assert>
      <sch:assert id="a-3346-31603-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31603).</sch:assert>
      <sch:assert id="a-3346-31604-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3346-31604).</sch:assert>
      <sch:assert id="a-3346-31605-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31605).</sch:assert>
      <sch:assert id="a-3346-31608-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31608).</sch:assert>
      <sch:assert id="a-3346-31609-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31609).</sch:assert>
      <sch:assert id="a-3346-31613-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31613).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Patient-Characteristic-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31614-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31614).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Physical-Exam-Order-errors">
    <sch:rule id="r-Physical-Exam-Order-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' ]]/hqmf:templateId">
      <sch:assert id="a-3372-31409-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31409) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.61" (CONF:3372-31410) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33437).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-31405-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-31405).</sch:assert>
      <sch:assert id="a-3372-31406-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31406).</sch:assert>
      <sch:assert id="a-3372-31408-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31408).</sch:assert>
      <sch:assert id="a-3372-31411-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31411).</sch:assert>
      <sch:assert id="a-3372-31413-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31413).</sch:assert>
      <sch:assert id="a-3372-31412-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31412).</sch:assert>
      <sch:assert id="a-3372-31414-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31414).</sch:assert>
      <sch:assert id="a-3372-31437-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-31437).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31434-error" test="@code='5880005'">This code SHALL contain exactly one [1..1] @code="5880005" Physical Examination (CONF:3372-31434).</sch:assert>
      <sch:assert id="a-3372-31435-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-31435).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-31415-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-31415).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-participation-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-33504-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33504).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-participation-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-33596-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33596).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Physical-Exam-Performed-errors">
    <sch:rule id="r-Physical-Exam-Performed-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31255-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3346-31255). such that This item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.62" (CONF:3346-31256) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33428).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31251-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31251).</sch:assert>
      <sch:assert id="a-3346-31252-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31252).</sch:assert>
      <sch:assert id="a-3346-31254-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31254).</sch:assert>
      <sch:assert id="a-3346-31257-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31257).</sch:assert>
      <sch:assert id="a-3346-31260-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-31260).</sch:assert>
      <sch:assert id="a-3346-31258-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-31258).</sch:assert>
      <sch:assert id="a-3346-31261-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31261).</sch:assert>
      <sch:assert id="a-3346-31441-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-31441).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-31439-error" test="@code='5880005'">This code SHALL contain exactly one [1..1] @code="5880005" Physical Examination (CONF:3346-31439).</sch:assert>
      <sch:assert id="a-3346-31440-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-31440).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31262-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31262).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-methodCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-31268-error" test="count(hqmf:item)=1">The methodCode, if present, SHALL contain exactly one [1..1] item (CONF:3346-31268).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-participaiont-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3346-34553-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3346-34553).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-participaiont-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-34554-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-34554).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Physical-Exam-Recommended-errors">
    <sch:rule id="r-Physical-Exam-Recommended-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' ]]/hqmf:templateId">
      <sch:assert id="a-3372-31447-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31447) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.61" (CONF:3372-31448) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33449).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-31443-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-31443).</sch:assert>
      <sch:assert id="a-3372-31444-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31444).</sch:assert>
      <sch:assert id="a-3372-31446-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31446).</sch:assert>
      <sch:assert id="a-3372-31449-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31449).</sch:assert>
      <sch:assert id="a-3372-31453-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31453).</sch:assert>
      <sch:assert id="a-3372-31450-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31450).</sch:assert>
      <sch:assert id="a-3372-31454-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31454).</sch:assert>
      <sch:assert id="a-3372-31459-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-31459).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31451-error" test="@code='5880005'">This code SHALL contain exactly one [1..1] @code="5880005" Physical Examination (CONF:3372-31451).</sch:assert>
      <sch:assert id="a-3372-31452-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-31452).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-31455-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-31455).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-participaiont-AUT-time-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34462-error-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34462).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-participaiont-AUT-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34463-error-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34463).</sch:assert>
    </sch:rule>
  </sch:pattern>
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
      <sch:assert id="a-3346-30028-error" test="count(hqmf:code)=1">This numeratorCriteria SHALL contain exactly one [1..1] code (CONF:3346-30028).</sch:assert>
      <sch:assert id="a-3346-34871-error" test="count(hqmf:precondition) &gt; 0">This numeratorCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34871).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:code">
      <sch:assert id="a-3346-30029-error" test="@code='NUMER'">This code SHALL contain exactly one [1..1] @code="NUMER" Numerator (CONF:3346-30029).</sch:assert>
      <sch:assert id="a-3346-30094-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30094).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34872-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34872).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34873-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34873).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34888-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34888).</sch:assert>
      <sch:assert id="a-3346-34889-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34889).</sch:assert>
    </sch:rule>
    <!-- DENOMINATOR CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria">
      <sch:assert id="a-3346-30030-error" test="count(hqmf:code)=1">This denominatorCriteria SHALL contain exactly one [1..1] code (CONF:3346-30030).</sch:assert>
      <sch:assert id="a-3346-34874-error" test="count(hqmf:precondition) &gt; 0">This denominatorCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34874).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:code">
      <sch:assert id="a-3346-30031-error" test="@code='DENOM'">This code SHALL contain exactly one [1..1] @code="DENOM" Denominator (CONF:3346-30031).</sch:assert>
      <sch:assert id="a-3346-30095-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30095).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34875-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34875).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34876-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34876).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34890-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34890).</sch:assert>
      <sch:assert id="a-3346-34891-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34891).</sch:assert>
    </sch:rule>
    <!-- MEASURE POPULATION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria">
      <sch:assert id="a-3346-30034-error" test="count(hqmf:code)=1">This measurePopulationCriteria SHALL contain exactly one [1..1] code (CONF:3346-30034).</sch:assert>
      <sch:assert id="a-3346-34877-error" test="count(hqmf:precondition) &gt; 0">This measurePopulationCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34877).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:code">
      <sch:assert id="a-3346-30035-error" test="@code='MSRPOPL'">This code SHALL contain exactly one [1..1] @code="MSRPOPL" Measure Population (CONF:3346-30035).</sch:assert>
      <sch:assert id="a-3346-30096-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30096).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34878-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34878).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34879-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34879).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34892-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34892).</sch:assert>
      <sch:assert id="a-3346-34893-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34893).</sch:assert>
    </sch:rule>
    <!-- DENOMINATOR EXCEPTION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria">
      <sch:assert id="a-3346-30038-error" test="count(hqmf:code)=1">This denominatorExceptionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30038).</sch:assert>
      <sch:assert id="a-3346-34880-error" test="count(hqmf:precondition) &gt; 0">This denominatorExceptionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34880).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:code">
      <sch:assert id="a-3346-30039-error" test="@code='DENEXCEP'">This code SHALL contain exactly one [1..1] @code="DENEXCEP" Denominator Exception (CONF:3346-30039).</sch:assert>
      <sch:assert id="a-3346-30097-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30097).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34881-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34881).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34882-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34882).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExceptionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExceptionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34894-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34894).</sch:assert>
      <sch:assert id="a-3346-34895-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34895).</sch:assert>
    </sch:rule>
    <!-- DENOMINATOR EXCLUSION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria">
      <sch:assert id="a-3346-30042-error" test="count(hqmf:code)=1">This denominatorExclusionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30042).</sch:assert>
      <sch:assert id="a-3346-34883-error" test="count(hqmf:precondition) &gt; 0">This denominatorExclusionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34883).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:code">
      <sch:assert id="a-3346-30043-error" test="@code='DENEX'">This code SHALL contain exactly one [1..1] @code="DENEX" Denominator Exclusion (CONF:3346-30043).</sch:assert>
      <sch:assert id="a-3346-30098-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30098).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34884-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34884).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34885-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34885).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-denominatorExclusionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:denominatorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34896-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34896).</sch:assert>
      <sch:assert id="a-3346-34897-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34897).</sch:assert>
    </sch:rule>
    <!-- NUMERATOR EXCLUSION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria">
      <sch:assert id="a-3346-30046-error" test="count(hqmf:code)=1">This numeratorExclusionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30046).</sch:assert>
      <sch:assert id="a-3346-34898-error" test="count(hqmf:precondition) &gt; 0">This numeratorExclusionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34898).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:code">
      <sch:assert id="a-3346-30047-error" test="@code='NUMEX'">This code SHALL contain exactly one [1..1] @code="NUMEX" Numerator Exclusion (CONF:3346-30047).</sch:assert>
      <sch:assert id="a-3346-30099-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30099).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34899-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34899).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34900-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34900).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-numeratorExclusionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:numeratorExclusionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34904-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34904).</sch:assert>
      <sch:assert id="a-3346-34905-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34905).</sch:assert>
    </sch:rule>
    <!-- MEASURE POPULATION EXCLUSION CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria">
      <sch:assert id="a-3346-30050-error" test="count(hqmf:code)=1">This measurePopulationExclusionCriteria SHALL contain exactly one [1..1] code (CONF:3346-30050).</sch:assert>
      <sch:assert id="a-3346-34901-error" test="count(hqmf:precondition) &gt; 0">This measurePopulationExclusionCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34901).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:code">
      <sch:assert id="a-3346-30051-error" test="@code='MSRPOPLEX'">This code SHALL contain exactly one [1..1] @code="MSRPOPLEX" Measure Population Exclusions (CONF:3346-30051).</sch:assert>
      <sch:assert id="a-3346-30100-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30100).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34902-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34902).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34903-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34903).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-measurePopulationExclusionCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:measurePopulationExclusionCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34906-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34906).</sch:assert>
      <sch:assert id="a-3346-34907-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34907).</sch:assert>
    </sch:rule>
    <!-- STRATIFIER CRITERIA (MAY CONTAIN ONE OR MORE)-->
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria">
      <sch:assert id="a-3346-34634-error" test="count(hqmf:precondition) &gt; 0">This stratifierCriteria SHALL contain at least one [1..*] precondition (CONF:3346-34634).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-code-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:code">
      <sch:assert id="a-3346-30055-error" test="@code='STRAT'">The code, if present, SHALL contain exactly one [1..1] @code="STRAT" Stratification (CONF:3346-30055).</sch:assert>
      <sch:assert id="a-3346-30101-error" test="@codeSystem">The code, if present, SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30101).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-precondition-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:precondition">
      <sch:assert id="a-3346-34635-error" test="count(hqmf:criteriaReference)=1">Such preconditions SHALL contain exactly one [1..1] criteriaReference (CONF:3346-34635).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-precondition-criteriaReference-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:precondition/hqmf:criteriaReference">
      <sch:assert id="a-3346-34644-error" test="count(hqmf:id)=1">This criteriaReference SHALL contain exactly one [1..1] id (CONF:3346-34644).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Population-Criteria-Section-component-stratifierCriteria-precondition-criteriaReference-id-errors" context="hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']]/hqmf:component/hqmf:stratifierCriteria/hqmf:precondition/hqmf:criteriaReference/hqmf:id">
      <sch:assert id="a-3346-34645-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34645).</sch:assert>
      <sch:assert id="a-3346-34646-error" test="@extension">This id SHALL contain exactly one [1..1] @extension (CONF:3346-34646).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Principal-Diagnosis-errors">
    <sch:rule id="r-Principal-Diagnosis-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' ]]/hqmf:templateId">
      <sch:assert id="a-3335-34349-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3335-34349) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.122" (CONF:3335-34358) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-34651).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Principal-Diagnosis-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-34367-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-34367).</sch:assert>
      <sch:assert id="a-3335-34368-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-34368).</sch:assert>
      <sch:assert id="a-3335-34348-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-34348).</sch:assert>
      <sch:assert id="a-3335-34369-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3335-34369).</sch:assert>
      <sch:assert id="a-3335-34370-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-34370).</sch:assert>
      <sch:assert id="a-3335-34350-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-34350).</sch:assert>
      <sch:assert id="a-3335-34351-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3335-34351).</sch:assert>
      <sch:assert id="a-3335-34353-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-34353).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Principal-Diagnosis-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34360-error" test="@code='52534-5'">This code SHALL contain exactly one [1..1] @code="52534-5" Principal Diagnosis (CONF:3335-34360).</sch:assert>
      <sch:assert id="a-3335-34361-error" test="@codeSystem='2.16.840.1.113883.6.1'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3335-34361).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Principal-Diagnosis-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-34362-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-34362).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Procedure-Order-errors">
    <sch:rule id="r-Procedure-Order-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' ]]/hqmf:templateId">
      <sch:assert id="a-3372-31123-error-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31123) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.66" (CONF:3372-31124) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33422).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-31120-error-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31120).</sch:assert>
      <sch:assert id="a-3372-33158-error-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-33158).</sch:assert>
      <sch:assert id="a-3372-31122-error-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31122)).</sch:assert>
      <sch:assert id="a-3372-31125-error-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31125).</sch:assert>
      <sch:assert id="a-3372-31128-error-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31128).</sch:assert>
      <sch:assert id="a-3372-31126-error-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31126).</sch:assert>
      <sch:assert id="a-3372-31129-error-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31129).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33147-error-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-33147).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33421-error-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-33421).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-33509-error-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-33509).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-33599-error-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-33599).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Procedure-Performed-errors">
    <sch:rule id="r-Procedure-Performed-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' ]]/hqmf:templateId">
      <sch:assert id="a-3372-31339-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31339) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.67" (CONF:3372-31340) 	This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33398).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-33149-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-33149).</sch:assert>
      <sch:assert id="a-3372-31336-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31336).</sch:assert>
      <sch:assert id="a-3372-31338-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31338).</sch:assert>
      <sch:assert id="a-3372-31341-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31341).</sch:assert>
      <sch:assert id="a-3372-31344-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31344).</sch:assert>
      <sch:assert id="a-3372-31342-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31342).</sch:assert>
      <sch:assert id="a-3372-31345-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31345).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33150-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-33150).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-priorityCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:priorityCode">
      <sch:assert id="a-3372-31350-error" test="count(hqmf:item)=1">The priorityCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-31350).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-methodCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:methodCode">
      <sch:assert id="a-3372-31352-error" test="count(hqmf:item)=1">The methodCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-31352).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33402-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-33402).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34560-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34560).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34561-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34561).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Procedure-Recommended-errors">
    <sch:rule id="r-Procedure-Recommended-templateId-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' ]]/hqmf:templateId">
      <sch:assert id="a-3372-31212-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-31212) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.68" (CONF:3372-31213) 	This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33417).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-33154-error" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CONF:3372-33154).</sch:assert>
      <sch:assert id="a-3372-31209-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-31209).</sch:assert>
      <sch:assert id="a-3372-31211-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-31211).</sch:assert>
      <sch:assert id="a-3372-31214-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-31214).</sch:assert>
      <sch:assert id="a-3372-31217-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-31217).</sch:assert>
      <sch:assert id="a-3372-31215-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-31215).</sch:assert>
      <sch:assert id="a-3372-31218-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-31218).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-statusCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-33155-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-33155).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-priorityCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:priorityCode">
      <sch:assert id="a-3372-31223-error" test="count(hqmf:item)=1">The priorityCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-31223).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-targetSiteCode-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-33414-error" test="count(hqmf:item)=1">The targetSiteCode, if present, SHALL contain exactly one [1..1] item (CONF:3372-33414).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-participation-AUT-time-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:time">
      <sch:assert id="a-3372-34469-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34469).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-participation-AUT-role-errors" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-34470-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34470).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Program-Participation-errors">
    <sch:rule id="r-Program-Participation-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' ]]/hqmf:templateId">
      <sch:assert id="a-3372-34820-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-34820) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.130" (CONF:3372-34824) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-34825).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Program-Participation-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-34829-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3372-34829).</sch:assert>
      <sch:assert id="a-3372-34830-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-34830).</sch:assert>
      <sch:assert id="a-3372-34831-error" test="not(@actionNegationInd)">SHALL NOT contain [0..0] @actionNegationInd (CONF:3372-34831).</sch:assert>
      <sch:assert id="a-3372-34819-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-34819).</sch:assert>
      <sch:assert id="a-3372-34832-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-34832).</sch:assert>
      <sch:assert id="a-3372-34881-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-34881).</sch:assert>
      <sch:assert id="a-3372-34821-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-34821).</sch:assert>
      <sch:assert id="a-3372-34822-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-34822).</sch:assert>
      <sch:assert id="a-3372-34833-error" test="count(hqmf:value[@xsi:type='CD'])=1">9.	SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-34833).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Program-Participation-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-34834-error" test="@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion  (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-34834).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Program-Participation-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-34827-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-34827).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Provider-Care-Experience-errors">
    <sch:rule id="r-Provider-Care-Experience-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' ]]/hqmf:templateId">
      <sch:assert id="a-3335-32221-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-32221) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.70" (CONF:3335-32222) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33701).</sch:assert>
    </sch:rule>
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
    <sch:rule id="r-Provider-Care-Experience-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3335-32229-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3335-32229).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Provider-Characteristic-errors">
    <sch:rule id="r-Provider-Characteristic-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' ]]/hqmf:templateId">
      <sch:assert id="a-3346-31743-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-31743) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.71" (CONF:3346-31744) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34121).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-31740-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-31740).</sch:assert>
      <sch:assert id="a-3346-31741-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-31741).</sch:assert>
      <sch:assert id="a-3346-31742-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-31742).</sch:assert>
      <sch:assert id="a-3346-31745-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-31745).</sch:assert>
      <sch:assert id="a-3346-31746-error" test="count(hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3346-31746) such that it SHALL contain exactly one [1..1] @typeCode="PRF" derived from (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3346-34842) SHALL contain exactly one [1..1] role (CONF:3346-31753).</sch:assert>
      <sch:assert id="a-3346-31748-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-31748).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-statusCodeerrors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-31749-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-31749).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-participation-DRIV-role-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3346-31754-error" test="@classCode='ASSIGNED'">This role SHALL contain exactly one [1..1] @classCode="ASSIGNED" Assigned Entity (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3346-31754).</sch:assert>
      <sch:assert id="a-3346-34837-error" test="count(hqmf:playingEntity)=1">This role SHALL contain exactly one [1..1] playingEntity (CONF:3346-34837).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Provider-Characteristic-participation-DRIV-role-playingEntity-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity">
      <sch:assert id="a-3346-34838-error" test="@classCode='PSN'">This playingEntity SHALL contain exactly one [1..1] @classCode="PSN" Person (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3346-34838).</sch:assert>
      <sch:assert id="a-3346-34839-error" test="@determinerCode='KIND'">This playingEntity SHALL contain exactly one [1..1] @determinerCode="KIND" (CodeSystem: EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3346-34839).</sch:assert>
      <sch:assert id="a-3346-34840-error" test="count(hqmf:code)=1">This playingEntity SHALL contain exactly one [1..1] code (CONF:3346-34840).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-CQL-Based-HQMF-Header-errors">
    <sch:rule id="r-CQL-Based-HQMF-Header-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]">
      <sch:assert id="a-3372-18786-error" test="count(hqmf:typeId)=1">SHALL contain exactly one [1..1] typeId (CONF:3372-18786).</sch:assert>
      <sch:assert id="a-3372-18771-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-18771)</sch:assert>
      <sch:assert id="a-3372-18542-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-18542).</sch:assert>
      <sch:assert id="a-3372-18575-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-18575).</sch:assert>
      <sch:assert id="a-3372-18541-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-18541).</sch:assert>
      <sch:assert id="a-3372-18579-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-18579).</sch:assert>
      <sch:assert id="a-3372-18543-error" test="count(hqmf:setId)=1">SHALL contain exactly one [1..1] setId (CONF:3372-18543).</sch:assert>
      <sch:assert id="a-3372-18555-error" test="count(hqmf:custodian)=1">SHALL contain exactly one [1..1] custodian (CONF:3372-18555).</sch:assert>
      <sch:assert id="a-3372-34627-error" test="count(hqmf:relatedDocument[count(hqmf:expressionDocument)=1]) &gt; 0">SHALL contain at least one [1..*] relatedDocument (CONF:3372-34627) such that it SHALL contain exactly one [1..1] expressionDocument (CONF:3372-34628).</sch:assert>
      <!-- Removed because this conformance changed from SHALL to MAY in IG -->
      <!-- <sch:assert id="a-3372-34898-error" test="count(hqmf:relatedDocument[@typeCode='XCRPT'][count(hqmf:componentQualityMeasureDocument)=1]) &gt; 0">SHALL contain at least one [1..*] relatedDocument (CONF:3372-34898) such that it SHALL contain exactly one [1..1] @typeCode="XCRPT" Excerpts (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:3372-34902). SHALL contain exactly one [1..1] componentQualityMeasureDocument (CONF:3372-34899)..</sch:assert> -->
      <sch:assert id="a-3372-18545-error" test="count(hqmf:controlVariable)=1">SHALL contain exactly one [1..1] controlVariable (CONF:3372-18545).</sch:assert>
      <sch:assert id="a-3372-18580-error" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRSCORE'][@codeSystem])=1][count(hqmf:value[@xsi:type='CD'][@code])=1])=1])=1">SHALL contain exactly one [1..1] subjectOf (CONF:3372-18580) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18581). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18582). This code SHALL contain exactly one [1..1] @code="MSRSCORE" Measure Scoring (CONF:3372-18583). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30057). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-29935). This value SHALL contain exactly one [1..1] @code (ValueSet: ObservationMeasureScoring urn:oid:2.16.840.1.113883.1.11.20367) (CONF:3372-29936).</sch:assert>
      <sch:assert id="a-3372-18588-error" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRTYPE'][@codeSystem])=1][count(hqmf:value[@xsi:type='CD'][@code])=1])=1]) &gt; 0">SHALL contain at least one [1..*] subjectOf (CONF:3372-18588) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18590). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18591). This code SHALL contain exactly one [1..1] @code="MSRTYPE" Measure Type (CONF:3372-29934). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30058). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-29938). This value SHALL contain exactly one [1..1] @code (ValueSet: ObservationMeasureType urn:oid:2.16.840.1.113883.1.11.20368) (CONF:3372-29939).</sch:assert>
      <sch:assert id="a-3372-18813-error" test="count(hqmf:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:3372-18813).</sch:assert>
      <sch:assert id="a-3372-18815-error" test="count(hqmf:component[count(hqmf:dataCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.6' and @extension='2018-05-01']])=1])=1">SHALL contain exactly one [1..1] component (CONF:3372-18815) such that it SHALL contain exactly one [1..1] Data Criteria Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.28.2.6:2018-05-01) (CONF:3372-18833).</sch:assert>
      <sch:assert id="a-3372-19057-error" test="count(hqmf:component[count(hqmf:populationCriteriaSection[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.2.7' and @extension='2017-08-01']])=1]) &gt; 0">SHALL contain at least one [1..*] component (CONF:3372-19057) such that it SHALL contain exactly one [1..1] Population Criteria Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.28.2.7:2017-08-01) (CONF:3372-19058).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-typeId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:typeId">
      <sch:assert id="a-3372-18787-error" test="@root='2.16.840.1.113883.1.3'">This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:3372-18787).</sch:assert>
      <sch:assert id="a-3372-18788-error" test="@extension='POQM_HD000001UV02'">This typeId SHALL contain exactly one [1..1] @extension="POQM_HD000001UV02" (CONF:3372-18788).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-templateId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:templateId">
      <sch:assert id="a-3372-18772-error-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-18772) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.1.2" (CONF:3372-18773). SHALL contain zero or one [0..1] @extension="2018-05-01" (CONF:3372-33755).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-18576-error" test="@code='57024-2'">This code SHALL contain exactly one [1..1] @code="57024-2" Health Quality Measure Document (CONF:3372-18576).</sch:assert>
      <sch:assert id="a-3372-33757-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3372-33757).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-statusCode-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32666-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32666).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-author-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:author">
      <sch:assert id="a-3372-18564-error" test="count(hqmf:responsibleParty)=1">The author, if present, SHALL contain exactly one [1..1] responsibleParty (CONF:3372-18564).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-author-responsibleParty-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:author/hqmf:responsibleParty">
      <sch:assert id="a-3372-18565-error" test="count(hqmf:representedResponsibleOrganization)=1">This responsibleParty SHALL contain exactly one [1..1] representedResponsibleOrganization (CONF:3372-18565).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-author-responsibleParty-representedResponsibleOrganization-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:author/hqmf:responsibleParty/hqmf:representedResponsibleOrganization">
      <sch:assert id="a-3372-18566-error" test="count(hqmf:id)=1">This representedResponsibleOrganization SHALL contain exactly one [1..1] id (CONF:3372-18566).</sch:assert>
      <sch:assert id="a-3372-18568-error" test="count(hqmf:name)=1">This representedResponsibleOrganization SHALL contain exactly one [1..1] name (CONF:3372-18568).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-author-responsibleParty-representedResponsibleOrganization-id-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:author/hqmf:responsibleParty/hqmf:representedResponsibleOrganization/hqmf:id">
      <sch:assert id="a-3372-18567-error" test="count(hqmf:item)=1">This id SHALL contain exactly one [1..1] item (CONF:3372-18567).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-custodian-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:custodian">
      <sch:assert id="a-3372-18556-error" test="count(hqmf:responsibleParty)=1">This custodian SHALL contain exactly one [1..1] responsibleParty (CONF:3372-18556).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-custodian-responsibleParty-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:custodian/hqmf:responsibleParty">
      <sch:assert id="a-3372-29933-error" test="@classCode='ASSIGNED'">This responsibleParty SHALL contain exactly one [1..1] @classCode="ASSIGNED" (CONF:3372-29933).</sch:assert>
      <sch:assert id="a-3372-18557-error" test="count(hqmf:representedResponsibleOrganization)=1">This responsibleParty SHALL contain exactly one [1..1] representedResponsibleOrganization (CONF:3372-18557).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-custodian-responsibleParty-representedResponsibleOrganization-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:custodian/hqmf:responsibleParty/hqmf:representedResponsibleOrganization">
      <sch:assert id="a-3372-18558-error" test="count(hqmf:id)=1">This representedResponsibleOrganization SHALL contain exactly one [1..1] id (CONF:3372-18558).</sch:assert>
      <sch:assert id="a-3372-18560-error" test="count(hqmf:name)=1">This representedResponsibleOrganization SHALL contain exactly one [1..1] name (CONF:3372-18560).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-custodian-responsibleParty-representedResponsibleOrganization-id-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:custodian/hqmf:responsibleParty/hqmf:representedResponsibleOrganization/hqmf:id">
      <sch:assert id="a-3372-18559-error" test="count(hqmf:item)=1">This id SHALL contain exactly one [1..1] item (CONF:3372-18559).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-verifier-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:verifier">
      <sch:assert id="a-3372-18755-error" test="count(hqmf:responsibleParty)=1">The verifier, if present, SHALL contain exactly one [1..1] responsibleParty (CONF:3372-18755).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-verifier-responsibleParty-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:verifier/hqmf:responsibleParty">
      <sch:assert id="a-3372-18756-error" test="count(hqmf:representedResponsibleOrganization)=1">This responsibleParty SHALL contain exactly one [1..1] representedResponsibleOrganization (CONF:3372-18756).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-verifier-responsibleParty-representedResponsibleOrganization-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:verifier/hqmf:responsibleParty/hqmf:representedResponsibleOrganization">
      <sch:assert id="a-3372-18757-error" test="count(hqmf:id)=1">This representedResponsibleOrganization SHALL contain exactly one [1..1] id (CONF:3372-18757).</sch:assert>
      <sch:assert id="a-3372-18759-error" test="count(hqmf:name)=1">This representedResponsibleOrganization SHALL contain exactly one [1..1] name (CONF:3372-18759).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-verifier-responsibleParty-representedResponsibleOrganization-id-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:verifier/hqmf:responsibleParty/hqmf:representedResponsibleOrganization/hqmf:id">
      <sch:assert id="a-3372-18758-error" test="count(hqmf:item)=1">This id SHALL contain exactly one [1..1] item (CONF:3372-18758).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-expressionDocument-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument/hqmf:expressionDocument">
      <sch:assert id="a-3372-34629-error" test="count(hqmf:text)=1">This expressionDocument SHALL contain exactly one [1..1] text (CONF:3372-34629).</sch:assert>
      <sch:assert id="a-3372-34882-error" test="count(hqmf:setId)=1">This expressionDocument SHALL contain exactly one [1..1] setId (CONF:3372-34882).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-expressionDocument-text-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument/hqmf:expressionDocument/hqmf:text">
      <sch:assert id="a-3372-34631-error" test="lower-case(normalize-space(@mediaType))='text/cql'">This text SHALL contain exactly one [1..1] @mediaType="text/cql" (CONF:3372-34631).</sch:assert>
      <sch:assert id="a-3372-34630-error" test="count(hqmf:reference)=1">This text SHALL contain exactly one [1..1] reference (CONF:3372-34630).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-expressionDocument-text-reference-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument/hqmf:expressionDocument/hqmf:text/hqmf:reference">
      <sch:assert id="a-3372-34632-error" test="@value">This reference SHALL contain exactly one [1..1] @value (CONF:3372-34632).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-expressionDocument-setId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument/hqmf:expressionDocument/hqmf:setId">
      <sch:assert id="a-3372-34883-error" test="@root">This setId SHALL contain exactly one [1..1] @root (CONF:3372-34883).</sch:assert>
      <sch:assert id="a-3372-34884-error" test="@extension">This setId SHALL contain exactly one [1..1] @extension (CONF:3372-34884).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-XCRPT-componentQualityMeasureDocument-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument[@typeCode='XCRPT']/hqmf:componentQualityMeasureDocument">
      <sch:assert id="a-3372-34900-error" test="count(hqmf:id)=1">This componentQualityMeasureDocument SHALL contain exactly one [1..1] id (CONF:3372-34900).</sch:assert>
      <sch:assert id="a-3372-34906-error" test="count(hqmf:setId) = 0 or (count(hqmf:setId) &gt; 0 and count(hqmf:versionNumber[@value]) = 1)">VersionNumber SHALL be present if the setId element is present and if present, it SHALL have a value attribute that is the versionNumber of the component eCQM (CONF:3372-34906).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-XCRPT-componentQualityMeasureDocument-id-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument[@typeCode='XCRPT']/hqmf:componentQualityMeasureDocument/hqmf:id">
      <sch:assert id="a-3372-34903-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3372-34903).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-XCRPT-componentQualityMeasureDocument-setId-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument[@typeCode='XCRPT']/hqmf:componentQualityMeasureDocument/hqmf:setId">
      <sch:assert id="a-3372-34907-error" test="@root">The setId, if present, SHALL contain exactly one [1..1] @root (CONF:3372-34907).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-controlVariable-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:controlVariable">
      <sch:assert id="a-3372-18546-error" test="count(hqmf:measurePeriod)=1">This controlVariable SHALL contain exactly one [1..1] measurePeriod (CONF:3372-18546).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-controlVariable-measurePeriod-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:controlVariable/hqmf:measurePeriod">
      <sch:assert id="a-3372-18547-error" test="count(hqmf:code)=1">This measurePeriod SHALL contain exactly one [1..1] code (CONF:3372-18547).</sch:assert>
      <sch:assert id="a-3372-18550-error" test="count(hqmf:value)=1">This measurePeriod SHALL contain exactly one [1..1] value (CONF:3372-18550).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-controlVariable-measurePeriod-code-errors" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:controlVariable/hqmf:measurePeriod/hqmf:code">
      <sch:assert id="a-3372-18548-error" test="@code='MSRTP'">This code SHALL contain exactly one [1..1] @code="MSRTP" Measurement Period (CONF:3372-18548).</sch:assert>
      <sch:assert id="a-3372-30056-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30056).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Reason-errors">
    <sch:rule id="r-Reason-29897-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' ]]/hqmf:templateId">
      <sch:assert id="a-3335-29898-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' and @extension='2017-05-01'])=1">This templateId	SHALL contain exactly one [1..1] item (CONF:3335-29898) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.88" (CONF:3335-29899) This item SHALL contain exactly one [1..1] @extension="2017-05-01" (CONF:3335-33686).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Reason-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-29895-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3335-29895).</sch:assert>
      <sch:assert id="a-3335-29896-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3335-29896).</sch:assert>
      <sch:assert id="a-3335-29897-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3335-29897).</sch:assert>
      <sch:assert id="a-3335-29901-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3335-29901).</sch:assert>
      <sch:assert id="a-3335-29904-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3335-29904).</sch:assert>
      <sch:assert id="a-3335-33173-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3335-33173).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Related-To-errors">
    <sch:rule id="r-Related-To-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34718-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34718) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.127" (CONF:3346-34721) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34722).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Related-To-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34725-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-34725).</sch:assert>
      <sch:assert id="a-3346-34726-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CONF:3346-34726).</sch:assert>
      <sch:assert id="a-3346-34717-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34717).</sch:assert>
      <sch:assert id="a-3346-34727-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34727).</sch:assert>
      <sch:assert id="a-3346-34729-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34729).</sch:assert>
      <sch:assert id="a-3346-34719-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34719).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Related-To-id-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01']]/hqmf:id">
      <sch:assert id="a-3346-34730-error" test="@root">This id SHALL contain exactly one [1..1] @root (CONF:3346-34730).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Related-To-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.127' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34723-error" test="@code='42752001'">This code SHALL contain exactly one [1..1] @code="42752001" Due to (CONF:3346-34723).</sch:assert>
      <sch:assert id="a-3346-34724-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34724).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Result-errors">
    <sch:rule id="r-Result-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' ]]/hqmf:templateId">
      <sch:assert id="a-3346-32189-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01'])=1">This templateId  SHALL contain exactly one [1..1] item (CONF:3346-32189). such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.101" (CONF:3346-32190) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34653).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Result-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-32186-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-32186).</sch:assert>
      <sch:assert id="a-3346-32187-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-32187).</sch:assert>
      <sch:assert id="a-3346-32188-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-32188).</sch:assert>
      <sch:assert id="a-3346-32192-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-32192).</sch:assert>
      <sch:assert id="a-3346-32195-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-32195).</sch:assert>
      <sch:assert id="a-3346-32196-error" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3346-32196).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Result-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-32193-error" test="@code='394617004'">This code SHALL contain exactly one [1..1] @code="394617004" Result (CONF:3346-32193).</sch:assert>
      <sch:assert id="a-3346-32194-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-32194).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Result-effectiveTime-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.101' and @extension='2017-08-01']]/hqmf:effectiveTime">
      <sch:assert id="a-3346-34762-error" test="count(hqmf:low)=1">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:3346-34762).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Severity-Observation-errors">
    <sch:rule id="r-Severity-Observation-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' ]]/hqmf:templateId">
      <sch:assert id="a-3346-30132-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30132) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.93" (CONF:3346-30133) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33691).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Severity-Observation-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30129-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30129).</sch:assert>
      <sch:assert id="a-3346-30130-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-30130).</sch:assert>
      <sch:assert id="a-3346-30131-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30131).</sch:assert>
      <sch:assert id="a-3346-30135-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30135).</sch:assert>
      <sch:assert id="a-3346-30138-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-30138).</sch:assert>
      <sch:assert id="a-3346-30140-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30140).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Severity-Observation-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30136-error" test="@code='SEV'">This code SHALL contain exactly one [1..1] @code="SEV" Severity Observation (CONF:3346-30136).</sch:assert>
      <sch:assert id="a-3346-30137-error" test="@codeSystem='2.16.840.1.113883.5.4'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3346-30137).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Status-errors">
    <sch:rule id="r-Status-30153-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94']]/hqmf:templateId">
      <sch:assert id="a-3346-30155-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-30155). such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.94" (CONF:3346-30156) 	This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-33690).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Status-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-30151-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-30151).</sch:assert>
      <sch:assert id="a-3346-30152-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-30152).</sch:assert>
      <sch:assert id="a-3346-30153-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-30153).</sch:assert>
      <sch:assert id="a-3346-30158-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-30158).</sch:assert>
      <sch:assert id="a-3346-30162-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-30162).</sch:assert>
      <sch:assert id="a-3346-30161-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-30161).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Status-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30159-error" test="@code='33999-4'">This code SHALL contain exactly one [1..1] @code="33999-4" Status (CONF:3346-30159).</sch:assert>
      <sch:assert id="a-3346-30160-error" test="@codeSystem">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:3346-30160).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Substance-Administered-errors">
    <sch:rule id="r-Substance-Administered-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' ]]/hqmf:templateId">
      <sch:assert id="a-3372-32882-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32882) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.73" (CONF:3372-32883) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33393).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32878-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32878).</sch:assert>
      <sch:assert id="a-3372-32879-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32879).</sch:assert>
      <sch:assert id="a-3372-32881-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32881).</sch:assert>
      <sch:assert id="a-3372-32885-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3372-32885).</sch:assert>
      <sch:assert id="a-3372-32888-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32888).</sch:assert>
      <sch:assert id="a-3372-32884-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32884).</sch:assert>
      <sch:assert id="a-3372-32887-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32887).</sch:assert>
      <sch:assert id="a-3372-32897-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32897) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32898) SHALL contain exactly one [1..1] role (CONF:3372-32899).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-code-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-33177-error" test="@code='416118004'">This code SHALL contain exactly one [1..1] @code="416118004" Administration (CONF:3372-33177).</sch:assert>
      <sch:assert id="a-3372-33178-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96 " (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3372-33178).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32889-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32889).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32900-error" test="@classCode='ADMM'">This role SHALL contain exactly one [1..1] @classCode="ADMM" Administerable Material (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32900).</sch:assert>
      <sch:assert id="a-3372-32901-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-32901).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-32904-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-32904).</sch:assert>
      <sch:assert id="a-3372-32902-error" test="@classCode='MAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MAT" Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32902).</sch:assert>
      <sch:assert id="a-3372-32903-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32903).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:time">
      <sch:assert id="a-3372-34567-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34567).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)=1]/hqmf:role">
      <sch:assert id="a-3372-34568-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34568).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Substance-Order-errors">
    <sch:rule id="r-Substance-Order-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' ]]/hqmf:templateId">
      <sch:assert id="a-3372-32627-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32627). such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.77" (CONF:3372-32628) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33652).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32623-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32623).</sch:assert>
      <sch:assert id="a-3372-32624-error" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32624).</sch:assert>
      <sch:assert id="a-3372-32626-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32626).</sch:assert>
      <sch:assert id="a-3372-32633-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32633).</sch:assert>
      <sch:assert id="a-3372-32629-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32629).</sch:assert>
      <sch:assert id="a-3372-32632-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32632).</sch:assert>
      <sch:assert id="a-3372-32642-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32642) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32643) SHALL contain exactly one [1..1] role (CONF:3372-32644)</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32634-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32634).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32645-error" test="@classCode='ADMM'">This role SHALL contain exactly one [1..1] @classCode="ADMM" Administerable Material (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32645).</sch:assert>
      <sch:assert id="a-3372-32646-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-32646).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-32649-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-32649).</sch:assert>
      <sch:assert id="a-3372-32647-error" test="@classCode='MAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MAT" Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32647).</sch:assert>
      <sch:assert id="a-3372-32648-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32648).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Substance-Recommended-errors">
    <sch:rule id="r-Substance-Recommended-templateId-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' ]]/hqmf:templateId">
      <sch:assert id="a-3372-32125-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3372-32125) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.78" (CONF:3372-32126) This item SHALL contain exactly one [1..1] @extension="2018-05-01" (CONF:3372-33693).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-32063-error" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" Substance Administration (CONF:3372-32063).</sch:assert>
      <sch:assert id="a-3372-32064-error" test="@moodCode='INT'">SHALL contain exactly one [1..1] @moodCode="INT" Intent (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3372-32064).</sch:assert>
      <sch:assert id="a-3372-32066-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3372-32066).</sch:assert>
      <sch:assert id="a-3372-32070-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3372-32070).</sch:assert>
      <sch:assert id="a-3372-32067-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3372-32067).</sch:assert>
      <sch:assert id="a-3372-32069-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3372-32069).</sch:assert>
      <sch:assert id="a-3372-32103-error" test="count(hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1])=1">SHALL contain exactly one [1..1] participation (CONF:3372-32103) such that it SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:3372-32104) SHALL contain exactly one [1..1] role (CONF:3372-32105).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-statusCode-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:statusCode">
      <sch:assert id="a-3372-32071-error" test="lower-case(normalize-space(@code))='active'">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3372-32071).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-CSM-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role">
      <sch:assert id="a-3372-32106-error" test="@classCode='ADMM'">This role SHALL contain exactly one [1..1] @classCode="ADMM" Administerable Material (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-32106).</sch:assert>
      <sch:assert id="a-3372-32107-error" test="count(hqmf:playingMaterial)=1">This role SHALL contain exactly one [1..1] playingMaterial (CONF:3372-32107).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-CSM-role-playingMaterial-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial">
      <sch:assert id="a-3372-32110-error" test="count(hqmf:code)=1">This playingMaterial SHALL contain exactly one [1..1] code (CONF:3372-32110).</sch:assert>
      <sch:assert id="a-3372-32108-error" test="@classCode='MAT'">This playingMaterial SHALL contain exactly one [1..1] @classCode="MAT" Manufactured Material (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41) (CONF:3372-32108).</sch:assert>
      <sch:assert id="a-3372-32109-error" test="@determinerCode='KIND'">This playingMaterial SHALL contain exactly one [1..1] @determinerCode="KIND" Kind (CodeSystem: HL7EntityDeterminer urn:oid:2.16.840.1.113883.5.30) (CONF:3372-32109).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-AUT-time-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)]/hqmf:time">
      <sch:assert id="a-3372-34477-error" test="count(hqmf:low)=1">This time SHALL contain exactly one [1..1] low (CONF:3372-34477).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-AUT-role-errors" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:role)=1][count(hqmf:time)]/hqmf:role">
      <sch:assert id="a-3372-34478-error" test="@classCode='ROL'">This role SHALL contain exactly one [1..1] @classCode="ROL" Role (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:3372-34478).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Supply-errors">
    <sch:rule id="r-Supply-templateId-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.129' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34772" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.129' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34772) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.129" (CONF:3346-34783) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34784).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Supply-errors" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.129' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34795" test="@classCode='SPLY'">SHALL contain exactly one [1..1] @classCode="SPLY" Supply (CONF:3346-34795).</sch:assert>
      <sch:assert id="a-3346-34796" test="@moodCode='RQO'">SHALL contain exactly one [1..1] @moodCode="RQO" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34796).</sch:assert>
      <sch:assert id="a-3346-34771" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34771).</sch:assert>
      <sch:assert id="a-3346-34797" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34797).</sch:assert>
      <sch:assert id="a-3346-34798" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34798).</sch:assert>
      <sch:assert id="a-3346-34800" test="count(hqmf:quantity)=1">SHALL contain exactly one [1..1] quantity (CONF:3346-34800).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Symptom-errors">
    <sch:rule id="r-Symptom-34079-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' ]]/hqmf:templateId">
      <sch:assert id="a-3346-34080-error" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-34080) such that this item SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.116" (CONF:3346-34093) This item SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-34480).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Symptom-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-34108-error" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-34108).</sch:assert>
      <sch:assert id="a-3346-34109-error" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:3346-34109).</sch:assert>
      <sch:assert id="a-3346-34079-error" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-34079).</sch:assert>
      <sch:assert id="a-3346-34081-error" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-34081).</sch:assert>
      <sch:assert id="a-3346-34082-error" test="count(hqmf:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:3346-34082).</sch:assert>
      <sch:assert id="a-3346-34088-error" test="count(hqmf:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3346-34088).</sch:assert>
      <sch:assert id="a-3346-34111-error" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-34111).</sch:assert>
      <sch:assert id="a-3346-34112-error" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-34112).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Symptom-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34095-error" test="@code='418799008'">This code SHALL contain exactly one [1..1] @code="418799008" Symptom (CONF:3346-34095).</sch:assert>
      <sch:assert id="a-3346-34096-error" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-34096).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Symptom-statusCode-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]/hqmf:statusCode">
      <sch:assert id="a-3346-34097-error" test="lower-case(normalize-space(@code))='completed'">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:3346-34097).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Target-Outcome-errors">
    <sch:rule id="r-Target-Outcome-templateId-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' ]]/hqmf:templateId">
      <sch:assert id="a-3346-29105" test="count(hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' and @extension='2017-08-01'])=1">This templateId SHALL contain exactly one [1..1] item (CONF:3346-29105) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.28.4.128" (CONF:3346-29108) SHALL contain exactly one [1..1] @extension="2017-08-01" (CONF:3346-29109).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Target-Outcome-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' and @extension='2017-08-01']]">
      <sch:assert id="a-3346-29112" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CONF:3346-29112).</sch:assert>
      <sch:assert id="a-3346-29113" test="@moodCode='GOL'">SHALL contain exactly one [1..1] @moodCode="GOL" Goal (CONF:3346-29113).</sch:assert>
      <sch:assert id="a-3346-29104" test="count(hqmf:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:3346-29104).</sch:assert>
      <sch:assert id="a-3346-29106" test="count(hqmf:code)=1">SHALL contain exactly one [1..1] code (CONF:3346-29106).</sch:assert>
      <sch:assert id="a-3346-29114" test="count(hqmf:id)=1">SHALL contain exactly one [1..1] id (CONF:3346-29114).</sch:assert>
      <sch:assert id="a-3346-29116" test="count(hqmf:title)=1">SHALL contain exactly one [1..1] title (CONF:3346-29116).</sch:assert>
      <sch:assert id="a-3346-29107" test="count(hqmf:value)=1">SHALL contain exactly one [1..1] value (CONF:3346-29107).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Target-Outcome-code-errors" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.128' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-29110" test="@code='385676005'">This code SHALL contain exactly one [1..1] @code="385676005" Outcome of action (CONF:3346-29110).</sch:assert>
      <sch:assert id="a-3346-29111" test="@codeSystem='2.16.840.1.113883.6.96'">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:3346-29111).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-vol-I-pattern-errors">
    <sch:rule id="r-vol-I-relatedDocument-errors" context="hqmf:QualityMeasureDocument/hqmf:relatedDocument[@typeCode='COMP']">
      <sch:assert id="a-vol-I-001-relatedDocument-error" test="count(hqmf:expressionDocument)=1">Measures utilizing CQL libraries SHALL include exactly 1 expressionDocument element per CQL library refenced in the HQMF</sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-relatedDocument-expressionDocument-errors" context="hqmf:QualityMeasureDocument/hqmf:relatedDocument[@typeCode='COMP']/hqmf:expressionDocument">
      <sch:assert id="a-vol-I-002-expressionDocument-error" test="count(hqmf:text[@mediaType='text/cql'][count(hqmf:reference) &gt;=1])=1">The expressionDocument element SHALL contain a child text element that SHALL have a mediaType attribute value of text/cql and SHALL include a child reference element whose value contains a URI (relative or absolute) that identifies the CQL expression document.</sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-definition-valueSet-errors" context="hqmf:definition/hqmf:valueSet">
      <sch:assert id="a-vol-I-004-valueSet-error" test="count(hqmf:id[@root]) = 1 and count(hqmf:title[@value])=1">If definition/valueset is present, it SHALL contain both valueset.id@root and valueset.title@value.</sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-definition-cqlCode-errors" context="hqmf:definition/cql-ext:code">
      <sch:assert id="a-vol-I-004-cqlCode-error" test="@codeSystemName and count(hqmf:displayName[@value])=1">If defitnion/cql:code is present, it SHALL contain both cql:code@codeSystemName and cql:code.displayName@value)</sch:assert>
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
      <sch:assert id="a-vol-I-008-populationCriteriaSection-criteriaReference-error" test="count(hqmf:id)=1 ">All HQMF populationCriteriaSection components	SHALL reference exactly one CQL expression.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--
      WARNING Patterns and Assertions
  -->
  <sch:pattern id="p-Admission-Source-warnings">
    <sch:rule id="r-Admission-Source-code-warnings" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.123' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-34346-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34346).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Adverse-Event-warnings">
    <sch:rule id="r-Adverse-Event-participation-role-playingEntity-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:participation[@typeCode='CSM']/hqmf:role/hqmf:playingEntity/hqmf:code">
      <sch:assert id="a-3346-34203-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34203).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Adverse-Event-outboundRelationship-observationCriteria-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.120'][@extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR']/hqmf:observationCriteria/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34691-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34691).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Allergy-Intolerance-warnings">
    <sch:rule id="r-Allergy-Intolerance-participation-role-playingEntity-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity/hqmf:code">
      <sch:assert id="a-3346-34236-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34236).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Allergy-Intolerance-outboundRelationship-observationCriteria-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.119' and @extension='2017-08-01']]/hqmf:outboundRelationship[@typeCode='REFR'][count(hqmf:observationCriteria)=1]/hqmf:observationCriteria/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34701-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34701).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Assessment-Order-warnings">
    <sch:rule id="r-Assessment-Order-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.131' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-34137-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-34666).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Assessment-Performed-warnings">
    <sch:rule id="r-Assessment-Performed-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34136-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34136).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-methodCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-34247-warning" test="count(hqmf:item)=1">The methodCode, if present, SHOULD contain zero or one [0..1] item (CONF:3346-34247).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Assessment-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.117' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3346-34249-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34249).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Assessment-Recommended-warnings">
    <sch:rule id="r-Assessment-Recommended-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.118' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-34159-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-34159).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Care-Goal-warnings">
    <sch:rule id="r-Care-Goal-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.7' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-32483-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-32483).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Cause-warnings">
    <sch:rule id="r-Cause-valuewarnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.105' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-34663-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34663).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Communication-Performed-warnings">
    <sch:rule id="r-Communication-Performed-code-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.132' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-34705-warning" test="@valueSet">The code, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-34705).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Device-Applied-warnings">
    <sch:rule id="r-Device-Applied-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33061-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33061).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Device-Applied-participation-DEV-role-playingDevice-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.13' and @extension='2018-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice/hqmf:code">
      <sch:assert id="a-3372-31323-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31323).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Device-Order-warnings">
    <sch:rule id="r-Device-Order-participation-DEV-role-playingDevice-code-warnings" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.15' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice/hqmf:code">
      <sch:assert id="a-3335-29855-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-29855).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Device-Recommended-warnings">
    <sch:rule id="r-Device-Recommended-participation-DEV-role-playingDevice-code-warnings" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.16' and @extension='2017-05-01']]/hqmf:participation[@typeCode='DEV'][count(hqmf:role)=1]/hqmf:role/hqmf:playingDevice/hqmf:code">
      <sch:assert id="a-3335-31729-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-31729).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnosis-warnings">
    <sch:rule id="r-Diagnosis-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-33784-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33784).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnosis-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.110' and @extension='2017-08-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3346-33788-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33788).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnostic-Study-Order-warnings">
    <sch:rule id="r-Diagnostic-Study-Order-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.22' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30126-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30126).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnostic-Study-Performed-warnings">
    <sch:rule id="r-Diagnostic-Study-Performed-methodCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:methodCode">
      <sch:assert id="a-3346-30791-warning" test="count(hqmf:item)=1">The methodCode, if present, SHOULD contain zero or one [0..1] item (CONF:3346-30791).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3346-30917-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30917).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Diagnostic-Study-Performed-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.23' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30783-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30783).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Diagnostic-Study-Recommended-warnings">
    <sch:rule id="r-Diagnostic-Study-Recommended-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.24' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30580-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30580).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Encounter-Order-warnings">
    <sch:rule id="r-Encounter-Order-code-warnings" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.27' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30868-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30868).</sch:assert>
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
  <sch:pattern id="p-Encounter-Recommended-warnings">
    <sch:rule id="r-Encounter-Recommended-warnings" context="hqmf:encounterCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.28' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30856-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30856).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Facility-Location-warnings">
    <sch:rule id="r-Facility-Location-warnings" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.92' and @extension='2017-05-01']]">
      <sch:assert id="a-3335-30900-warning" test="count(hqmf:code)=1">SHOULD contain zero or one [0..1] code (CONF:3335-30900).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Facility-Location-code-warnings" context="hqmf:role[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.92' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30901-warning" test="@valueSet">The code, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30901).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Family-History-warnings">
    <sch:rule id="r-Family-History-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-33805-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-33805).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Family-History-role-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.111' and @extension='2017-05-01']]/hqmf:participation[@typeCode='AUT'][count(hqmf:time)=1][count(hqmf:role)=1]/hqmf:role/hqmf:code">
      <sch:assert id="a-3335-33821-warning-error" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-33821).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Immunization-Administered-warnings">
    <sch:rule id="r-Immunization-Administered-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-33850-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33850).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Administered-participation-CSM-role-playingManufacturedMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.112' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial/hqmf:code">
      <sch:assert id="a-3372-33858-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33858).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Immunization-Order-warnings">
    <sch:rule id="r-Immunization-Order-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]/hqmf:routeCode">
      <sch:assert id="a-3346-34019-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34019).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Immunization-Order-participation-CSM-role-playingManufacturedMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.113' and @extension='2017-08-01']]//hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial/hqmf:code">
      <sch:assert id="a-3346-34021-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34021).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Intervention-Order-warnings">
    <sch:rule id="r-Intervention-Order-code-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.35' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30653-error" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30653).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Intervention-Performed-warnings">
    <sch:rule id="r-Intervention-Performed-code-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.36' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-31158-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31158).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Intervention-Recommended-warnings">
    <sch:rule id="r-Intervention-Recommended-warnings" context="hqmf:actCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.37' and @extension='2017-05-01']]/hqmf:code">
      <sch:assert id="a-3335-30809-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3335-30809).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Order-warnings">
    <sch:rule id="r-Laboratory-Test-Order-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.41' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30397-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30397).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Performed-warnings">
    <sch:rule id="r-Laboratory-Test-Performed-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-30371-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30371).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Laboratory-Test-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.42' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3346-30379-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3346-30379).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Laboratory-Test-Recommended-warnings">
    <sch:rule id="r-Laboratory-Test-Recommended-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.43' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-30422-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30422).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Active-warnings">
    <sch:rule id="r-Medication-Active-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.44' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3346-33116-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-33116).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Administered-warnings">
    <sch:rule id="r-Medication-Administered-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-32507-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32507).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Administered-participation-CSM-role-playingManufacturedMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.45' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial/hqmf:code">
      <sch:assert id="a-3372-32502-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32502).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Discharge-warnings">
    <sch:rule id="r-Medication-Discharge-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:routeCode">
      <sch:assert id="a-3346-32538-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-32538).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Discharge-participation-CSM-role-playingManufacturedMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.48' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingManufacturedMaterial/hqmf:code">
      <sch:assert id="a-3346-32547-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-32547).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Dispensed-warnings">
    <sch:rule id="r-Medication-Dispensed-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:supplyCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.49' and @extension='2017-08-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3346-3258-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-32581).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Medication-Order-warnings">
    <sch:rule id="r-Medication-Order-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-30231-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30231).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Medication-Order-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.51' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-30164-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-30164).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Care-Experience-warnings">
    <sch:rule id="r-Patient-Care-Experience-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.52' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-32215-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-32215).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Clinical-Trial-Participant-warnings">
    <sch:rule id="r-Patient-Characteristic-Clinical-Trial-Participant-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.6' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31739-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-31739).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Ethnicity-warnings">
    <sch:rule id="r-Patient-Characteristic-Ethnicity-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.56' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31182-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-31182).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Payer-warnings">
    <sch:rule id="r-Patient-Characteristic-Payer-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.58' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31640-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-31640).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Race-warnings">
    <sch:rule id="r-Patient-Characteristic-Race-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.59' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31249-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-31249).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-Sex-warnings">
    <sch:rule id="r-Patient-Characteristic-Sex-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.55' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-31294-warning" test="@valueSet">This value SHOULD contain exactly one [1..1] @valueSet (CONF:3335-31294).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Patient-Characteristic-warnings">
    <sch:rule id="r-Patient-Characteristic-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.53' and @extension='2017-08-01']]/hqmf:code">
      <sch:assert id="a-3346-34454-error" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34454).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Physical-Exam-Order-warnings">
    <sch:rule id="r-Physical-Exam-Order-targetSiteCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-31423-warning" test="count(hqmf:item)=1">The targetSiteCode, if present, SHOULD contain zero or one [0..1] item (CONF:3372-31423).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-31424-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31424).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Order-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.61' and @extension='2018-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3372-31438-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31438).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Physical-Exam-Performed-warnings">
    <sch:rule id="r-Physical-Exam-Performed-targetSiteCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3346-31271-warning" test="count(hqmf:item)=1">The targetSiteCode, if present, SHOULD contain zero or one [0..1] item (CONF:3346-31271).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3346-31272-warnnig" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31272).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-methodCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3346-31269-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31269).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Performed-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.62' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-31442-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-31442).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Physical-Exam-Recommended-warnings">
    <sch:rule id="r-Physical-Exam-Recommended-targetSiteCode-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:targetSiteCode">
      <sch:assert id="a-3372-31465-warning" test="count(hqmf:item)=1">The targetSiteCode, if present, SHOULD contain zero or one [0..1] item (CONF:3372-31465).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-targetSiteCode-item-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-31466-warning" test="@valueSet">The item, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31466).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Physical-Exam-Recommended-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.63' and @extension='2018-05-01']]/hqmf:value">
      <sch:assert id="a-3372-31460-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31460).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Principal-Diagnosis-warnings">
    <sch:rule id="r-Principal-Diagnosis-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.122' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-34365-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34365).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Procedure-Order-warnings">
    <sch:rule id="r-Procedure-Order-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31127-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31127).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-priorityCode-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:priorityCode">
      <sch:assert id="a-3372-31134-warning" test="count(hqmf:item)=1">The priorityCode, if present, SHOULD contain zero or one [0..1] item (CONF:3372-31134).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Order-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.66' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33424-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33424).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Procedure-Performed-warnings">
    <sch:rule id="r-Procedure-Performed-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31343-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31343).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-priorityCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:priorityCode/hqmf:item">
      <sch:assert id="a-3372-33151-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33151).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-methodCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:methodCode/hqmf:item">
      <sch:assert id="a-3372-31353-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31353).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Performed-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.67' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33404-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33404).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Procedure-Recommended-warnings">
    <sch:rule id="r-Procedure-Recommended-code-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:code">
      <sch:assert id="a-3372-31216-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-31216).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-priorityCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:priorityCode/hqmf:item">
      <sch:assert id="a-3372-33156-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33156).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Procedure-Recommended-targetSiteCode-item-warnings" context="hqmf:procedureCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.68' and @extension='2018-05-01']]/hqmf:targetSiteCode/hqmf:item">
      <sch:assert id="a-3372-33416-warning" test="@valueSet">This item SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33416).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Program-Participation-warnings">
    <sch:rule id="r-Program-Participation-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.130' and @extension='2018-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3372-34836-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3372-34836).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Provider-Care-Experience-warnings">
    <sch:rule id="r-Provider-Care-Experience-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.70' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-32231-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-32231).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Provider-Characteristic-warnings">
    <sch:rule id="r-Provider-Characteristic-participation-DRIV-role-playingEntity-code-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.71' and @extension='2017-08-01']]/hqmf:participation[@typeCode='PRF'][count(hqmf:role)=1]/hqmf:role/hqmf:playingEntity/hqmf:code">
      <sch:assert id="a-3346-34841-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34841).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-CQL-Based-HQMF-Header-warnings">
    <sch:rule id="r-CQL-Based-HQMF-Header-warnings" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2' and @extension='2018-05-01']]">
      <sch:assert id="a-3372-18578-warning" test="count(hqmf:text)=1">SHOULD contain zero or one [0..1] text (CONF:3372-18578).</sch:assert>
      <sch:assert id="a-3372-18544-warning" test="count(hqmf:versionNumber)=1">SHOULD contain zero or one [0..1] versionNumber (CONF:3372-18544).</sch:assert>
      <sch:assert id="a-3372-18563-warning" test="count(hqmf:author) &gt; 0">SHOULD contain zero or more [0..*] author (CONF:3372-18563).</sch:assert>
      <sch:assert id="a-3372-18754-warning" test="count(hqmf:verifier)=1">SHOULD contain zero or one [0..1] verifier (CONF:3372-18754).</sch:assert>
      <sch:assert id="a-3372-18603-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='COPY'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18603) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18604). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18605). This code SHALL contain exactly one [1..1] @code="COPY" Copyright (CONF:3372-29941). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30060). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18609).</sch:assert>
      <sch:assert id="a-3372-18610-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='CRS'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18610) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18611). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18612). This code SHALL contain exactly one [1..1] @code="CRS" Clinical Recommendation Statement (CONF:3372-18613). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30061). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29942).</sch:assert>
      <sch:assert id="a-3372-18617-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='GUIDE'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18617) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18618). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18619). This code SHALL contain exactly one [1..1] @code="GUIDE" Guide (CONF:3372-18620). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30062). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29943).</sch:assert>
      <sch:assert id="a-3372-18624-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='DEF'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18624) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18625). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18626). This code SHALL contain exactly one [1..1] @code="DEF" Definition (CONF:3372-18627). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30063). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18690).</sch:assert>
      <sch:assert id="a-3372-18630-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='IDUR'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18630) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18631). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18632). This code SHALL contain exactly one [1..1] @code="IDUR" Improvement Notation (CONF:3372-18633). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30064). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18636).</sch:assert>
      <sch:assert id="a-3372-18637-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='KEY'][@codeSystem])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18637) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18638). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18639). This code SHALL contain exactly one [1..1] @code="KEY" Keyword (CONF:3372-18640). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30065).</sch:assert>
      <sch:assert id="a-3372-18644-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRAGG'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18644) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18645). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18646). This code SHALL contain exactly one [1..1] @code="MSRAGG" Rate Aggregation (CONF:3372-18647). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30066). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18649).</sch:assert>
      <sch:assert id="a-3372-18650-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRADJ'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18650) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18651). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18652). This code SHALL contain exactly one [1..1] @code="MSRADJ" Risk Adjustment (CONF:3372-18653). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30067). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18656).</sch:assert>
      <sch:assert id="a-3372-18657-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='RAT'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18657) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18658). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18659). This code SHALL contain exactly one [1..1] @code="RAT" Rationale (CONF:3372-18663). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30068). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18662).</sch:assert>
      <sch:assert id="a-3372-18664-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='REF'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1]) &gt; 0">SHOULD contain zero or more [0..*] subjectOf (CONF:3372-18664) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18665). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18666). This code SHALL contain exactly one [1..1] @code="REF" Reference (CONF:3372-18667). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30069). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18668).</sch:assert>
      <sch:assert id="a-3372-18669-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRSET'][@codeSystem])=1][count(hqmf:value[@xsi:type='CD'])=1])=1]) &gt; 0">SHOULD contain zero or more [0..*] subjectOf (CONF:3372-18669) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18670). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18671). This code SHALL contain exactly one [1..1] @code="MSRSET" Care Setting (CONF:3372-18672). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30070). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="CD" (ValueSet: RoleClassServiceDeliveryLocation urn:oid:2.16.840.1.113883.1.11.16927) (CONF:3372-29950).</sch:assert>
      <sch:assert id="a-3372-18674-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRJUR'][@codeSystem])=1][count(hqmf:value[@xsi:type='CD'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18674) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18675). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18676). This code SHALL contain exactly one [1..1] @code="MSRJUR" Jurisdiction (CONF:3372-18677). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30071). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-29951).</sch:assert>
      <sch:assert id="a-3372-18679-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRTOPIC'][@codeSystem])=1][count(hqmf:value[@xsi:type='CD'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18679) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18680). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18681). This code SHALL contain exactly one [1..1] @code="MSRTOPIC" Topic Type (CONF:3372-29952). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30072). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-29953).</sch:assert>
      <sch:assert id="a-3372-18691-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRRPTR'][@codeSystem])=1][count(hqmf:value[@xsi:type='CD'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18691) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18692). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18693). This code SHALL contain exactly one [1..1] @code="MSRRPTR" Reporter Type (CONF:3372-18694). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30073). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:3372-29954).</sch:assert>
      <sch:assert id="a-3372-18698-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRRPTTIME'][@codeSystem])=1][count(hqmf:value[@xsi:type='PQ'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18698) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18699). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18700). This code SHALL contain exactly one [1..1] @code="MSRRPTTIME" Timeframe for Reporting (CONF:3372-18701). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30074). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:3372-29955).</sch:assert>
      <sch:assert id="a-3372-18705-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='USE'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18705) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18706). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18707). This code SHALL contain exactly one [1..1] @code="USE" Notice of Use (CONF:3372-30075). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30076). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18711).</sch:assert>
      <sch:assert id="a-3372-18712-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='SDE'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18712) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18713). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18714). This code SHALL contain exactly one [1..1] @code="SDE" Supplemental Data Elements (CONF:3372-18715). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30077). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18718).</sch:assert>
      <sch:assert id="a-3372-18719-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='TRANF'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18719) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18720). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18721). This code SHALL contain exactly one [1..1] @code="TRANF" Transmission Format (CONF:3372-29956). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30078). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18725).</sch:assert>
      <sch:assert id="a-3372-18726-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='STRAT'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18726) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18727). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18728). This code SHALL contain exactly one [1..1] @code="STRAT" Stratification (CONF:3372-18729). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30079). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18732).</sch:assert>
      <sch:assert id="a-3372-18733-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='IPOP'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18733) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18734). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18735). This code SHALL contain exactly one [1..1] @code="IPOP" Initial Population (CONF:3372-18736). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30080). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18739).</sch:assert>
      <sch:assert id="a-3372-18740-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='DENOM'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18740) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18741). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18742). This code SHALL contain exactly one [1..1] @code="DENOM" Denominator (CONF:3372-29957). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30081). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18746).</sch:assert>
      <sch:assert id="a-3372-18747-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='DENEX'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-18747) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-18748). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-18749). This code SHALL contain exactly one [1..1] @code="DENEX" Denominator Exclusion (CONF:3372-29958). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30082). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-18753).</sch:assert>
      <sch:assert id="a-3372-29959-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='NUMER'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-29959) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-29960). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-30083). This code SHALL contain exactly one [1..1] @code="NUMER" Numerator (CONF:3372-30084). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30085). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29962).</sch:assert>
      <sch:assert id="a-3372-29963-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='NUMEX'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-29963) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-29964). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-29965). This code SHALL contain exactly one [1..1] @code="NUMEX" Numerator Exclusion (CONF:3372-29967). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30086). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29966).</sch:assert>
      <sch:assert id="a-3372-29968-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='DENEXCEP'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-29968) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-29969). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-29970). This code SHALL contain exactly one [1..1] @code="DENEXCEP" Denominator Exception (CONF:3372-29971). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30087). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29972).</sch:assert>
      <sch:assert id="a-3372-29973-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRPOPL'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-29973) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-29974). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-29975). This code SHALL contain exactly one [1..1] @code="MSRPOPL" Measure Population (CONF:3372-29976). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30088). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29977).</sch:assert>
      <sch:assert id="a-3372-29978-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='MSRPOPLEX'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-29978) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-29979). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-29980). This code SHALL contain exactly one [1..1] @code="MSRPOPLEX" Measure Population Exclusions  (CONF:3372-29981). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30089). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29982).</sch:assert>
      <sch:assert id="a-3372-29984-warning" test="count(hqmf:subjectOf[count(hqmf:measureAttribute[count(hqmf:code[@code='DISC'][@codeSystem])=1][count(hqmf:value[@xsi:type='ED'])=1])=1])=1">SHOULD contain zero or one [0..1] subjectOf (CONF:3372-29984) such that it SHALL contain exactly one [1..1] measureAttribute (CONF:3372-29985). This measureAttribute SHALL contain exactly one [1..1] code (CONF:3372-29986). This code SHALL contain exactly one [1..1] @code="DISC" Disclaimer (CONF:3372-29987). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:3372-30090). This measureAttribute SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:3372-29988).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-XCRPT-componentQualityMeasureDocument-warnings" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument[@typeCode='XCRPT']/hqmf:componentQualityMeasureDocument">
      <sch:assert id="a-3372-34905-error" test="count(hqmf:setId)=1">This componentQualityMeasureDocument SHOULD contain zero or one [0..1] setId (CONF:3372-34905).</sch:assert>
      <sch:assert id="a-3372-34901-error" test="count(hqmf:versionNumber)=1">This componentQualityMeasureDocument SHOULD contain zero or one [0..1] versionNumber (CONF:3372-34901).</sch:assert>
    </sch:rule>
    <sch:rule id="r-CQL-Based-HQMF-Header-relatedDocument-XCRPT-componentQualityMeasureDocument-id-warnings" context="hqmf:QualityMeasureDocument[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.1.2'][@extension='2018-05-01']]/hqmf:relatedDocument[@typeCode='XCRPT']/hqmf:componentQualityMeasureDocument/hqmf:id">
      <sch:assert id="a-3372-34904-error" test="@identifierName">This id SHOULD contain zero or one [0..1] @identifierName (CONF:3372-34904).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Reason-warnings">
    <sch:rule id="r-Reason-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.88' and @extension='2017-05-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3335-34681-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3335-34681).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Severity-Observation-warnings">
    <sch:rule id="r-Severity-Observation-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.93' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34843-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34843).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Status-warnings">
    <sch:rule id="r-Status-value-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.94' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34844-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34844).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Substance-Administered-warnings">
    <sch:rule id="r-Substance-Administered-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-32895-error" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32895).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Administered-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.73' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-32905-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32905).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Substance-Order-warnings">
    <sch:rule id="r-Substance-Order-routejCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-32640-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32640).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Order-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.77' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-3265-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32650).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Substance-Recommended-warnings">
    <sch:rule id="r-Substance-Recommended-routeCode-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:routeCode">
      <sch:assert id="a-3372-33200-warning" test="@valueSet">The routeCode, if present, SHOULD contain zero or one [0..1] @valueSet (CONF:3372-33200).</sch:assert>
    </sch:rule>
    <sch:rule id="r-Substance-Recommended-participation-CSM-role-playingMaterial-code-warnings" context="hqmf:substanceAdministrationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.78' and @extension='2018-05-01']]/hqmf:participation[@typeCode='CSM'][count(hqmf:role)=1]/hqmf:role/hqmf:playingMaterial/hqmf:code">
      <sch:assert id="a-3372-32111-warning" test="@valueSet">This code SHOULD contain zero or one [0..1] @valueSet (CONF:3372-32111).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-Symptom-warnings">
    <sch:rule id="r-Symptom-warnings" context="hqmf:observationCriteria[hqmf:templateId/hqmf:item[@root='2.16.840.1.113883.10.20.28.4.116' and @extension='2017-08-01']]/hqmf:value[@xsi:type='CD']">
      <sch:assert id="a-3346-34105-warning" test="@valueSet">This value SHOULD contain zero or one [0..1] @valueSet (CONF:3346-34105).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="p-vol-I-pattern-warnings">
    <sch:rule id="r-vol-I-relatedDocument-expressionDocument-text-warnings" context="hqmf:QualityMeasureDocument/hqmf:relatedDocument/hqmf:expressionDocument/hqmf:text">
      <sch:assert id="a-vol-I-002-relatedDocument-expressionDocument-text-warning" test="count(hqmf:translation[count(hqmf:reference) &gt;=1])&gt;=1">Any expressionDocument/text elements that reference a CQL document SHOULD include a translation element that includes a child reference element</sch:assert>
    </sch:rule>
    <sch:rule id="r-vol-I-supplementalData-warnings" context="//cql-ext:supplementalDataElement">
      <sch:assert id="a-vol-I-016-supplementalData-warning" test="count(hqmf:code[starts-with(@code,'SDE')]) =1 ">Each supplemental data element referrenced in the CQL SHOULD have a name begining with "SDE"</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
