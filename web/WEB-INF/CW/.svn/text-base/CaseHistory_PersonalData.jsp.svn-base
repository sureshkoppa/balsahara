<%-- 
    Document   : CaseHistory_PersonalData
    Created on : Jun 7, 2011, 11:13:06 AM
    Author     : Ramu Parupalli
--%>

  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
   
    <head>
         <sx:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script type="text/javascript">            
             <jsp:include page="../../javascripts/CaseHistory_PD.jsp"></jsp:include> 
        </script>
        <title>Case History Personal Data Sheet</title>
       
    </head>  

 <body onload="">
<center>
    <caption><h1><s:text name="heading.caseHisPerData"/></h1></caption>
                        
    <s:form name="ch_personal" action="CW-CH-Personal-Save" method="POST" theme="css_xhtml" id="ch_personal">
                            <s:hidden name="formName" value="ch_personal"/>
                            
                            <table cellspacing="0">
              
                <tr><h3></h3></tr>
                            <tr><td align="right"><s:text name="label.profileId"/>:</td>
                            <td><select name="childProfileId" id="childProfileId" onchange="javascript:show_details(this);return false;">
                                       <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}</option>
                                   </c:forEach>
                                </select> 
                            
                            </td></tr>
                            </table>     
                
                    
                    <s:url id="d_url" action="CW-CH-Fetch-Child"/>                  
                 <%--
                 <sx:div id="details" href="%{d_url}" listenTopics="sh_childDetails" formId="ch_personal" showLoadingText="true">
                 </sx:div>
                 --%>
                 
                 <s:div id="details" formId="ch_personal"/>   
                 <sx:bind targets="details" href="%{d_url}" listenTopics="sh_childDetails" formId="ch_personal" >
                 </sx:bind>
                
                 <table>
                     <tr><td align="right"><s:text name="label.presentAge"/>:</td><td><s:textfield theme="css_xhtml" name="agePresent" id="agePresent" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><th colspan="2" align="center"></th></tr>
                <tr><td align="right"><s:text name="label.locOfResi"/>:</td>
                    <td><select name="localResidence"  id="localResidence"  onchange="CH_other_dynamic(this,this.id);">
                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                            <option value="<s:text name="option.urban"/>"><s:text name="option.urban"/></option>   
                            <option value="<s:text name="option.subUrban"/>"><s:text name="option.subUrban"/></option>
                            <option value="<s:text name="option.rural"/>"><s:text name="option.rural"/></option>
                            <option value="<s:text name="option.slum"/>"><s:text name="option.slum"/></option>
                            <option value="<s:text name="option.industrial"/>"><s:text name="option.industrial"/></option>
                            <option value="Others"><s:text name="option.others"/></option>
                           
                        </select>
                    </td>
                </tr>        
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="localResidence_other" id="localResidence_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                 
                <tr><td align="right"><s:text name="label.natDistrict"/>:</td><td><s:textfield name="nativeDistrict" id="nativeDistrict"/></td></tr>
                <tr><td align="right"><s:text name="label.natState"/>:</td><td><s:textfield name="nativeState" id="nativeState"/></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.descOfHousing"/></th></tr>
                 
                <tr><td align="right"><s:text name="label.type"/>:</td>
                    <td>
                        <select name="housingType" id="housingType" onchange="CH_other_dynamic(this,this.id);">
                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                            <option value="<s:text name="option.concrBuild"/>"><s:text name="option.concrBuild"/></option>
                            <option value="<s:text name="option.tiledHouse"/>"><s:text name="option.tiledHouse"/></option>
                            <option value="<s:text name="option.hut"/>"><s:text name="option.hut"/></option>
                            <option value="<s:text name="option.onTheStrt"/>"><s:text name="option.onTheStrt"/></option>
                            <option value="Others"><s:text name="option.others"/></option>
                        </select>   
                    </td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="housingType_other" id="housingType_other"  theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                <tr><td align="right"><s:text name="label.space"/>:</td>
                    <td><select name="housingSpace" id="housingSpace">
                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                            <option value="<s:text name="option.thrBedRoom"/>"><s:text name="option.thrBedRoom"/></option>
                            <option value="<s:text name="option.twoBedRoom"/>"><s:text name="option.twoBedRoom"/></option>
                            <option value="<s:text name="option.oneBedRoom"/>"><s:text name="option.oneBedRoom"/></option>
                            <option value="<s:text name="option.noSepBedRoom"/>"><s:text name="option.noSepBedRoom"/></option>
                        </select> 
                    
                    </td></tr>   
                <tr><td align="right"><s:text name="label.ownerShip"/>:</td>
                    <td><select name="houseOwnership" id="houseOwnership">
                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                            <option value="<s:text name="option.owned"/>"><s:text name="option.owned"/></option>
                            <option value="<s:text name="option.rental"/>"><s:text name="option.rental"/></option>
                        </select>  </td></tr>
                <tr><th colspan="2" align="center"></th></tr>
                <tr><td align="right"><s:text name="label.juvBrtBfrCWCJB"/>:</td><td>
                        <select name="broughtbeforeCwc" id="broughtbeforeCwc" onchange="CH_brought_dynamic(this);">
                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                            <option value="<s:text name="option.locPolice"/>"><s:text name="option.locPolice"/></option>
                            <option value="<s:text name="option.juvAndPolUnit"/>"><s:text name="option.juvAndPolUnit"/></option>
                            <option value="<s:text name="option.rlyPolice"/>"><s:text name="option.rlyPolice"/></option>
                            <option value="<s:text name="option.wmnPolice"/>"><s:text name="option.wmnPolice"/></option>
                            <option value="<s:text name="option.probOffs"/>"><s:text name="option.probOffs"/></option>
                            <option value="<s:text name="option.socWelOrg"/>"><s:text name="option.socWelOrg"/></option>
                            <option value="<s:text name="option.socWorker"/>"><s:text name="option.socWorker"/></option>
                            <option value="<s:text name="option.childSelf"/>"><s:text name="option.childSelf"/></option>
                            <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                            <option value="Guardians"><s:text name="option.guardSpecRel"/></option>
                        </select>    </td></tr>
               <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="parentRelation" id="parentRelation" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>              
                
               <tr><td align="right"><s:text name="label.reaForLeavingFamily"/>:</td>
                   <td><select name="reasonLeavingFamily" id="reasonLeavingFamily" onchange="CH_other_dynamic(this,this.id);">
                           <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                           <option value="<s:text name="option.absByParents"/>"><s:text name="option.absByParents"/></option>  
                           <option value="<s:text name="option.absByGuardians"/>"><s:text name="option.absByGuardians"/></option>  
                           <option value="<s:text name="option.absByStepPar"/>"><s:text name="option.absByStepPar"/></option>  
                           <option value="<s:text name="option.inSerOfEmployment"/>"><s:text name="option.inSerOfEmployment"/></option>
                           <option value="<s:text name="option.peetGrpInfluence"/>"><s:text name="option.peetGrpInfluence"/></option>  
                           <option value="<s:text name="option.incapOfParents"/>"><s:text name="option.incapOfParents"/></option>  
                           <option value="<s:text name="option.crimBehParents"/>"><s:text name="option.crimBehParents"/></option>  
                           <option value="<s:text name="option.sepOfParents"/>"><s:text name="option.sepOfParents"/></option>  
                           <option value="<s:text name="option.drunkenFamily"/>"><s:text name="option.drunkenFamily"/></option>  
                           <option value="<s:text name="option.qurrelsome"/>"><s:text name="option.qurrelsome"/></option>  
                           <option value="<s:text name="option.demiseOfPar"/>"><s:text name="option.demiseOfPar"/></option>
                           <option value="<s:text name="option.poverty"/>"><s:text name="option.poverty"/></option>
                           <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                           <option value="Others"><s:text name="option.others"/></option>
                       </select>  
                   
                     </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="reasonLeavingFamily_other" id="reasonLeavingFamily_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                 <tr><th colspan="2" align="center"><s:text name="label.typesOfAbuseMet"/></th></tr>
                
                 <tr><td align="right"><s:text name="label.verbAbuse"/>:</td>
                     <td><select name="verbalAbuse" id="verbalAbuse" onchange="CH_other_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                             <option value="<s:text name="option.siblings"/>"><s:text name="option.siblings"/></option>
                             <option value="<s:text name="option.emplyrs"/>"><s:text name="option.emplyrs"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>                            
                             
                         </select> 
                     </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="verbalAbuse_other" id="verbalAbuse_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                 <tr><td align="right"><s:text name="label.phyAbuse"/>:</td><td>
                         <select name="physicalAbuse" id="physicalAbuse">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                             <option value="<s:text name="option.siblings"/>"><s:text name="option.siblings"/></option>
                             <option value="<s:text name="option.emplyrs"/>"><s:text name="option.emplyrs"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>                            
                             
                         </select> </td></tr>
                 <tr><td align="right"><s:text name="label.sexAbuse"/>:</td><td>
                         <select name="sexualAbuse" id="sexualAbuse" onchange="CH_other_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                             <option value="<s:text name="option.siblings"/>"><s:text name="option.siblings"/></option>
                             <option value="<s:text name="option.emplyrs"/>"><s:text name="option.emplyrs"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>  
                         </select>
                     </td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="sexualAbuse_other" id="sexualAbuse_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                <tr><td align="right"><s:text name="label.anyOtherAbuseSpec"/>:</td><td><s:textarea name="otherAbuse" id="otherAbuse" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <%--tr><td align="right">Others:</td><td><s:select name="otherAbuse" id="otherAbuse" headerKey="1" headerValue="--Please Select--" list="#{'Parents':'Parents','siblings':'siblings','employers':'employers','Others':'Others'}"  onchange="CH_other_dynamic(this,this.id);"/></td></tr>
                 <tr><td align="right">please specify:</td><td><s:textfield name="otherAbuse_other" id="otherAbuse_other" theme="css_xhtml" disabled="true" /></td></tr--%>             
                <tr><th colspan="2" align="center"><s:text name="label.typesOfIllTrtChild"/></th></tr>
                <tr><td align="right"><s:text name="label.denFood"/>:</td>
                    <td><select id="illtreatDenialFood" name="illtreatDenialFood" onchange="CH_other_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                             <option value="<s:text name="option.siblings"/>"><s:text name="option.siblings"/></option>
                             <option value="<s:text name="option.emplyrs"/>"><s:text name="option.emplyrs"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>  
                        </select>   </td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="illtreatDenialFood_other" id="illtreatDenialFood_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                <tr><td align="right"><s:text name="label.btnMerciLessly"/>:</td>
                    <td><select name="illtreatBeatenMercilessly" id="illtreatBeatenMercilessly" onchange="CH_other_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                             <option value="<s:text name="option.siblings"/>"><s:text name="option.siblings"/></option>
                             <option value="<s:text name="option.emplyrs"/>"><s:text name="option.emplyrs"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>  
                        </select>
                    </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="illtreatBeatenMercilessly_other" id="illtreatBeatenMercilessly_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                 <tr><td align="right"><s:text name="label.causingInjury"/>:</td>
                     <td><select name="illtreatCauseInjury" id="illtreatCauseInjury" onchange="CH_other_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.parents"/>"><s:text name="option.parents"/></option>
                             <option value="<s:text name="option.siblings"/>"><s:text name="option.siblings"/></option>
                             <option value="<s:text name="option.emplyrs"/>"><s:text name="option.emplyrs"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>                               
                         </select>   
                      </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="illtreatCauseInjury_other" id="illtreatCauseInjury_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                  <tr><td align="right"><s:text name="label.anyOthTrtMentSpec"/>:</td><td><s:textarea name="illtreatOthers" id="illtreatOthers" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                  <%--tr><td align="right">Others:</td><td><s:select name="illtreatOthers" id="illtreatOthers" headerKey="1" headerValue="--Please Select--" list="#{'Parents':'Parents','siblings':'siblings','employers':'employers','Others':'Others'}"  onchange="CH_other_dynamic(this,this.id);"/></td></tr>
                 <tr><td align="right">please specify:</td><td><s:textfield name="illtreatOthers_other" id="illtreatOthers_other" theme="css_xhtml" disabled="true" /></td></tr--%>             
               <tr><th colspan="2" align="center"></th></tr>
                 <tr><td align="right"><s:text name="label.exploitFaced"/>:</td>
                     <td><select name="exploitationChild" id="exploitationChild" onchange="CH_other_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.extractWorkWOutPay"/>"><s:text name="option.extractWorkWOutPay"/></option>
                             <option value="<s:text name="option.lowWageWthLongDurWork"/>"><s:text name="option.lowWageWthLongDurWork"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="Others"><s:text name="option.others"/></option>                                
                         </select>
                     </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="exploitationChild_other" id="exploitationChild_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                
                 <tr><th colspan="2" align="center"><s:text name="label.healthStaBfrAdm"/></th></tr>
                
                 <tr><td align="right"><s:text name="label.respDisorders"/>:</td>
                     <td><select name="hsbaRespiratory" id="hsbaRespiratory"> 
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option>                                
                         </select>
                     </td></tr>
                                                                   
                 <tr><td align="right"><s:text name="label.hearImpair"/>:</td>
                     <td><select name="hsbaHearing" id="hsbaHearing">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option>      
                         </select>  </td></tr>
                                                                   
                 <tr><td align="right"><s:text name="label.eyeDiseas"/>:</td><td>
                         <select name="hsbaEye" id="hsbaEye">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option>      
                         </select></td></tr>
                                                                   
                 <tr><td align="right"><s:text name="label.dentDiseas"/>:</td>
                     <td><select name="hsbaDental" id="hsbaDental">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option>  
                         </select> </td></tr>
                                                                    
                <tr><td align="right"><s:text name="label.cardDiseas"/>:</td>
                    <td><select name="hsbaCordiac" id="hsbaCordiac">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option> 
                        </select> </td></tr>
                                                                    
                <tr><td align="right"><s:text name="label.skinDisea"/>:</td>
                    <td><select name="hsbaSkin" id="hsbaSkin">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option> 
                        </select> </td></tr>
                                                                    
                <tr><td align="right"><s:text name="option.sexTransDisea"/>:</td>
                    <td><select name="hsbaSexualDiseases" id="hsbaSexualDiseases">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option> 
                        </select> </td></tr>
                                                                    
                <tr><td align="right"><s:text name="option.nueroDisord"/>:</td>
                    <td><select name="hsbaNeurological" id="hsbaNeurological">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option> 
                        </select> </td></tr>
                                                                    
                <tr><td align="right"><s:text name="option.mentHandicap"/>:</td>
                    <td><select name="hsbaMentalHandicap" id="hsbaMentalHandicap">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option> 
                        </select>  </td></tr>
                                                                    
                <tr><td align="right"><s:text name="option.phyHandicap"/>:</td>
                    <td><select name="hsbaPhysicalHandicap" id="hsbaPhysicalHandicap">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.present"/>"><s:text name="option.present"/></option>
                             <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                             <option value="<s:text name="option.absent"/>"><s:text name="option.absent"/></option> 
                        </select> </td></tr>
                                                                    
                <tr><td align="right"><s:text name="label.otherDiseaSpec"/>:</td><td><s:textarea name="hsbaOthers" id="hsbaOthers" rows="2" cols="20"/></td></tr></td></tr>
                
                 <tr><th colspan="2" align="center"></th></tr>
                 <tr><td align="right"><s:text name="label.stayOfChildPriorAdm"/>:</td>
                     <td><select name="childStayPriorAdmission" id="childStayPriorAdmission" onchange="CH_stay_dynamic(this,this.id);">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.mother"/>"><s:text name="option.mother"/></option>
                             <option value="<s:text name="option.father"/>"><s:text name="option.father"/></option>
                             <option value="<s:text name="option.bothFatAndMot"/>"><s:text name="option.bothFatAndMot"/></option> 
                             <option value="<s:text name="option.guards"/>"><s:text name="option.guardSpecRel"/></option>
                             <option value="<s:text name="option.friends"/>"><s:text name="option.friends"/></option>
                             <option value="<s:text name="option.onTheStreet"/>"><s:text name="option.onTheStreet"/></option> 
                             <option value="<s:text name="option.ngtShltr"/>"><s:text name="option.ngtShltr"/></option> 
                             <option value="<s:text name="option.orpnages"/>"><s:text name="option.orpnages"/></option> 
                             <option value="<s:text name="option.simlrHomes"/>"><s:text name="option.simlrHomes"/></option> 
                             <option value="<s:text name="option.hostels"/>"><s:text name="option.hostels"/></option> 
                             <option value="Others"><s:text name="option.others"/></option> 
                         </select>
                    </td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="childStayPriorAdmission_other" id="childStayPriorAdmission_other" theme="css_xhtml" disabled="true" /></td></tr>             
                <tr><th colspan="2" align="center"><s:text name="label.visitOfPrtToChild"/></th></tr>
                
                <tr><td align="right"><s:text name="label.priorToInstzon"/>:</td>
                    <td><select id="vpmcPriorInsti" name="vpmcPriorInsti">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.freqtly"/>"><s:text name="option.freqtly"/></option> 
                             <option value="<s:text name="option.occasionally"/>"><s:text name="option.occasionally"/></option> 
                             <option value="<s:text name="option.rarely"/>"><s:text name="option.rarely"/></option> 
                             <option value="<s:text name="option.never"/>"><s:text name="option.never"/></option> 
                        </select> 
                    </td></tr>
                                                                              
                <tr><td align="right"><s:text name="label.aftetInstzon"/>:</td>
                    <td><select name="vpmcAfterInsti" id="vpmcAfterInsti">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.freqtly"/>"><s:text name="option.freqtly"/></option> 
                             <option value="<s:text name="option.occasionally"/>"><s:text name="option.occasionally"/></option> 
                             <option value="<s:text name="option.rarely"/>"><s:text name="option.rarely"/></option> 
                             <option value="<s:text name="option.never"/>"><s:text name="option.never"/></option>                             
                        </select></td></tr>
                <tr><th colspan="2" align="center">Correspondance With Family</th></tr>                                                              
                
                <tr><td align="right"><s:text name="label.priorToInst"/>:</td>
                    <td><select id="vchfPriorInsti" name="vchfPriorInsti">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.freqtly"/>"><s:text name="option.freqtly"/></option> 
                             <option value="<s:text name="option.occasionally"/>"><s:text name="option.occasionally"/></option> 
                             <option value="<s:text name="option.rarely"/>"><s:text name="option.rarely"/></option> 
                             <option value="<s:text name="option.never"/>"><s:text name="option.never"/></option> 
                             <option value="<s:text name="option.durFestTimes"/>"><s:text name="option.durFestTimes"/></option> 
                             <option value="<s:text name="option.durSummHolidays"/>"><s:text name="option.durSummHolidays"/></option> 
                             <option value="<s:text name="option.whenEverFlnSick"/>"><s:text name="option.whenEverFlnSick"/></option> 
                           
                        </select> 
                    </td></tr>
                                                                              
                <tr><td align="right"><s:text name="label.afterInst"/>:</td>
                    <td><select name="vchfAfterInsti" id="vchfAfterInsti">
                             <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                             <option value="<s:text name="option.freqtly"/>"><s:text name="option.freqtly"/></option> 
                             <option value="<s:text name="option.occasionally"/>"><s:text name="option.occasionally"/></option> 
                             <option value="<s:text name="option.rarely"/>"><s:text name="option.rarely"/></option> 
                             <option value="<s:text name="option.never"/>"><s:text name="option.never"/></option> 
                             <option value="<s:text name="option.durFestTimes"/>"><s:text name="option.durFestTimes"/></option> 
                             <option value="<s:text name="option.durSummHolidays"/>"><s:text name="option.durSummHolidays"/></option> 
                             <option value="<s:text name="option.whenEverFlnSick"/>"><s:text name="option.whenEverFlnSick"/></option> 
                           
                        </select> 
                    </td></tr>
               
            </table>  
                             <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>
        
                </s:form> 
                            
                             <div id="dialog-form_CHPD_preview" title="<s:text name="js.preview.caseHisPerDet"/>">
	<form name="chpd_prevwindow">
            <table border="1">
                <tr><td align="right"><s:text name="label.profileId"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.fName"/>:</td><td><span id="childName_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.lName"/>:</td><td><span id="childSurname_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.gender"/>:</td><td><span id="gender_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.relg"/>:</td><td><span id="religion_span"></span></td></tr>
                <tr><td align="right">Specify Other Religion:</td><td><span id="religion_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><span id="caste_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><span id="subcaste_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.age"/>:</td><td><span id="ageAdmission_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.presentAge"/>:</td><td><span id="agePresent_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.locOfResi"/>:</td><td><span id="localResidence_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="localResidence_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.natDistrict"/>:</td><td><span id="nativeDistrict_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.natState"/>:</td><td><span id="nativeState_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.descOfHousing"/></th></tr>
                <tr><td align="right"><s:text name="label.type"/>:</td><td><span id="housingType_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="housingType_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.space"/>:</td><td><span id="housingSpace_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.ownerShip"/>:</td><td><span id="houseOwnership_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.juvBrtBfrCWCJB"/>:</td><td><span id="broughtbeforeCwc_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>::</td><td><span id="parentRelation_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.reaForLeavingFamily"/>:</td><td><span id="reasonLeavingFamily_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>::</td><td><span id="reasonLeavingFamily_other_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.typesOfAbuseMet"/></th></tr>
                <tr><td align="right"><s:text name="label.verbAbuse"/>:</td><td><span id="verbalAbuse_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>::</td><td><span id="verbalAbuse_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.phyAbuse"/>:</td><td><span id="physicalAbuse_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.sexAbuse"/>:</td><td><span id="sexualAbuse_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>::</td><td><span id="sexualAbuse_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.other"/>:</td><td><span id="otherAbuse_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.typesOfIllTrtChild"/></th></tr>
                <tr><td align="right"><s:text name="label.denFood"/>:</td><td><span id="illtreatDenialFood_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="illtreatDenialFood_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.btnMerciLessly"/>:</td><td><span id="illtreatBeatenMercilessly_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="illtreatBeatenMercilessly_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.causingInjury"/>:</td><td><span id="illtreatCauseInjury_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="illtreatCauseInjury_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.other"/>:</td><td><span id="illtreatOthers_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.exploitFaced"/>:</td><td><span id="exploitationChild_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>::</td><td><span id="exploitationChild_other_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.healthStaBfrAdm"/></th></tr>
                <tr><td align="right"><s:text name="label.respDisorders"/>:</td><td><span id="hsbaRespiratory_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.hearImpair"/>:</td><td><span id="hsbaHearing_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.eyeDiseas"/>:</td><td><span id="hsbaEye_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.dentDiseas"/>:</td><td><span id="hsbaDental_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.cardDiseas"/>:</td><td><span id="hsbaCordiac_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.skinDisea"/>:</td><td><span id="hsbaSkin_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.sexTransDisea"/>:</td><td><span id="hsbaSexualDiseases_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.nueroDisord"/>:</td><td><span id="hsbaNeurological_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.mentHandicap"/>:</td><td><span id="hsbaMentalHandicap_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.phyHandicap"/>:</td><td><span id="hsbaPhysicalHandicap_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.others"/>:</td><td><span id="hsbaOthers_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.stayOfChildPriorAdm"/>:</td><td><span id="childStayPriorAdmission_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>::</td><td><span id="childStayPriorAdmission_other_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.visitOfPrtToChild"/></th></tr>
                <tr><td align="right"><s:text name="label.priorToInstzon"/>:</td><td><span id="vpmcPriorInsti_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.aftetInstzon"/>:</td><td><span id="vpmcAfterInsti_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.visitOfChildToFam"/></th></tr>  
                <tr><td align="right"><s:text name="label.priorToInst"/>:</td><td><span id="vchfPriorInsti_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.afterInst"/>:</td><td><span id="vchfAfterInsti_span"></span></td></tr>
                <tr><th colspan="2" align="center"><s:text name="label.corrWithParents"/></th></tr>  
                <tr><td align="right"><s:text name="label.priorToInstzon"/>:</td><td><span id="cwpPriorInsti_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.aftetInstzon"/>:</td><td><span id="cwpAfterInsti_span"></span></td></tr>
                    
            </table>  
	</form>
        </div>
                             
        
                  </center>
                             
                              <script>
            
             $(function(){
                document.getElementById('dialog-form_CHPD_preview').style.visibility='hidden';
                console.log('sending req');
                
               $.getJSON("CW-Active-ChildList",function(result){
               $.each(result, function(i, field){
                   
                   $("#childProfileId").append("<option value='"+field.childProfileId+"'>"+field.childName+"</option>");
                                   
                 });
              });
                
               // ajax form submit
              console.log(' req done');
            });
            
            
            
              function show_details(val) {
                if(val.value!=1){
            dojo.event.topic.publish("sh_childDetails");
        
                     }
            }
    
        </script>
 </body>
</html>