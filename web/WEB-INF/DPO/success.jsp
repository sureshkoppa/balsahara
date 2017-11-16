<%-- 
    Document   : success
    Created on : Jun 1, 2011, 7:26:11 PM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1><font color="green"><s:text name="message.sucOper"/></font></h1><br><br>
        <h2><font color="blue"> <s:property value="message" escape="false"/></font></h2>
        </center>
    </body>
</html>
