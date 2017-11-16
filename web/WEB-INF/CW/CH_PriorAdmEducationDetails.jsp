<%-- 
    Document   : CH_PriorAdmEducationDetails
    Created on : Jun 24, 2011, 1:33:22 PM
    Author     : Ramu Parupalli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script type="text/javascript">            
             <jsp:include page="../../javascripts/CH_PriorAdmEdu_Validations.jsp"></jsp:include> 
        </script> 
    </head>    
    <body onload="document.getElementById('dialog-form_CHPriorAdmEdu').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.childPriAdmEduDet"/></b></font></CAPTION> 
            
           
              <s:form action="CH-PriorEducationDetails-Save" method="POST" name="chpreeducation" id="chpreeducation" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chpreeducation"/>
                <table cellspacing="0">
       
                  
                <tr><h3></h3></tr>
                <tr><td align="right"><s:text name="label.profileId"/>:</td>
                    <td>
                        <select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}</option>
                                   </c:forEach>
                            </select>
                    </td></tr>
                            </table>  
                           <table>
                               <tr><td align="right"><s:text name="label.eduDetails"/>:</td><td>
                                       <select name="educationPriorAdmission" id="educationPriorAdmission" headerKey="1" headerValue="--Please Select--"> 
                                           <option value="<s:text name="option.illeterate"/>"><s:text name="option.illeterate"/></option>
                                           <option value="<s:text name="option.stdUptoVstd"/>"><s:text name="option.stdUptoVstd"/></option>
                                           <option value="<s:text name="option.stdAbvVblwVIII"/>"><s:text name="option.stdAbvVblwVIII"/></option>
                                           <option value="<s:text name="option.abvVIIIblwX"/>"><s:text name="option.abvVIIIblwX"/></option>
                                           <option value="<s:text name="option.stdAbvX"/>"><s:text name="option.stdAbvX"/></option>
     
                                       </select>
                                   </td></tr>
                               <tr><td align="right"><s:text name="label.reaForLevSchool"/> :</td><td>
                                       <select name="reasonLeavingSchool" id="reasonLeavingSchool" headerKey="1" headerValue="--Please Select--" onchange="CH_other_dynamic(this,this.id);">
                                           <option value="<s:text name="option.failInLastClassStd"/>"><s:text name="option.failInLastClassStd"/></option>
                                           <option value="<s:text name="option.lackOfIntrSclActivities"/>"><s:text name="option.lackOfIntrSclActivities"/></option>
                                           <option value="<s:text name="option.indiffAttOfTea"/>"><s:text name="option.indiffAttOfTea"/></option>
                                           <option value="<s:text name="option.peerGroupInfl"/>"><s:text name="option.peerGroupInfl"/></option>
                                           <option value="<s:text name="option.toEarnAndsuppFamily"/>"><s:text name="option.toEarnAndsuppFamily"/></option>
                                           <option value="<s:text name="option.suddDemOfPar"/>"><s:text name="option.suddDemOfPar"/></option>
                                           <option value="<s:text name="option.rigidSchlAtmphr"/>"><s:text name="option.rigidSchlAtmphr"/></option>
                                           <option value="<s:text name="option.toEarnAndsuppFamily"/>"><s:text name="option.toEarnAndsuppFamily"/></option>
                                           <option value="<s:text name="option.suddDemOfPar"/>"><s:text name="option.suddDemOfPar"/></option>
                                           <option value="<s:text name="option.rigidSchlAtmphr"/>"><s:text name="option.rigidSchlAtmphr"/></option>
                                           <option value="<s:text name="option.absFollowRunAwayFromSch"/>"><s:text name="option.absFollowRunAwayFromSch"/></option>
                                           <option value="<s:text name="option.indiffAttChildren"/>"><s:text name="option.indiffAttChildren"/></option>
                                           
                                           <option value="<s:text name="option.corpPunishChildren"/>"><s:text name="option.corpPunishChildren"/></option>
                                           <option value="Not Applicable">Not Applicable</option>
                                           <option value="<s:text name="Others"/>"><s:text name="option.others"/></option>
                                                
                                       </select>  
                                       </td></tr>
                               <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="reasonLeavingSchool_other" id="reasonLeavingSchool_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                               <tr><td align="right"><s:text name="label.schoolStuLast"/>:</td>
                                   <td><select name="detailsSchoolStudied" id="detailsSchoolStudied" headerKey="1" headerValue="--Please Select--">
                                           <option value="<s:text name="option.corporation"/>"><s:text name="option.corporation"/></option>
                                           <option value="<s:text name="option.muncipal"/>"><s:text name="option.muncipal"/></option>
                                           <option value="<s:text name="option.panchUnion"/>"><s:text name="option.panchUnion"/></option>
                                           <option value="<s:text name="option.gov"/>"><s:text name="option.gov"/></option>
                                           <option value="<s:text name="option.govSCWelSchool"/>"><s:text name="option.govSCWelSchool"/></option>
                                           <option value="<s:text name="option.govBCWelSch"/>"><s:text name="option.govBCWelSch"/></option>
                                           <option value="<s:text name="option.conv"/>"><s:text name="option.conv"/></option>
                                           <option value="<s:text name="option.minWFHostel"/>"><s:text name="option.minWFHostel"/></option>
                                           <option value="<s:text name="option.resSchool"/>"><s:text name="option.resSchool"/></option>
                                           <option value="<s:text name="option.bridgeSch"/>"><s:text name="option.bridgeSch"/></option>
                                           <option value="Not Applicable">Not Applicable</option>
                                       </select> </td></tr>
                               <tr><td align="right"><s:text name="label.medOfInstr"/>:</td><td>
                                       <select name="mediumInstruction" id="mediumInstruction" headerKey="1" headerValue="--Please Select--" onchange="CH_other_dynamic(this,this.id);">
                                           <option value="<s:text name="option.lang.Tel"/>"><s:text name="option.lang.Tel"/></option>
                                           <option value="<s:text name="option.lang.Eng"/>"><s:text name="option.lang.Eng"/></option>
                                           <option value="<s:text name="option.lang.urdu"/>"><s:text name="option.lang.urdu"/></option>
                                           <option value="<s:text name="option.lang.tamil"/>"><s:text name="option.lang.tamil"/></option>
                                           <option value="<s:text name="option.lang.malayalam"/>"><s:text name="option.lang.malayalam"/></option>
                                           <option value="<s:text name="option.lang.kannada"/>"><s:text name="option.lang.kannada"/></option>
                                           <option value="Not Applicable">Not Applicable</option>
                                           <option value="Others"><s:text name="option.lang.othLang"/></option>
                                           
                                       </select>  </td></tr>
                               <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="mediumInstruction_other" id="mediumInstruction_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                           </table>
                               <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/></center>    
                          </s:form>
                            
        <div id="dialog-form_CHPriorAdmEdu" title="<s:text name="js.preview.chiPrAdmEduDet"/>">
	<form name="CHPriorAdmEdu_prevwindow">
             <table border="1">
                <tr><td align="right"><s:text name="global.label.childProID"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.eduDetails"/>:</td><td><span id="educationPriorAdmission_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.reaForLevSchool"/>:</td><td><span id="reasonLeavingSchool_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="reasonLeavingSchool_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.schoolStuLast"/>:</td><td><span id="detailsSchoolStudied_span"></span></td></tr>
                
                <tr><td align="right"><s:text name="label.medOfInstr"/>:</td><td><span id="mediumInstruction_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="mediumInstruction_other_span"></span></td></tr>
                              
               </table>  
	</form>
        </div> 
                            
                            
                            
        </center>
    </body>
</html>
              