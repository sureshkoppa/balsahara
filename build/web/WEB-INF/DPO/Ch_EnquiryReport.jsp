<%-- 
    Document   : Ch_EnquiryReport
    Created on : 1 Aug, 2011, 2:50:34 PM
    Author     : vinumol
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <sx:head/>
       <script>
    function show_details(val) {
         // alert("djgsdhgksdfh");
        if(val.value!=1){
        //document.getElementById('div_form').style.visibility='hidden';
        dojo.event.topic.publish("show_homes");
        }
        
          }
          
     function show_details2(val){

        if(val.value!=1){
            
            dojo.event.topic.publish("show_childpid");
        }
           
        
             }
 $(document).ready(function(){    
            
            $('#f1').submit(function(e){
            //alert('clicked');
            
            /*ajax code START*/
            $.ajax({
      url:'SIFBG-REPORT',
      type:'POST',
      data:$('#f1').serialize(),
      dataType:'json',
      success:
          function(data){
          //alert('data = '+data);
          document.getElementById('cwcJjbOrderNo_span').innerHTML=data[0].cwcJjbOrderNo;   
          document.getElementById('undersection_span').innerHTML=data[0].undersection;    
          document.getElementById('natureOffence_span').innerHTML=data[0].natureOffence;   
          document.getElementById('childName_span').innerHTML=data[0].childName;
          document.getElementById('religion_span').innerHTML=data[0].religion;
          document.getElementById('fatherName_span').innerHTML=data[0].fatherName;   
          document.getElementById('caste_span').innerHTML=data[0].caste;
          document.getElementById('dob_span').innerHTML=data[0].dob;
          document.getElementById('age_span').innerHTML=data[0].age;
          document.getElementById('permenantAdd_span').innerHTML=data[0].permanentAddress;
          document.getElementById('gender_span').innerHTML=data[0].gender;
          document.getElementById('presentAddress_span').innerHTML=data[0].presentAddress;
          document.getElementById('previousInstiDetails_span').innerHTML=data[0].previousInstiDetails;
          $("#FamilyDet_sub").html("");
           var rowCount2 = 0;
           for(i=0;i<data[0].sifdList.length;i++)
               {
                 var row = FamilyDet_sub.insertRow(rowCount2);
                 var cell1=row.insertCell(0);
                 cell1.innerHTML=i;
                 row.insertCell(1).innerHTML=data[0].sifdList[i].name;
                 row.insertCell(2).innerHTML=data[0].sifdList[i].relation;
                 row.insertCell(3).innerHTML=data[0].sifdList[i].age;
                 row.insertCell(4).innerHTML=data[0].sifdList[i].health;
                 row.insertCell(5).innerHTML=data[0].sifdList[i].occupation;
                 row.insertCell(6).innerHTML=data[0].sifdList[i].wages;
                 row.insertCell(7).innerHTML=data[0].sifdList[i].disability;
                 row.insertCell(8).innerHTML=data[0].sifdList[i].habits;
               
                 rowCount2=rowCount2+1;
                 
               } 
          
          document.getElementById('marriedPerticulars_span').innerHTML=data[0].sifList[0].marriedPerticulars;
          document.getElementById('relativesIntrested_span').innerHTML=data[0].sifList[0].relativesIntrested;
          document.getElementById('religionAtti_span').innerHTML=data[0].sifList[0].attitudeReligion;
          document.getElementById('socialStatus_span').innerHTML=data[0].sifList[0].socialStatus;
          document.getElementById('familyDeliq_span').innerHTML=data[0].sifList[0].delinquencyFamily;
          document.getElementById('presentLivingCondition_span').innerHTML=data[0].sifList[0].presentLivingCondition;
          document.getElementById('relationBwParents_span').innerHTML=data[0].sifList[0].relationBwParents;
          document.getElementById('otherFacts_span').innerHTML=data[0].sifList[0].otherFacts;
          document.getElementById('motherHealth_span').innerHTML=data[0].sihdList[0].motherHealth;
          document.getElementById('motherTreatmentUndergone_span').innerHTML=data[0].sihdList[0].motherTreatmentUndergone;
          document.getElementById('accidentPregnancy_span').innerHTML=data[0].sihdList[0].accidentPregnancy;
          document.getElementById('anyOthComplaints_span').innerHTML=data[0].sihdList[0].otherComplications;
          document.getElementById('childBirthType_span').innerHTML=data[0].sihdList[0].childBirthType;
          document.getElementById('immunizationChild_span').innerHTML=data[0].sihdList[0].immunizationChild;
          document.getElementById('treatmentChildPostnatal_span').innerHTML=data[0].sihdList[0].treatmentChildPostnatal;
          document.getElementById('pcDisability_span').innerHTML=data[0].sihdList[0].pcDisability;
          document.getElementById('pcPhysicalStructure_span').innerHTML=data[0].sihdList[0].pcPhysicalStructure;
          document.getElementById('pcColorEye_span').innerHTML=data[0].sihdList[0].pcColorEye;
          document.getElementById('pcOthers_span').innerHTML=data[0].sihdList[0].pcOthers;
          document.getElementById('mcRetardation_span').innerHTML=data[0].sihdList[0].mcRetardation;
          document.getElementById('mcCapacityUnderstand_span').innerHTML=data[0].sihdList[0].mcCapacityUnderstand;
          document.getElementById('mcStrongDepression_span').innerHTML=data[0].sihdList[0].mcStrongDepression;
          document.getElementById('mcPsycologists_span').innerHTML=data[0].sihdList[0].mcPsycologists;
          document.getElementById('mcOther_span').innerHTML=data[0].sihdList[0].mcOther;
          document.getElementById('physicalAbuse_span').innerHTML=data[0].sihdList[0].physicalAbuse;
          document.getElementById('sexualAbuse_span').innerHTML=data[0].sihdList[0].sexualAbuse;
          document.getElementById('physicalNeglectConsequences_span').innerHTML=data[0].sihdList[0].physicalNeglectConsequences;
          document.getElementById('illTreatment_span').innerHTML=data[0].sihdList[0].illTreatment;
          document.getElementById('otherExploitation_span').innerHTML=data[0].sihdList[0].otherExploitation;
          document.getElementById('habits_span').innerHTML=data[0].sihdList[0].habits;
          document.getElementById('intrests_span').innerHTML=data[0].sihdList[0].intrests;
          document.getElementById('moralValues_span').innerHTML=data[0].sihdList[0].moralValues;
          document.getElementById('recreationActivities_span').innerHTML=data[0].sihdList[0].recreationActivities;
          document.getElementById('outstandingChareristics_span').innerHTML=data[0].sihdList[0].outstandingChareristics;
          document.getElementById('companionsInfluence_span').innerHTML=data[0].sihdList[0].companionsInfluence;
          document.getElementById('truancyHome_span').innerHTML=data[0].sihdList[0].truancyHome;
          document.getElementById('schoolDetails_span').innerHTML=data[0].sihdList[0].schoolDetails;
          document.getElementById('workRecord_span').innerHTML=data[0].sihdList[0].workRecord;
          document.getElementById('neighbourhoodReport_span').innerHTML=data[0].sihdList[0].neighbourhoodReport;
          document.getElementById('parentsDisciplane_span').innerHTML=data[0].sihdList[0].parentsDisciplane;
          document.getElementById('remarks_span').innerHTML=data[0].sihdList[0].remarks;
          document.getElementById('impactEmotionalMental_span').innerHTML=data[0].enqList[0].impactEmotionalMental;
          document.getElementById('impactSocioEconomic_span').innerHTML=data[0].enqList[0].impactSocioEconomic;
          document.getElementById('impactAbuseIlltreatment_span').innerHTML=data[0].enqList[0].impactAbuseIlltreatment;
          document.getElementById('intelligentAssesssment_span').innerHTML=data[0].enqList[0].intelligentAssesssment;
          document.getElementById('identifiedProblems_span').innerHTML=data[0].enqList[0].identifiedProblems;
          document.getElementById('responseFamilyHelp_span').innerHTML=data[0].enqList[0].responseFamilyHelp;
          document.getElementById('analysisProblems_span').innerHTML=data[0].enqList[0].analysisProblems;
          document.getElementById('treatmentPlanPo_span').innerHTML=data[0].enqList[0].treatmentPlanPo;
          document.getElementById('conditionProbation_span').innerHTML=data[0].enqList[0].conditionProbation;
          document.getElementById('conditionCommunity_span').innerHTML=data[0].enqList[0].conditionCommunity;
          document.getElementById('suggestedTreatmentInsti_span').innerHTML=data[0].enqList[0].suggestedTreatmentDrugs;
          document.getElementById('treatmentCenter_span').innerHTML=data[0].enqList[0].treatmentCenter;
          document.getElementById('restitutionReason_span').innerHTML=data[0].enqList[0].restitutionReason;
          document.getElementById('instiTreatmentReason_span').innerHTML=data[0].enqList[0].instiTreatmentReason;
          document.getElementById('noninstiTreatmentReason_span').innerHTML=data[0].enqList[0].noninstiTreatmentReason;
          document.getElementById('parentAttitudeResponsibility_span').innerHTML=data[0].enqList[0].parentAttitudeResponsibility;
          document.getElementById('suggestedTreatmentInsti_span').innerHTML=data[0].enqList[0].suggestedTreatmentInsti;
          document.getElementById('others_span').innerHTML=data[0].enqList[0].others;
          
           var html=$("#DPORepo_details").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           win.document.write(html);
          
      }
    });
    
    /*ajax code END*/
            
    e.preventDefault();
        });

});
      
 </script>
    </head>
    <body >
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.DPORepoSIandER"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="f1" action="SIFBG-REPORT" method="POST"  theme="css_xhtml" id="f1"> 
                    
                    <s:hidden name="formname" value="f1"/>
       
                <table border="1">
                 <tr>
                    
                     <td><s:text name="package.label.enquiryRepoSelDist" />:
                     </td>
                    <td>
                        <select name="userDistrictId" id="userDistrictId" onchange="javascript:show_details(this);return false;">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${districtList}" var="obj">
                                       <option value=${obj.districtId}>${obj.districtName}</option>
                                   </c:forEach>
                               </select><%--s:select name="userDistrictId" id="userDistrictId" list="districtList"  listKey="districtId" listValue="districtName" headerValue="-- Please Select --" headerKey="1" onchange="javascript:show_details(this);return false;" >
                        </s:select--%>
                    </td>
                </tr>
                <tr>
                    <td><s:text name="package.label.enquiryRepoSelHome" />: </td>
            
                  <td><s:url id="d_url" action="DPO-FB-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                   <td><s:text name="package.label.enquiryRepoSelProfId" />:  </td>
            
                  <td><s:url id="d_url1" action="DPO-FB-FetchChildReport"/>
                  
                      <sx:div id="details1" href="%{d_url1}" listenTopics="show_childpid" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>  
                </table>               
             <table>
                              
               
                <tr><td align="right"><center> <input type="submit" value="<s:text name="global.button.hmShowReport"/>"/><input type="reset" value="<s:text name="global.button.clear"/>"/></center>   </td>
                     
                 </tr>   
                </table><br/>
                     
                
                </s:form>
                <div id="DPORepo_details" style="display: none"> <div id="print_div">
                      <style> 
                    span{color:blue};
                </style>
                 <h2 style="text-align: left"><s:text name="global.heading.DPORepoForm"/></h2>
                 <h2 style="text-align: left"><s:text name="global.heading.DPORepoRuleNo"/></h2>
                 <h2 style="text-align: left"><s:text name="global.heading.DPORepoSIandER"/></h2>
                      <table style="float: left;width: 50%;">
                        <tr>
                            <td colspan="5"><s:text name="global.label.DPOReportSNO"/>________________________________</td>
                        </tr>
                        <tr>
                            <td colspan="5"><s:text name="global.label.DPORepoSubmittedToJJB"/></td>
                        </tr>
                        <tr>
                            <td colspan="5">___________________________________________________________________(<s:text name="global.label.DPORepoAddress"/>)</td>
                        </tr>
                        <tr>
                            <td><s:text name="global.label.DPORepoCWCJJBOrdNo"/></td>
                            <td><span id="cwcJjbOrderNo_span"></span></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoProbaOfficer"/>:</td><td></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoProfTitle"/>:</td>
                            <td></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoProfileNumber"/>:</td><td></td> 
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPoliceStation"/>:</td>
                            <td></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoUnderSec"/>:</td>
                            <td><span id="undersection_span"></span></td> 
                        </tr>
                         <tr>
                            <td><s:text name="global.label.DPORepoOffNat"/></td>
                            <td><span id="natureOffence_span"></span></td> 
                        </tr>
                        <tr><td colspan="5">___________________________________________________________________________________________________________________</td></tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoName"/></td>
                            <td><span id="childName_span"></span></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoRelig"/></td>
                            <td><span id="religion_span"></span></td> 
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoFathName"/></td>
                            <td><span id="fatherName_span"></span></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoCaste"/></td>
                            <td><span id="caste_span"></span></td> 
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoDOB"/></td>
                            <td><span id="dob_span"></span></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoAge"/></td>
                            <td><span id="age_span"></span></td> 
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPerAdd"/></td>
                            <td><span id="permenantAdd_span"></span></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.DPORepoGender"/></td>
                            <td><span id="gender_span"></span></td> 
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoAddBefChar"/></td>
                            <td><span id="presentAddress_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPrevInstDet"/></td>
                            <td><span id="previousInstiDetails_span"></span></td>
                        </tr>
                        <tr><td colspan="5">___________________________________________________________________________________________________________________</td></tr>
                        <tr><td colspan="5"><s:text name="global.label.DPORepoFamily"/></td></tr>
                       </table>
                       <table id="FamilyDet" border="1" style="float: left;width: 50%;">
                               <thead>
                                   <tr><th><s:text name="global.label.DPOReportSNO"/></th><th><s:text name="global.label.DPORepoName"/></th><th><s:text name="global.label.DPORepoFamMem"/></th>
                                       <th><s:text name="global.label.DPORepoAgeSub"/></th><th><s:text name="global.label.DPORepoHealth"/></th><th><s:text name="global.label.DPORepoOccup"/></th>
                                       <th><s:text name="global.label.DPORepoWages"/></th><th><s:text name="global.label.DPORepoDisability"/></th><th><s:text name="global.label.DPORepoHabits"/></th>
                                   </tr>
                               </thead>
                               <tbody id="FamilyDet_sub">
                               </tbody>
                        </table>
                        <table style="float: left;width: 50%;">
                        <tr><td colspan="5">___________________________________________________________________________________________________________________</td></tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoIfMarrPati"/></td>
                            <td><span id="marriedPerticulars_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoOthNearRel"/></td>
                            <td><span id="relativesIntrested_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoReliAtti"/></td>
                            <td><span id="religionAtti_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoSocioEcoStat"/></td>
                            <td><span id="socialStatus_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoFamDeliq"/></td>
                            <td><span id="familyDeliq_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPresLivCon"/></td>
                            <td><span id="presentLivingCondition_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoRelaWithPar"/></td>
                            <td><span id="relationBwParents_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoOthFactors"/></td>
                            <td><span id="otherFacts_span"></span></td>
                        </tr>
                        <tr><td colspan="5">___________________________________________________________________________________________________________________</td></tr>
                        <tr><td colspan="5"><s:text name="global.label.DPORepoPreNatDet"/></td></tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoMotHealCon"/></td>
                            <td><span id="motherHealth_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoMotUndTreat"/></td>
                            <td><span id="motherTreatmentUndergone_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoAccInjPreg"/></td>
                            <td><span id="accidentPregnancy_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoAnyOthCom"/></td>
                            <td><span id="anyOthComplaints_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoChiBirth"/></td>
                           <td><s:text name="global.label.DPORepoChiBirType"/></td>
                            <td><span id="childBirthType_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPostNatCar"/></td>
                           <td><s:text name="global.label.DPORepoImmuDet"/></td>
                            <td><span id="immunizationChild_span"></span></td>
                        </tr>
                        <tr>
                           <td></td>
                           <td><s:text name="global.label.DPORepoAlignTreat"/></td>
                            <td><span id="treatmentChildPostnatal_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPhysCond"/></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoDisabDet"/></td>
                            <td><span id="pcDisability_span"></span></td>
                        </tr>
                        <tr>
                            <td><s:text name="global.label.DPORepoPhyStruDet"/></td>
                            <td><span id="pcPhysicalStructure_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoEyeColo"/></td>
                            <td><span id="pcColorEye_span"></span></td>
                        </tr>
                        <tr>
                            <td><s:text name="global.label.DPORepoAnyOthSpec"/></td>
                            <td><span id="pcOthers_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoMenCond"/></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoMenIllDet"/></td>
                            <td><span id="mcRetardation_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoUndSitCap"/></td>
                            <td><span id="mcCapacityUnderstand_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoStrDistDet"/></td>
                            <td><span id="mcStrongDepression_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoPsychoRepo"/></td>
                            <td><span id="mcPsycologists_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoOthDetIfAny"/></td>
                            <td><span id="mcOther_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoChAbuseDet"/></td>
                        </tr><tr>
                           <td><s:text name="global.label.DPORepoPhyAbuCons"/></td>
                            <td><span id="physicalAbuse_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoSeAbuCons"/></td>
                            <td><span id="sexualAbuse_span"></span></td>
                        </tr><tr>
                           <td><s:text name="global.label.DPORepoPhyNeglCons"/></td>
                            <td><span id="physicalNeglectConsequences_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoIllTreaDet"/></td>
                            <td><span id="illTreatment_span"></span></td>
                        </tr><tr>
                           <td><s:text name="global.label.DPORepoAnyOthExplo"/></td>
                            <td><span id="otherExploitation_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoHabits"/></td>
                            <td><span id="habits_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoSpecInter"/></td>
                            <td><span id="intrests_span"></span></td>
                        </tr><tr>
                           <td><s:text name="global.label.DPORepoMoralVal"/></td>
                            <td><span id="moralValues_span"></span></td>
                        </tr><tr>
                           <td><s:text name="global.label.DPORepoRecreaAct"/></td>
                            <td><span id="recreationActivities_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoOutstaChar"/></td>
                            <td><span id="outstandingChareristics_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoCompInflu"/></td>
                            <td><span id="companionsInfluence_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoTruanHome"/></td>
                            <td><span id="truancyHome_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoSchoAtti"/></td>
                            <td><span id="schoolDetails_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoWorkReco"/></td>
                            <td><span id="workRecord_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoNeighRep"/></td>
                            <td><span id="neighbourhoodReport_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoParDisAtti"/></td>
                            <td><span id="parentsDisciplane_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoAnyOthRem"/></td>
                            <td><span id="remarks_span"></span></td>
                        </tr>
                        <tr><td colspan="5">___________________________________________________________________________________________________________________</td></tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoEnqResult"/></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoAsseDet"/></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoImpEmoFac"/></td>
                            <td><span id="impactEmotionalMental_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoImpSocEcoFac"/></td>
                            <td><span id="impactSocioEconomic_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoImpAbuIllTrea"/></td>
                            <td><span id="impactAbuseIlltreatment_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoIntelAsse"/></td>
                            <td><span id="intelligentAssesssment_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoIdentProb"/></td>
                            <td><span id="identifiedProblems_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoRespFamHelp"/></td>
                            <td><span id="responseFamilyHelp_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoProbIssuAna"/></td>
                            <td><span id="analysisProblems_span"></span></td>
                        </tr><tr>
                           <td><s:text name="global.label.DPORepoProbTreaPla"/></td>
                            <td><span id="treatmentPlanPo_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoProbCond"/></td>
                            <td><span id="conditionProbation_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoCommuCond"/></td>
                            <td><span id="conditionCommunity_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoSuggTreaPlan"/>:</td>
                           <td><span id="suggestedTreatmentInsti_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoTreatCent"/></td>
                            <td><span id="treatmentCenter_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoRestCompProp"/></td>
                           <td><span id="restitutionReason_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoRecomInstTrea"/></td>
                            <td><span id="instiTreatmentReason_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoNonInstTreRea"/></td>
                           <td><span id="noninstiTreatmentReason_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoParRespAtti"/></td>
                           <td><span id="parentAttitudeResponsibility_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoSuggTreaInst"/></td>
                           <td><span id="suggestedTreatmentInsti_span"></span></td>
                        </tr>
                        <tr>
                           <td><s:text name="global.label.DPORepoOthers"/></td>
                            <td><span id="others_span"></span></td>
                        </tr>
                        <tr><td colspan="5"><input type="button" id="prbutton" value="<s:text name="global.button.print"/>" onclick="prdi('print_div')"/></td></tr>
                      </table>
                    </div>   
                   <script type="text/javascript">
                       function prdi(divID)
    {
        var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var larPage = document.getElementById(divID).innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML = 
              "<html><head><title></title></head><body>" + 
              divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML =larPage;

    }
                       </script>
             </div>    
        </center>
        </body>
</html>