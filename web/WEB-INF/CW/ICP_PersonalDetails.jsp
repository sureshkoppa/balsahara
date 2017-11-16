<%-- 
    Document   : ICP_PersonalDetails
    Created on : 11 Oct, 2012, 11:05:01 AM
    Author     : suresh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
   
    <head>
         <sx:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual Care Plan Personal Details</title>
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/ICP_PersonalDetails_valid.jsp"></jsp:include> 
       </script>
        <script>
              function show_details(val) {
                if(val.value!=1){
            dojo.event.topic.publish("sd_childDetails");
        
                     }
            }
    
        </script>
    </head>  

 <body onload="document.getElementById('dialog-form_ICPPD_preview').style.visibility='hidden'">
<center>
    <caption><h1><s:text name="global.heading.persDetails"/></h1></caption>
                        
    <s:form name="icp_personal" action="ICP-Personal-Save" method="POST" theme="css_xhtml" id="icp_personal">
                            <s:hidden name="formName" value="icp_personal"/>
                            
                            <table cellspacing="0">
              
                            <tr><h3></h3></tr>
                            <tr><td align="right"><s:text name="label.profileId"/>:</td><td>
                                 
                                  <select name="childProfileId" id="childProfileId" onchange="javascript:show_details(this);return false;">
                                        <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                        <c:forEach items="${childrenListInAHome}" var="obj">
                                            <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                        </c:forEach>  
                                    </select>
                                
                                </td></tr>
                            </table>     
                
                    <s:url id="d_url" action="ICP-Fetch-Child"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="sd_childDetails" formId="icp_personal" showLoadingText="true">
                 </sx:div>                           
                            
                            
                            
                            
                  <table>
                      <tr><th colspan="2" align="center"><s:text name="heading.summOfCaseHis"/></th></tr>
                      <tr><td align="right"><s:text name="label.icp.heaNeeds"/>:</td><td><s:textarea name="healthNeeds" id="healthNeeds" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="label.icp.emoTrainNeeds"/>:</td><td><s:textarea name="emoTrainNeeds" id="emoTrainNeeds" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="label.icp.leaCreatPlay"/>:</td><td><s:textarea name="leaCreatePlay" id="leaCreatePlay" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="label.icp.attachAndRel"/>:</td><td><s:textarea name="attachRelation" id="attachRelation" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="label.icp.relBeliefs"/>:</td><td><s:textarea name="religBeliefs" id="religBeliefs" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="label.icp.protFromAllAbuMalTreat"/>:</td><td><s:textarea name="protectNeglMalt" id="protectNeglMalt" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="label.icp.socMainStream"/>:</td><td><s:textarea name="socialMainStream" id="socialMainStream" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.followPostRetr"/>:</td><td><s:textarea name="followupPostRel" id="followupPostRel" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 </table>
                 
            
                      <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>
        
                </s:form> 
                
                      <div id="dialog-form_ICPPD_preview" title="<s:text name="js.preview.icpPersDet"/>">
	<form name="icppd_prevwindow">
            <table border="1">
                <tr><td align="right"><s:text name="label.profileId"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.fName"/>:</td><td><span id="childfName_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.lName"/>:</td><td><span id="childlName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.age"/>:</td><td><span id="ageAdmission_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.gender"/>:</td><td><span id="gender_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><span id="fatName_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><span id="matName_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.nationality"/>:</td><td><span id="natlty_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.relg"/>:</td><td><span id="religion_span"></span></td></tr>
                <tr><td align="right"><s:text name="option.oth"/> <s:text name="global.label.relg"/>:</td><td><span id="religion_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><span id="caste_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><span id="subcaste_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.eduAttain"/>:</td><td><span id="eduAttain_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.heaNeeds"/>:</td><td><span id="heaNees_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.emoTrainNeeds"/>:</td><td><span id="emoTrain_span"></span></td></tr>      
                <tr><td align="right"><s:text name="label.icp.leaCreatPlay"/>:</td><td><span id="leaCrePlay_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.attachAndRel"/>:</td><td><span id="attachAndRel_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.relBeliefs"/>:</td><td><span id="relBelf_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.protFromAllAbuMalTreat"/>:</td><td><span id="protAll_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.icp.socMainStream"/>:</td><td><span id="socMainStr_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.followPostRetr"/>:</td><td><span id="followPostRetr_span"></span></td></tr>
            </table>
        </form>
           </div>
</center>
    
    
    
 </body>
</html>