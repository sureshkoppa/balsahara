<%-- 
    Document   : SheduledExamRegister
    Created on : 7 Jul, 2011, 11:34:34 AM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>

<html>
    <head>
       <script>
        <%--jsp:include page="../../javascripts/HM_scheduledExamsForm_validation.jsp"></jsp:include--%> 
        </script>
    </head>
    <body>
        <center>
            <s:form name="scheduledExamsForm" id="scheduledExamsForm" action="HM-Save-ScheduledExam-Att" method="POST" theme="css_xhtml">
            <table>
                <tr>
                    <td><s:text name="package.label.ExamMarksSelExam"/>:</td>
                    <td><select name="examId" id="examId">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="examMasterList">
        <option value='<s:property value='examId'/>'><s:property value='class1'/>--<s:property value='subject' escape="false"/>--<s:property value='examType' escape="false"/>--<s:property value='examDate'/></option>
    </s:iterator>
    </select><%--s:select name="examId" id="examId" list="examMasterList" listKey="examId" listValue="%{class1+'--'+subject+'--'+examType+'--'+examDate}" headerKey="-1" headerValue="----please select----"/--%></td>
                    
                </tr>
                <tr>
                   <%-- <td><s:submit value="submit new"/></td> --%>
                   <td colspan="2" Align="center"><input type="submit" value="<s:text name="global.button.hmTakeAttend"/>"/></td>
                </tr>
            </table>
        </s:form>
        </center>
    </body>
</html>
