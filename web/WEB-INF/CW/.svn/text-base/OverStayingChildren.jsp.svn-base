<%-- 
    Document   : OverStayingChildren
    Created on : 13 Jul, 2012, 3:11:00 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><s:text name="label.overStayChldren"/></h1>
        <h2><s:text name="label.childWhoStayedMT4months"/>.</h2>
        <table border="1">
            <tr>
                <th><s:text name="global.label.childProID"/></th>
                <th><s:text name="label.childName"/></th>
                <th><s:text name="global.label.dateOfAdm"/></th>
                <th><s:text name="label.numOfMonthsStayed"/></th>
                <th><s:text name="label.action"/></th>
            </tr>
            <s:iterator value="stayingPeriodOfChildDTOList">
            <tr>
                <td><s:property value="childProfileId"/></td>
                <td><s:property value="childName"/></td>
                <td><s:date name="dateOfAdmission" format="dd/MM/yyyy" /></td>
                <td><s:property value="noOfMonthsStayed"/></td>
                <td><s:a href="CW-Discharge?childProfileId=%{childProfileId}"><s:text name="label.disNow"/></s:a></td>
            </tr>
            </s:iterator>
        </table>
    </body>
   
</html>
