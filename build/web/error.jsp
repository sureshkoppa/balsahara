<%-- 
    Document   : error
    Created on : Mar 11, 2011, 6:58:00 PM
    Author     : ramu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        
        <center>
            <h1><font color="red"><s:text name="label.err.error"/>!!!</font></h1>
        <br><br>
        <s:property value="message" escape="false"/>
       
        <s:actionerror/>
        <s:fielderror/>
         </center>
    </body>
</html>
