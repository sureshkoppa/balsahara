<%-- 
    Document   : childdetails_cwcorjjb
    Created on : May 26, 2011, 5:13:05 PM
    Author     : Ramu Parupalli
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
        document.getElementById('div_form').style.display='none';
        dojo.event.topic.publish("show_homes");
        }
        
          }
          
     function show_details2(val){

        if(val.value!=1){
            
            dojo.event.topic.publish("show_childpid");
        }
           
        
             }
       function show_details3(val){
           //   alert(val.value);
           document.getElementById('div_form').style.display='block';
           document.getElementById('child_id').value=val.value;
             
        
             }
             
      <jsp:include page="../../javascripts/SIResultofEnquiry_validation.jsp"></jsp:include> 
 </script>
       
    <body onload="document.getElementById('dialog-form_ch_re_preview').style.visibility='hidden'">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.chResuEnquiry"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="sireq" action="SIREQ-Save" method="POST"  theme="css_xhtml" id="f1"> 
                    
                    
       
                <table border="1">
                 <tr>
                    
                     <td><s:text name="package.label.enquiryRepoSelDist" /> :
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
            
                  <td><s:url id="d_url" action="DPO-RE-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                   <td><s:text name="package.label.enquiryRepoSelProfId" />:  </td>
            
                  <td><s:url id="d_url1" action="DPO-RE-FetchChildDetail"/>
                  
                      <sx:div id="details1" href="%{d_url1}" listenTopics="show_childpid" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>  
                </table>               
             <table>
                              
                <tr><td align="right"></td>
                    <td>
                        <%--
                 <s:url id="d_url2" action="DPO-SICD-FetchChildData"/>
                  
                      <sx:div id="details2" href="%{d_url2}" listenTopics="show_childdata" formId="f1" showLoadingText="true">
                      </sx:div></td>>
                        --%>
                </tr>
                <tr><td align="right"></td>
                     
                 </tr>   
                </table>
                      
                
                </s:form>
                <!--/s:if-->
                 <div id="div_form" style="display:none"> 
                <!--s:else-->
                <%--s:if test="userDistrictId != null"--%>
                <s:form action="SIREQ-Save" method="POST" name="sireq1" id="sireq1" theme="css_xhtml"> <!--new action = SICD-Save-->
                                   <!--s:hidden name="formname" value="sicd"/-->
                    <%--session.setAttribute("formname", "sifmd1");--%>
                    <s:hidden name="formname" value="sireq1"/>
                    <s:hidden id="child_id" name="child_id"/>
                               
                        <!--s:textfield name="childProfileId" value="%{childProfileId}"/-->
                     <table border="1">
                 <tr><th colspan="2" align="center"><s:text name="package.label.chEnqResAssesDet" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResEmoFacImp" />:</td><td><s:textarea id="impactEmotionalMental" name="impactEmotionalMental" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSocEcoImp" />:</td><td><s:textarea id="impactSocioEconomic" name="impactSocioEconomic" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResAbuExpImp" />:</td><td><s:textarea name="impactAbuseIlltreatment" id="impactAbuseIlltreatment" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResInteAsses" />:</td><td><s:textarea name="intelligentAssesssment" id="intelligentAssesssment" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResProbRelBeh1" /><br><s:text name="package.label.chEnqResProbRelBeh2" />:</td><td><s:textarea name="identifiedProblems" id="identifiedProblems" labelposition="left" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResFamResIntRel" />:</td><td><s:textarea name="responseFamilyHelp" id="responseFamilyHelp" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResProbAna" />:</td><td><s:textarea name="analysisProblems" id="analysisProblems" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chEnqResSugg" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResPOTrePlan" />:</td><td><s:textarea name="treatmentPlanPo" id="treatmentPlanPo" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResProbCon" />:</td><td><s:textarea name="conditionProbation" id="conditionProbation" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResComSerCon" />:</td><td><s:textarea name="conditionCommunity" id="conditionCommunity" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSuggDrugTre1" /><br><s:text name="package.label.chEnqResSuggDrugTre2" /><br><s:text name="package.label.chEnqResSuggDrugTre3" />:</td><td><s:textarea id="suggestedTreatmentDrugs" name="suggestedTreatmentDrugs" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSerRecTreCen1" /><br><s:text name="package.label.chEnqResSerRecTreCen2" />:</td><td><s:textarea name="treatmentCenter" id="treatmentCenter" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResCompenRea1" /><br><s:text name="package.label.chEnqResCompenRea2" /><br><s:text name="package.label.chEnqResCompenRea3" />:</td><td><s:textarea name="restitutionReason" id="restitutionReason" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResInstTreRecom1" /><br><s:text name="package.label.chEnqResInstTreRecom2" />:</td><td><s:textarea name="instiTreatmentReason" id="instiTreatmentReason" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResNoInstProgAppRea1" /><br><s:text name="package.label.chEnqResNoInstProgAppRea2" /><br><s:text name="package.label.chEnqResNoInstProgAppRea3" /><br><s:text name="package.label.chEnqResNoInstProgAppRea4" />:</td><td><s:textarea name="noninstiTreatmentReason" id="noninstiTreatmentReason" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResParRespAtt1" /><br><s:text name="package.label.chEnqResParRespAtt2" /><br><s:text name="package.label.chEnqResParRespAtt3" />:</td><td><s:textarea name="parentAttitudeResponsibility" id="parentAttitudeResponsibility" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSuggTrePlan1" /><br><s:text name="package.label.chEnqResSuggTrePlan2" />:</td><td><s:textarea name="suggestedTreatmentInsti" id="suggestedTreatmentInsti" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResOth" />:</td><td><s:textarea name="others" id="others" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
       <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td></tr>
       </table>
                   
                              
                    
                </s:form>
                 </div>                   
           
                <div id="dialog-form_ch_re_preview" title="<s:text name="js.preview.dpo.socInv"/>">
	<form name="ch_re_prevwindow">
             <table border="1">
                    <tr><td align="right"><s:text name="package.label.selectedChProfId" />:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chEnqResAssesDet" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResEmoFacImp" />:</td><td><span id="impactEmotionalMental_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSocEcoImp" />:</td><td><span id="impactSocioEconomic_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResAbuExpImp" />:</td><td><span id="impactAbuseIlltreatment_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResInteAsses" />:</td><td><span id="intelligentAssesssment_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResProbRelBeh1" /><br> <s:text name="package.label.chEnqResProbRelBeh2" />:</td><td><span id="identifiedProblems_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResFamResIntRel" />:</td><td><span id="responseFamilyHelp_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResProbAna" />:</td><td><span id="analysisProblems_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chEnqResSugg" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResPOTrePlan" />:</td><td><span id="treatmentPlanPo_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResProbCon" />:</td><td><span id="conditionProbation_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResComSerCon" />:</td><td><span id="conditionCommunity_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSuggDrugTre1" /><br><s:text name="package.label.chEnqResSuggDrugTre2" /><br><s:text name="package.label.chEnqResSuggDrugTre3" />:</td><td><span id="suggestedTreatmentDrugs_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSerRecTreCen1" /><br><s:text name="package.label.chEnqResSerRecTreCen2" />:</td><td><span id="treatmentCenter_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResCompenRea1" /><br><s:text name="package.label.chEnqResCompenRea2" /><br><s:text name="package.label.chEnqResCompenRea3" />:</td><td><span id="restitutionReason_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResInstTreRecom1" /><br><s:text name="package.label.chEnqResInstTreRecom2" />:</td><td><span id="instiTreatmentReason_span"></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResNoInstProgAppRea1" /><br> <s:text name="package.label.chEnqResNoInstProgAppRea2" /><br> <s:text name="package.label.chEnqResNoInstProgAppRea3" /><br> <s:text name="package.label.chEnqResNoInstProgAppRea4" />:</td><td><span id="noninstiTreatmentReason_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResParRespAtt1" /> <br><s:text name="package.label.chEnqResParRespAtt2" /> <br><s:text name="package.label.chEnqResParRespAtt3" />:</td><td><span id="parentAttitudeResponsibility_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResSuggTrePlan1" /><br><s:text name="package.label.chEnqResSuggTrePlan2" />:</td><td><span id="suggestedTreatmentInsti_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chEnqResOth" />:</td><td><span id="others_span"></span></td></tr>
                 
                 </table>  
	</form>
        </div>
                
            
        </center>
    </body>
</html>
