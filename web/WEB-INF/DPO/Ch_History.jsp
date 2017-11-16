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
             // alert(val.value);
           document.getElementById('div_form').style.display='block';
           document.getElementById('child_id').value=val.value;
             
        
             }
             
             <jsp:include page="../../javascripts/SIChildHistory_validation.jsp"></jsp:include>
 </script>
       
    <body onload="document.getElementById('dialog-form_ch_history_preview').style.visibility='hidden'">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.chHistoryDet"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="sich" action="SICH-Save" method="POST"  theme="css_xhtml" id="f1"> 
                    
                    
       
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
            
                  <td><s:url id="d_url" action="DPO-SICH-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                   <td><s:text name="package.label.enquiryRepoSelProfId" />:  </td>
            
                  <td><s:url id="d_url1" action="DPO-SICH-FetchChildDetail"/>
                  
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
                </table><br/>
                      
                
                </s:form>
                <!--/s:if-->
                 <div id="div_form" style="display:none"> 
                <!--s:else-->
                <%--s:if test="userDistrictId != null"--%>
                 <s:form name="sich1"  action="SICH-Save" method="POST" theme="css_xhtml" id="sich1" >
                     
                     <s:hidden name="formname" value="sich1"/>
                    <s:hidden id="child_id" name="child_id"/>
         <table border="1">
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistPreNatDet" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistMothHealCon" />:</td><td><s:textarea id="motherHealth" name="motherHealth" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistUnderTreat1" /> <br><s:text name="package.label.chHistUnderTreat2" />:</td><td>
                        <input type="radio" id="motherTreatmentUndergone" name="motherTreatmentUndergone" value="Y"/><s:text name="global.rad.label.ChHistoryYes"/><input type="radio" id="motherTreatmentUndergone" name="motherTreatmentUndergone" value="N"/><s:text name="global.rad.label.ChHistoryNo"/><%--s:radio id="motherTreatmentUndergone" name="motherTreatmentUndergone" list="#{'Y':'Yes','N':'No'}"/--%></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAcciDurPreg" />:</td><td>
                        <input type="radio" id="accidentPregnancy" name="accidentPregnancy" value="Y"/><s:text name="global.rad.label.ChHistoryYes"/><input type="radio" id="accidentPregnancy" name="accidentPregnancy" value="N"/><s:text name="global.rad.label.ChHistoryNo"/><%--s:radio id="accidentPregnancy" name="accidentPregnancy" list="#{'Y':'Yes','N':'No'}"/--%></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistTraSeriComp" />:</td><td><s:textarea id="otherComplications" name="otherComplications" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistChBirth" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistBirthNature" />:</td><td><s:textarea id="childBirthType" name="childBirthType" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistPosNatCare" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistImmuDet" />:</td><td><s:textarea  id="immunizationChild" name="immunizationChild" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAlimeTre" />:</td><td><s:textarea id="treatmentChildPostnatal" name="treatmentChildPostnatal" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistPhyCond" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistDisabDet" />:</td><td><s:textarea id="pcDisability" name="pcDisability" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistPhyStrDes" />:</td><td><s:textarea id="pcPhysicalStructure" name="pcPhysicalStructure" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistEyeColor" />:</td><td>
                        <select id="pcColorEye" name="pcColorEye">
                              <option value="1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.chHistEyeColBrown'/>"><s:text name='global.selectOption.chHistEyeColBrown'/></option>
                              <option value="<s:text name='global.selectOption.chHistEyeColHazel'/>"><s:text name='global.selectOption.chHistEyeColHazel'/></option>
                              <option value="<s:text name='global.selectOption.chHistEyeColGrey'/>"><s:text name='global.selectOption.chHistEyeColGrey'/></option>
                              <option value="<s:text name='global.selectOption.chHistEyeColBlue'/>"><s:text name='global.selectOption.chHistEyeColBlue'/></option>
                              <option value="<s:text name='global.selectOption.chHistEyeColAmber'/>"><s:text name='global.selectOption.chHistEyeColAmber'/></option>
                              <option value="<s:text name='global.selectOption.chHistEyeColOther'/>"><s:text name='global.selectOption.chHistEyeColOther'/></option>
                          </select><%--s:select id="pcColorEye" name="pcColorEye" headerKey="1" headerValue="-- Please Select --" list="#{'Brown':'Brown','Hazel':'Hazel','Grey':'Grey','Blue':'Blue','Amber':'Amber','Other':'Other'}"/--%></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOthSpeFea" />:</td><td><s:textarea id="pcOthers" name="pcOthers" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistMentCond" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistMenRetDet" />:</td><td><s:textarea id="mcRetardation" name="mcRetardation" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistCapUndSitu" />:</td><td>
                        <select name="mcCapacityUnderstand" id="mcCapacityUnderstand">
                              <option value="1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.chHistCapUndGood'/>"><s:text name='global.selectOption.chHistCapUndGood'/></option>
                              <option value="<s:text name='global.selectOption.chHistCapUndAver'/>"><s:text name='global.selectOption.chHistCapUndAver'/></option>
                              <option value="<s:text name='global.selectOption.chHistCapUndBad'/>"><s:text name='global.selectOption.chHistCapUndBad'/></option>
                          </select><%--s:select name="mcCapacityUnderstand" id="mcCapacityUnderstand" headerKey="1" headerValue="-- Please Select --" list="#{'Good':'Good','Average':'Average','Bad':'Bad'}"/--%></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistSDeprEDis" />:</td><td><s:textarea id="mcStrongDepression" name="mcStrongDepression" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistPsycRepo" />:</td><td><s:textarea name="mcPsycologists" id="mcPsycologists" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOtherDet" />:</td><td><s:textarea name="mcOther" id="mcOther" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistChAbuseDet" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistPhyAbusConse" />:</td><td><s:textarea name="physicalAbuse" id="physicalAbuse" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistSeAbusConse" />:</td><td><s:textarea name="sexualAbuse" id="sexualAbuse" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistMaltrConse" />:</td><td><s:textarea id="physicalNeglectConsequences" name="physicalNeglectConsequences" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistIllTreDet" />:</td><td><s:textarea id="illTreatment" name="illTreatment" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOthExploi" />:</td><td><s:textarea name="otherExploitation" id="otherExploitation" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistOthe" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistHabits1" /><br><s:text name="package.label.chHistHabits2" /><br><s:text name="package.label.chHistHabits3" />:</td><td><s:textarea name="habits" id="habits" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistInterests1" /><br><s:text name="package.label.chHistInterests2" />:</td><td><s:textarea name="intrests" id="intrests" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistMorVal1" /><br><s:text name="package.label.chHistMorVal2" /><br><s:text name="package.label.chHistMorVal3" />:</td><td><s:textarea name="moralValues" id="moralValues" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistRecreActi" />:</td><td><s:textarea name="recreationActivities" id="recreationActivities" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOutstaChara1" /><br> <s:text name="package.label.chHistOutstaChara2" />:</td><td><s:textarea name="outstandingChareristics" id="outstandingChareristics" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistCompInflu" /></td><td><s:textarea name="companionsInfluence" id="companionsInfluence" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistHomeTruan" /></td><td><s:textarea name="truancyHome" id="truancyHome" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAttScho1" /><br><s:text name="package.label.chHistAttScho2" /></td><td><s:textarea name="schoolDetails" id="schoolDetails" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistWorkRec1" /><br><s:text name="package.label.chHistWorkRec2" /><br> <s:text name="package.label.chHistWorkRec3" /></td><td><s:textarea name="workRecord" id="workRecord" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistNeighRepo" /></td><td><s:textarea name="neighbourhoodReport" id="neighbourhoodReport" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistPareDiscAtt1" /><br> <s:text name="package.label.chHistPareDiscAtt2" /></td><td><s:textarea name="parentsDisciplane" id="parentsDisciplane" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAnyOthRem" /></td><td><s:textarea name="remarks" id="remarks" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td></tr>
         </table>
             </s:form>
                 </div>                   
                <%--/s:if--%>
                  
                <!--/s:else-->
                
                <div id="dialog-form_ch_history_preview" title="<s:text name="js.preview.dpo.chHis"/>">
	<form name="ch_history_prevwindow">
             <table border="1">
                    <tr><td align="right"><s:text name="package.label.selectedChProfId" />:</td><td><span id="childProfileId_span"></span></td></tr>
                  <tr><td align="right"><s:text name="package.label.chHistMothHealCon" />:</td><td><span id="motherHealth_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistUnderTreat1" /> <br><s:text name="package.label.chHistUnderTreat2" />:</td><td><span  id="motherTreatmentUndergone_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAcciDurPreg" />:</td><td><span id="accidentPregnancy_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistTraSeriComp" />:</td><td><span id="otherComplications_span" ></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistChBirth" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistBirthNature" />:</td><td><span id="childBirthType_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistPosNatCare" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistImmuDet" />:</td><td><span id="immunizationChild_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAlimeTre" />:</td><td><span  id="treatmentChildPostnatal_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistPhyCond" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistDisabDet" />:</td><td><span id="pcDisability_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistPhyStrDes" />:</td><td><span id="pcPhysicalStructure_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistEyeColor" />:</td><td><span id="pcColorEye_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOthSpeFea" />:</td><td><span id="pcOthers_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistMentCond" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistMenRetDet" />:</td><td><span id="mcRetardation_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistCapUndSitu" />:</td><td><span id="mcCapacityUnderstand_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistSDeprEDis" />:</td><td><span  id="mcStrongDepression_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistPsycRepo" />:</td><td><span id="mcPsycologists_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOtherDet" />:</td><td><span id="mcOther_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistChAbuseDet" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistPhyAbusConse" />:</td><td><span id="physicalAbuse_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistSeAbusConse" />:</td><td><span id="sexualAbuse_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistMaltrConse" />:</td><td><span id="physicalNeglectConsequences_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistIllTreDet" />:</td><td><span id="illTreatment_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOthExploi" />:</td><td><span id="otherExploitation_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="package.label.chHistOthe" />:</th></tr>
                <tr><td align="right"><s:text name="package.label.chHistHabits1" /><br><s:text name="package.label.chHistHabits2" /><br><s:text name="package.label.chHistHabits3" />:</td><td><span id="habits_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistInterests1" /><br><s:text name="package.label.chHistInterests2" />:</td><td><span id="intrests_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistMorVal1" /><br><s:text name="package.label.chHistMorVal2" /><br><s:text name="package.label.chHistMorVal3" />:</td><td><span id="moralValues_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistRecreActi" />:</td><td><span id="recreationActivities_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistOutstaChara1" /><br> <s:text name="package.label.chHistOutstaChara2" />:</td><td><span id="outstandingChareristics_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistCompInflu" /></td><td><span id="companionsInfluence_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistHomeTruan" /></td><td><span id="truancyHome_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAttScho1" /><br><s:text name="package.label.chHistAttScho2" /></td><td><span id="schoolDetails_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistWorkRec1" /><br><s:text name="package.label.chHistWorkRec2" /><br> <s:text name="package.label.chHistWorkRec3" /></td><td><span id="workRecord_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistNeighRepo" /></td><td><span id="neighbourhoodReport_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistPareDiscAtt1" /><br> <s:text name="package.label.chHistPareDiscAtt2" /></td><td><span id="parentsDisciplane_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.chHistAnyOthRem" /></td><td><span id="remarks_span"></span></td></tr>
                 
                 </table>  
	</form>
        </div>
                
            
        </center>
    </body>
</html>
