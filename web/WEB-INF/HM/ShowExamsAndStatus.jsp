<%-- 
    Document   : ShowExamsAndStatus
    Created on : 8 Jul, 2011, 10:59:58 AM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h3><u><s:text name="global.heading.ExamViewReg"/></u></h3>
            
            <s:if test="examMasterList.size == 0">
                <s:text name="global.errmsg.HMNoResFoun"/>
            </s:if>
            <s:else>    
         <table border="1" cellpadding="3" cellspacing="3">
                <tr>
                    <td align="center"><b><s:text name="package.label.ExamConExamDate"/></b></td>
                    <td align="center"><b><s:text name="package.label.ExamAttenExamTyp"/></b></td>
                    <td align="center"><b><s:text name="package.label.ExamAttenClass"/></b></td>
                    <td align="center"><b><s:text name="package.label.ExamConExamSubj"/></b></td>
                    <td align="center"><b><s:text name="package.label.ExamConMaxMarks"/></b></td>
                    <td align="center"><b><s:text name="package.label.ShowExamStatus"/></b></td>                    
                </tr>
        <s:iterator value="examMasterList">
           
                <tr>
                    <td align="center"><s:date name="examDate" format="dd/MM/yyyy"/></td>
                    <td align="center"><s:property value="examType" escape="false"/></td>
                    <td align="center"><s:property value="class1" escape="false"/></td>
                    <td align="center"><s:property value="Subject" escape="false"/></td>
                    <td align="center"><s:property value="maxMarks" escape="false"/></td>
                    <td align="center"><s:property value="remarks" escape="false"/></td>
                    <td align="center">
                        <s:url id="shoeExamDetails" action="HM-Exam-View-2-Action">
                        <s:param name="examId">%{examId}</s:param>
                        </s:url>
                        <s:a href="%{shoeExamDetails}"><s:text name="global.errmsg.HMViewDetails"/></s:a>
                    </td>
                </tr>
       </s:iterator>
            </table>
            </s:else>

        </center>
    </body>
</html>
