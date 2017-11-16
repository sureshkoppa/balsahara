<%-- 
    Document   : ViewMarksAndAttendence
    Created on : 7 Jul, 2011, 11:08:19 AM
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
        <table>
            <tr>
                <td align="center"><b><s:text name="package.label.ExamMarksChProfId" /></b></td>
                <td align="center"><b><s:text name="package.label.ExamMarksEnMarObt" /></b></td>
            </tr>
            <s:iterator value="examMarksList"> 
             <tr>
                 <td align="center"><s:property value="examMarksPK.childProfileId"/></td>
                 <td align="center">
                     <s:if test="marksObtained==-1">
                         <s:text name="package.label.viewMarksNotEnt" />
                     </s:if>
                     <s:elseif test="marksObtained==-2">
                         <s:text name="package.selectOption.attenSheetAbs" />
                     </s:elseif>
                     <s:else>
                         <s:property value="marksObtained"/>
                     </s:else>
                     
                 </td>
            </tr>
            </s:iterator>
        </table>
    </center>
    </body>
</html>
