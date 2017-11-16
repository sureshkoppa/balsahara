<%-- 
    Document   : CH_AfterAdmEducationDetails
    Created on : Jun 24, 2011, 5:11:02 PM
    Author     : Ramu Parupalli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
    <head>
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/CH_AfterAdmEdu_Validations.jsp"></jsp:include> 
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body  onload="document.getElementById('dialog-form_CHAfterAdmEdu').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.childEduAfterAdm"/> </b></font></CAPTION> 
            
           
              <s:form action="CH-AfterEducationDetails-Save" method="POST" name="chaftereducation" id="chaftereducation" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chaftereducation"/>
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
  
                            <table border="1" id="CHAE">
                         <thead>
                             <tr><th><s:text name="label.select"/></th><th><s:text name="label.yearOfAdm"/></th><th><s:text name="label.typeOfAdm"/></th><th><s:text name="label.classNameOfTrade"/></th><th><s:text name="label.detIfReq"/></th><th><s:text name="label.profOrRes"/></th><th><s:text name="label.yearOfCompl"/></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                        <td><s:textarea id="yearAdmission" name="yearAdmission" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                        <td><select name="typeAdmission" id="typeAdmission" headerKey="1" headerValue="--Please Select--">
                                <option value="Education"><s:text name="label.edu"/></option>
                                <option value="Vocational Trade"><s:text name="label.vocTrade"/></option>
                                <option value="Extra curricular"><s:text name="label.extraCurr"/></option>
                            </select> 
                        </td>
                       <td><s:textarea id="nameAdmission" name="nameAdmission" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="detailsAdmission" name="detailsAdmission" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="proficiency" name="proficiency" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="yearCompletion" name="yearCompletion" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       
                   </tr>
                 </table>
                    <INPUT type="button" value="<s:text name="label.addRow"/>" onclick="addRow('CHAE')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="label.delRow"/>" onclick="deleteRow('CHAE')"/>
                    <table>
                        <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.save"/>" align="center"/></td></tr>
                    </table>   
               </s:form>
                 
        <div id="dialog-form_CHAfterAdmEdu" title="<s:text name="js.preview.chiAftAdmEduDet"/>">
	<form name="CHAfterAdmEdu_prevwindow">
            <s:text name="label.profileId"/>:&nbsp;&nbsp;&nbsp;&nbsp;<span id="childProfileId_span"></span>
	<table border="1" id="ch_AfterAdmEdu_span">
            <thead>
             <tr>
                 <th><s:text name="option.serialNo"/></th>
                 <th><s:text name="label.yearOfAdm"/></th>
                 <th><s:text name="label.typeOfAdm"/></th>
                 <th><s:text name="label.classNameOfTrade"/></th>
                 <th><s:text name="label.detIfReq"/></th>
                 <th><s:text name="label.profOrRes"/></th>
                 <th><s:text name="label.yearOfCompl"/></th>
              </tr>
            </thead>
            <tbody>
             <tr>
             </tr>
            </tbody>
        </table>
	</form>
        </div>     
                     
                     
        </center>
    </body>
</html>


