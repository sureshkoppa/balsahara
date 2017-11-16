<%-- 
    Document   : CH_SocialHistory
    Created on : Jun 25, 2011, 11:32:53 AM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <script type="text/javascript">            
             <jsp:include page="../../javascripts/CH_SocialHistory_Validations.jsp"></jsp:include> 
        </script>        
    </head>   
    <body onload="document.getElementById('dialog-form_CHSocialHistory').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.chiSocHisDet"/></b></font></CAPTION> 
            
           
              <s:form action="CH-SocialHistoryDetails-Save" method="POST" name="chsocial" id="chsocial" theme="css_xhtml"> 
                                      
       <s:hidden name="formName" value="chsocial"/>
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
                                <tr><td align="right"><s:text name="label.detFrdshipPriorAdm"/>:</td>
                                    <td><select name="friendshipDetails" id="friendshipDetails"  onchange="CH_other_dynamic(this,this.id);">
                                            <option value="<s:text name="option.coWrkrs"/>"><s:text name="option.coWrkrs"/></option>
                                            <option value="<s:text name="option.schoolOrClsmates"/>"><s:text name="option.schoolOrClsmates"/></option>
                                            <option value="<s:text name="option.neighbrs"/>"><s:text name="option.neighbrs"/></option>
                                            <option value="Others"><s:text name="option.other"/></option>                                            
                                        </select> 
                                    </td></tr>
                                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="friendshipDetails_other" id="friendshipDetails_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>  
                                <tr><td align="right"><s:text name="label.mjrtyOfFrdsAre"/> :</td>
                                    <td><select name="friendsMajority" id="friendsMajority" >
                                             <option value="<s:text name="option.eductd"/>"><s:text name="option.eductd"/></option>
                                             <option value="<s:text name="option.illeterate"/>"><s:text name="option.illeterate"/></option>
                                             <option value="<s:text name="option.sameAgeGrp"/>"><s:text name="option.sameAgeGrp"/></option>
                                             <option value="<s:text name="option.olderInAge"/>"><s:text name="option.olderInAge"/></option>
                                             <option value="<s:text name="option.yngrInAge"/>"><s:text name="option.yngrInAge"/></option>
                                             <option value="<s:text name="option.sameSex"/>"><s:text name="option.sameSex"/></option>
                                             <option value="<s:text name="option.oppSex"/>"><s:text name="option.oppSex"/></option>
                                        </select> </td></tr>
                                <tr><td align="right"><s:text name="label.detMemshipInGrp"/>:</td>
                                    <td><select name="membershipGroups" id="membershipGroups" >
                                            <option value="<s:text name="option.assCineFansAssoc"/>"><s:text name="option.assCineFansAssoc"/></option>
                                            <option value="<s:text name="option.assWithRelGrp"/>"><s:text name="option.assWithRelGrp"/></option>
                                            <option value="<s:text name="option.assWithArtsSprtsClub"/>"><s:text name="option.assWithArtsSprtsClub"/></option>
                                            <option value="<s:text name="option.assWithGangs"/>"><s:text name="option.assWithGangs"/></option>
                                            <option value="<s:text name="option.assVolSchoolGrps"/>"><s:text name="option.assVolSchoolGrps"/></option>
                                            <option value="<s:text name="option.other"/>"><s:text name="option.other"/></option>
                                        </select> 
                                    </td></tr>   
                                <tr><td align="right"><s:text name="label.plsSpecDetails"/>:</td><td><s:textfield name="membershipDetails" id="membershipDetails" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                                <tr><td align="right"><s:text name="label.posOfChildInGrp"/>:</td>
                                    <td><select name="positionGroups" id="positionGroups" >
                                            <option value="<s:text name="option.leaders"/>"><s:text name="option.leaders"/></option>
                                            <option value="<s:text name="option.secLevlLeader"/>"><s:text name="option.secLevlLeader"/></option>
                                            <option value="<s:text name="option.midLvlFunc"/>"><s:text name="option.midLvlFunc"/></option>
                                            <option value="<s:text name="option.ordMem"/>"><s:text name="option.ordMem"/></option>                                            
                                        </select> </td></tr>   
                                <tr><td align="right"><s:text name="label.purpTakMemInGrp"/>:</td>
                                    <td><select name="purposeMembership" id="purposeMembership"  onchange="CH_other_dynamic(this,this.id);">
                                            <option value="<s:text name="option.forSocServActi"/>"><s:text name="option.forSocServActi"/></option>
                                            <option value="<s:text name="option.forLeisTimeSpending"/>"><s:text name="option.forLeisTimeSpending"/></option>
                                            <option value="<s:text name="option.pleaAskingAct"/>"><s:text name="option.pleaAskingAct"/></option>
                                            <option value="<s:text name="option.forDeviActi"/>"><s:text name="option.forDeviActi"/></option>
                                            <option value="Others"><s:text name="option.others"/></option>
                                        </select>  </td></tr>   
                               <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="purposeMembership_other" id="purposeMembership_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                               <tr><td align="right"><s:text name="label.attOfGrp"/>:</td>
                                   <td><select name="attitudeGroup" id="attitudeGroup" >
                                           <option value="<s:text name="option.resSocNormsAndRules"/>"><s:text name="option.resSocNormsAndRules"/></option>
                                           <option value="<s:text name="option.intInViolNorms"/>"><s:text name="option.intInViolNorms"/></option>
                                           <option value="<s:text name="option.implInViolRules"/>"><s:text name="option.implInViolRules"/></option>
                                           
                                       </select> </td></tr>   
                               <tr><td align="right"><s:text name="label.locMeetPtOfGrp"/>:</td>
                                   <td><select name="meetingPointGroup" id="meetingPointGroup" >
                                           <option value="<s:text name="option.usallyAtFixedPlace"/>"><s:text name="option.usallyAtFixedPlace"/></option>
                                           <option value="<s:text name="option.placesChangeFrqtly"/>"><s:text name="option.placesChangeFrqtly"/></option>
                                           <option value="<s:text name="option.noSpecPlaces"/>"><s:text name="option.noSpecPlaces"/></option>
                                           <option value="<s:text name="option.meetPtFixConv"/>"><s:text name="option.meetPtFixConv"/></option>
                                       </select>
                                    </td></tr>   
                               <tr><td align="right"><s:text name="label.reaSocChildFirstComeOutFam"/>:</td>
                                   <td><select name="reactionSocity" id="reactionSocity" >
                                           <option value="<s:text name="option.supportive"/>"><s:text name="option.supportive"/></option>
                                           <option value="<s:text name="option.rejectn"/>"><s:text name="option.rejectn"/></option>
                                           <option value="<s:text name="option.abuse"/>"><s:text name="option.abuse"/></option>
                                           <option value="<s:text name="option.illTreatmnt"/>"><s:text name="option.illTreatmnt"/></option>
                                           <option value="<s:text name="option.exploit"/>"><s:text name="option.exploit"/></option>
                                       </select> 
                                   </td></tr>
                               <tr><td align="right"><s:text name="label.reaPloiceWithChildDealt"/>:</td>
                                   <td><select name="reactionPolice" id="reactionPolice" >
                                           <option value="<s:text name="option.passionate"/>"><s:text name="option.passionate"/></option>
                                           <option value="<s:text name="option.cruel"/>"><s:text name="option.cruel"/></option>
                                           <option value="<s:text name="option.abuse"/>"><s:text name="option.abuse"/></option>
                                           <option value="<s:text name="option.illTreatmnt"/>"><s:text name="option.illTreatmnt"/></option>
                                           <option value="<s:text name="option.exploit"/>"><s:text name="option.exploit"/></option>
                                           
                                       </select> 
                                   </td></tr>
                               <tr><td align="right"><s:text name="label.respGenPubTwrdsChild"/>:</td><td><s:textarea name="responsePublic" id="responsePublic" theme="css_xhtml" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                                   </table>
                               <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/></center>     
                 </s:form>
                
                               <div id="dialog-form_CHSocialHistory" title="<s:text name="js.preview.chiFamSocHis"/>">
	<form name="CHSocialHistory_prevwindow">
             <table border="1">
                 <tr><td align="right"><s:text name="label.profileId"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.detFrdshipPriorAdm"/>:</td><td><span id="friendshipDetails_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="friendshipDetails_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.mjrtyOfFrdsAre"/>:</td><td><span id="friendsMajority_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.detMemshipInGrp"/>:</td><td><span id="membershipGroups_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.plsSpecDetails"/>:</td><td><span id="membershipDetails_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.posOfChildInGrp"/>:</td><td><span id="positionGroups_span"></span></td></tr>
                
                <tr><td align="right"><s:text name="label.purpTakMemInGrp"/>:</td><td><span id="purposeMembership_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="purposeMembership_other_span"></span></td></tr>
                    <tr><td align="right"><s:text name="label.attOfGrp"/>:</td><td><span id="attitudeGroup_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.locMeetPtOfGrp"/>:</td><td><span id="meetingPointGroup_span"></span></td></tr>
                
                <tr><td align="right"><s:text name="label.reaSocChildFirstComeOutFam"/>:</td><td><span id="reactionSocity_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.reaPloiceWithChildDealt"/>:</td><td><span id="reactionPolice_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.respGenPubTwrdsChild"/>:</td><td><span id="responsePublic_span"></span></td></tr>
                                
               </table>  
	</form>
        </div>
                          
                          
        </center>
    </body>
</html>