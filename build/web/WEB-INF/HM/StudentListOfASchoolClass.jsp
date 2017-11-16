<%-- 
    Document   : StudentListOfASchoolClass
    Created on : 7 Feb, 2012, 2:01:56 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
       
        <s:if test="childListForAttendence.size != 0">
        <table border="1">
            <tr>
                <th><s:text name="package.label.StuListSno"/></th>
                <th><s:text name="package.label.attSheetProfId"/></th>
                <th><s:text name="package.label.attSheetChName"/></th>
            </tr>
        <s:iterator value="childListForAttendence" status="stat">
            <tr>
                <td><s:property value="#stat.count"/></td>
                <td><s:property value="childProfileId"/></td>
                <td><s:property value="childName"/></td>
            </tr>
        </s:iterator>
        </table>
        </s:if>
        
        <s:else>
            <s:property value="message"/>
        </s:else>
    </body>
</html>
