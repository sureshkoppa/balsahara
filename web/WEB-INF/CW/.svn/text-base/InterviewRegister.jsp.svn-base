<%-- 
    Document   : InterviewRegister
    Created on : Jun 21, 2011, 3:14:38 PM
    Author     : Ramu Parupalli
--%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/InterviewRegister_Validation.jsp"></jsp:include> 
        </script>
        <sx:head parseContent="true"/>
    </head>
    <body onload="document.getElementById('dialog-form_Interview_preview').style.visibility='hidden'">
         <center>
             <CAPTION><font size="3"><b><s:text name="heading.interviewReg"/></b></font></CAPTION>
        <s:form name="InterviewReg" id="InterviewReg" action="DS-Interview_Save" method="POST" theme="css_xhtml">
            <table>
        
               <s:hidden name="formName" value="InterviewReg"/>
               <tr><td align="right"><s:text name="label.nameAndProId" /></td>
                   <td>
                   <select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childrenListInAHome}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                   </c:forEach>
                            </select>
                   
                   </td></tr>
               <tr><td align="right"><s:text name="label.dateOfVisit"/>:</td><td><s:textfield  name="interviewDate_String" id="datepicker"/></td></tr>
                <tr><td align="right"> <s:text name="label.timeOfVisit"/>:</td>
                  <td>  
                    <sx:datetimepicker type="time" name="interviewTime_String" id="interviewTime_String"/>   
                    </td>
                  </tr>
                <tr><td align="right"><s:text name="label.nameOfVisitor"/>:</td><td><s:textfield name="interviewer" id="interviewer" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.relShipWthChild"/>:</td><td><s:textfield name="relationshipChild" id="relationshipChild" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.addrAndContNumOfVis"/>:</td><td><s:textarea name="addrInterviewer" id="addrInterviewer" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.behAndAttOfChild"/></td></tr><br/><br/>
                <tr><td align="right"><s:text name="label.durInterVisitor"/>:<br/><br/><s:text name="label.exDisComfLoudAngry"/></td><td><s:textarea name="childBehaviourInt" id="childBehaviourInt" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.aftDeparOfVisitor"/>:<br/><br/><s:text name="label.exSolCryAngryEtc"/></td><td><s:textarea name="childBehaviourAfterInt" id="childBehaviourAfterInt" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.suggFollowUpAction"/></td><td><s:textarea name="suggestedAction" id="suggestedAction" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.remOfSuper"/>:</td><td><s:textarea name="remarksSuper" id="remarksSuper" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.submit"/>" align="center"/></td></tr>
            </table>
           </s:form>
         
            
              <div id="dialog-form_Interview_preview" title="Visitors Register Preview">
                  <form name="Interview_prevwindow">
                      <table border="1">
                          <tr><td align="right"><s:text name="global.label.childProID"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                          <tr><td align="right"><s:text name="label.dateOfVisit"/>:</td><td><span id="interviewDate_String_span"></span></td></tr>
                          <tr><td align="right"><s:text name="label.nameOfVisitor"/>:</td><td><span id="interviewer_span"></span></td></tr>
                          <tr><td align="right"><s:text name="label.relShipWthChild"/>:</td><td><span id="relationshipChild_span"></span></td></tr>
                          <tr><td align="right"><s:text name="label.addrAndContNumOfVis"/>:</td><td><span id="addrInterviewer_span"></span></td></tr>
                         <tr><td align="right"><s:text name="label.behAndAttOfChild"/><br/> <s:text name="label.durInterVisitor"/>:</td><td><span id="childBehaviourInt_span"></span></td></tr>
                         <tr><td align="right"><s:text name="label.behAndAttOfChild"/><br/> <s:text name="label.aftDeparOfVisitor"/>:</td><td><span id="childBehaviourAfterInt_span"></span></td></tr>
                         <tr><td align="right"><s:text name="label.suggFollowUpAction"/>:</td><td><span id="suggestedAction_span"></span></td></tr>
                         <tr><td align="right"><s:text name="label.remOfSuper"/>:</td><td><span id="remarksSuper_span"></span></td></tr>
                  </table>
                </form>
              </div>
                </center>
       
    </body>
</html>
