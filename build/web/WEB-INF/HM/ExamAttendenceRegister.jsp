<%-- 
    Document   : ExamAttendenceRegister
    Created on : 2 Jul, 2011, 3:22:20 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center><h2><u><s:text name="global.heading.ExamAttenReg"/></u></h2></center>
        <s:form action="HM-Exam-Att-Save">
       <center>
           <h3>
               <%--s:property value="examMaster"/--%><br>
               <s:push value="examMaster">
                   
                <s:text name="package.label.ExamConExamDate" />:<s:date name="examDate" format="dd/MM/yyyy" /><br>
                <s:text name="package.label.ExamAttenExamId" />:<s:property value="examId"/><br><s:hidden name="examId" value="%{examId}"/>
                <s:text name="package.label.ExamAttenExamTyp" />:<s:property value="examType"/><br>
                <s:text name="package.label.ExamAttenClass" />:<s:property value="class1"/><br><br></hr>
               </s:push>
          </h3>
          
        <%-- <s:property value="schoolStudentDTOs"/> --%>
                <table border="1" align="center">
    <tr>
    <td><s:text name="package.label.attSheetProfId" /></td>
    <td><s:text name="package.label.attSheetChName" /></td>
    <td><s:text name="package.label.attSheetPreAbs" /></td>
    </tr>
    
   <%-- <s:iterator value="childListForAttendence"> --%>
   <s:iterator value="schoolStudentDTOs">
        <tr>
            <td><s:property value="profileId"/><s:hidden name="childProfileId" value="%{profileId}"/> </td>
            <td><s:property value="name"/> </td>
            <td><s:select name="abpr" list="#{'p':'Present','a':'Absent'}" theme="simple"/>
                         
               
            </td>        
        
        </tr>
    
    </s:iterator>
        <tr>
            <td colspan="3" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td>
        </tr>
    
</table>
               
       </center>
                </s:form>
    </body>
    
</html>
