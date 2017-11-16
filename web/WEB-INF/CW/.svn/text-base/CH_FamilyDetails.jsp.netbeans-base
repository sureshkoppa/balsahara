<%-- 
    Document   : CH_FamilyDetails
    Created on : Jun 23, 2011, 1:55:25 PM
    Author     : Ramu Parupalli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/CH_FamilyDetails_validations.jsp"></jsp:include> 
        </script>
       
    </head>    
    <body onload="document.getElementById('dialog-form_CHFamily').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.childFamDetails"/></b></font></CAPTION> 
            
           
              <s:form action="CH-FamilyDetails-Save" method="POST" name="chfamily" id="chfamily" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chfamily"/>
                <table cellspacing="0">
       
                <tr><h3></h3></tr>
                <tr><td align="right"><s:text name="label.profileId"/>:</td>
                    <td><select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}</option>
                                   </c:forEach>
                            </select>
                    </td></tr>
                            </table>   
                            <table>
                                <tr><td align="right"><s:text name="label.typeOfFamily"/>:</td>
                                    <td><select name="familyType" id="familyType">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.nucFamily"/>"><s:text name="label.nucFamily"/></option>
                                            <option value="<s:text name="label.extFamily"/>"><s:text name="label.extFamily"/></option>
                                            <option value="<s:text name="label.joinFamily"/>"><s:text name="label.joinFamily"/></option>
                                            <option value="<s:text name="label.brkFamily"/>"><s:text name="label.brkFamily"/></option>
                                        </select>  </td></tr>
                 
                                <tr><th colspan="2" align="center"><s:text name="label.relAmongFamMem"/></th></tr> 
                                <tr><td align="right"><s:text name="label.fatAndMot"/>:</td>
                                    <td><select name="fmRelation" id="fmRelation">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.cordial"/>"><s:text name="label.cordial"/></option>
                                            <option value="<s:text name="label.nonCor"/>"><s:text name="label.nonCor"/></option>
                                            <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                        </select> </td></tr>
                                <tr><td align="right"><s:text name="label.fatAndChild"/>:</td>
                                    <td><select name="fcRelation" id="fcRelation">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.cordial"/>"><s:text name="label.cordial"/></option>
                                            <option value="<s:text name="label.nonCor"/>"><s:text name="label.nonCor"/></option>
                                            <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                        </select> </td></tr>
                                <tr><td align="right"><s:text name="label.motAndChild"/>:</td>
                                    <td><select name="mcRelation" id="mcRelation">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.cordial"/>"><s:text name="label.cordial"/></option>
                                            <option value="<s:text name="label.nonCor"/>"><s:text name="label.nonCor"/></option>
                                            <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                        </select> </td></tr>
                                <tr><td align="right"><s:text name="label.fatAndSibl"/>:</td>
                                    <td><select name="fsRelation" id="fsRelation">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.cordial"/>"><s:text name="label.cordial"/></option>
                                            <option value="<s:text name="label.nonCor"/>"><s:text name="label.nonCor"/></option>
                                            <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                        </select> </td></tr>
                                <tr><td align="right"><s:text name="label.motAndSibl"/>:</td>
                                    <td><select name="msRelation" id="msRelation">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.cordial"/>"><s:text name="label.cordial"/></option>
                                            <option value="<s:text name="label.nonCor"/>"><s:text name="label.nonCor"/></option>
                                            <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                        </select> </td></tr>
                                <tr><td align="right"><s:text name="label.juvAndSibl"/>:</td>
                                    <td><select name="jsRelation" id="jsRelation">
                                            <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                            <option value="<s:text name="label.cordial"/>"><s:text name="label.cordial"/></option>
                                            <option value="<s:text name="label.nonCor"/>"><s:text name="label.nonCor"/></option>
                                            <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                        </select> </td></tr>
                       
                       
                       
                       
                         <tr><th colspan="2" align="center"><s:text name="label.propOwnedByFam"/></th></tr> 
                         <tr><td align="right"><s:text name="label.landProp"/>:</td><td><s:textarea name="propertyFamilyLanded" id="propertyFamilyLanded" cols="20" rows="2"/></td></tr>
                         <tr><td align="right"><s:text name="label.houHoldArticles"/>:</td>
                             <td><select name="propertyFamilyHousehold" id="propertyFamilyHousehold">
                                          <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                          <option value="<s:text name="option.cows"/>"><s:text name="option.cows"/></option>
                                          <option value="<s:text name="option.cattle"/>"><s:text name="option.cattle"/></option>
                                          <option value="<s:text name="option.bull"/>"><s:text name="option.bull"/></option>
                                          <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                 </select> </td></tr>    
                         <tr><td align="right"><s:text name="label.vehicles"/>:</td>
                             <td><select name="propertyFamilyVehicals" id="propertyFamilyVehicals" onchange="CH_FamilyVehicle_dynamic(this);">
                                          <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                          <option value="<s:text name="option.twoWheeler"/>"><s:text name="option.twoWheeler"/></option>
                                          <option value="<s:text name="option.threeWheeler"/>"><s:text name="option.threeWheeler"/></option>
                                          <option value="four_wheeler"><s:text name="option.fourWheeler"/></option>
                                          <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                 </select>   </td></tr>    
                         <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td>
                             <td><select name="propertyFamilyVehicals_other" id="propertyFamilyVehicals_other" disabled="true">
                                           <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                           <option value="<s:text name="option.lorry"/>"><s:text name="option.lorry"/></option>
                                           <option value="<s:text name="option.bus"/>"><s:text name="option.bus"/></option>
                                           <option value="<s:text name="option.car"/>"><s:text name="option.car"/></option>
                                           <option value="<s:text name="option.tractr"/>"><s:text name="option.tractr"/></option>
                                           <option value="<s:text name="option.jeep"/>"><s:text name="option.jeep"/></option>
                                           <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                 </select>  </td></tr>              
                         <tr><td align="right"><s:text name="option.other"/> (<s:text name="global.label.plsSpec"/>):</td><td><s:textarea name="propertyFamilyOthers" id="propertyFamilyOthers" cols="20" rows="2"/></td></tr> 
                            
                         <tr><th colspan="2" align="center"><s:text name="label.marrDetFamMem"/></th></tr> 
                         <tr><td align="right"><s:text name="label.parents"/>:</td>
                             <td><select name="marriageDetailsParents" id="marriageDetailsParents">
                                         <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                         <option value="<s:text name="option.arranged"/>"><s:text name="option.arranged"/></option>
                                         <option value="<s:text name="option.splMarriage"/>"><s:text name="option.splMarriage"/></option>
                                         <option value="<s:text name="option.locUnion"/>"><s:text name="option.locUnion"/></option>
                                         <option value="<s:text name="option.liveInRel"/>"><s:text name="option.liveInRel"/></option>
                                         <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                 </select>  </td></tr>
                         <tr><td align="right"><s:text name="label.brothers"/>:</td>
                             <td><select name="marriageDetailsBrothers" id="marriageDetailsBrothers">
                                         <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                         <option value="<s:text name="option.arranged"/>"><s:text name="option.arranged"/></option>
                                         <option value="<s:text name="option.splMarriage"/>"><s:text name="option.splMarriage"/></option>
                                         <option value="<s:text name="option.locUnion"/>"><s:text name="option.locUnion"/></option>
                                         <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                 </select> </td></tr>
                             <tr><td align="right"><s:text name="label.sisters"/>:</td>
                                 <td><select name="marriageDetailsSisters" id="marriageDetailsSisters">
                                         <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                         <option value="<s:text name="option.arranged"/>"><s:text name="option.arranged"/></option>
                                         <option value="<s:text name="option.splMarriage"/>"><s:text name="option.splMarriage"/></option>
                                         <option value="<s:text name="option.locUnion"/>"><s:text name="option.locUnion"/></option>
                                         <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                     </select> </td></tr>
                             
                             <tr><td align="right"><s:text name="label.socActFamMembers"/>:</td>
                                 <td><select name="socialActivityFamily" id="socialActivityFamily">
                                         <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                         <option value="<s:text name="label.partSocAndRelFun"/>"><s:text name="label.partSocAndRelFun"/></option>
                                         <option value="<s:text name="label.partCultAct"/>"><s:text name="label.partCultAct"/></option>
                                         <option value="<s:text name="label.doesNotSocAndRelFun"/>"><s:text name="label.doesNotSocAndRelFun"/></option>
                                         <option value="<s:text name="option.notKnow"/>"><s:text name="option.notKnow"/></option>
                                         
                                     </select>
                                      
                                     
                                     </td></tr>
                            
                             <tr><td align="right"><s:text name="label.socCareTowBfrAdm"/>:</td>
                                 <td><select name="parentalCareJuvnileBeforeAdmission" id="parentalCareJuvnileBeforeAdmission">
                                         <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                         <option value="<s:text name="label.overProtect"/>"><s:text name="label.overProtect"/></option>
                                         <option value="<s:text name="label.affectionate"/>"><s:text name="label.affectionate"/></option>
                                         <option value="<s:text name="label.attentive"/>"><s:text name="label.attentive"/></option>
                                         <option value="<s:text name="label.notAffecti"/>"><s:text name="label.notAffecti"/></option>
                                         <option value="<s:text name="label.notAtten"/>"><s:text name="label.notAtten"/></option>
                                         <option value="<s:text name="label.rejectn"/>"><s:text name="label.rejectn"/></option>
                                         <option value="<s:text name="label.na"/>"><s:text name="label.na"/></option>
                                     </select> </td></tr>
                            
                            </table>       
                                         <center> <input type="submit" value="<s:text name="button.save"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>
              </s:form>
                      
                             
                                         <div id="dialog-form_CHFamily" title="<s:text name="js.preview.chiFamDet"/>">
	<form name="CHFamily_prevwindow">
             <table border="1">
                 <tr><td align="right"><s:text name="global.label.childProID"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.typeOfFamily"/>:</td><td><span id="familyType_span"></span></td></tr>
                 <tr><th colspan="2" align="center"><s:text name="label.relAmongFamMem"/></th></tr> 
                 
                 <tr><td align="right"><s:text name="label.fatAndMot"/>:</td><td><span id="fmRelation_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.fatAndChild"/>:</td><td><span id="fcRelation_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.motAndChild"/>:</td><td><span id="mcRelation_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.fatAndSibl"/>:</td><td><span id="fsRelation_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.motAndSibl"/>:</td><td><span id="msRelation_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.juvAndSibl"/>:</td><td><span id="jsRelation_span"></span></td></tr>
                 <tr><th colspan="2" align="center"><s:text name="label.propOwnedByFam"/></th></tr> 
                
                 <tr><td align="right"><s:text name="label.landProp"/>:</td><td><span id="propertyFamilyLanded_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.houHoldArticles"/>:</td><td><span id="propertyFamilyHousehold_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.vehicles"/>:</td><td><span id="propertyFamilyVehicals_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="propertyFamilyVehicals_other_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.ifAnyPlsspec"/>:</td><td><span id="propertyFamilyOthers_span"></span></td></tr>
                
                 <tr><th colspan="2" align="center"><s:text name="label.marrDetFamMem"/></th></tr> 
                 
                 <tr><td align="right"><s:text name="label.parents"/>:</td><td><span id="marriageDetailsParents_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.brothers"/>:</td><td><span id="marriageDetailsBrothers_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.sisters"/>:</td><td><span id="marriageDetailsSisters_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.socActFamMembers"/>:</td><td><span id="socialActivityFamily_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.socCareTowBfrAdm"/>:</td><td><span id="parentalCareJuvnileBeforeAdmission_span"></span></td></tr>
               </table>  
	</form>
        </div>
                   
                             
                             
        </center>
    </body>
</html>
