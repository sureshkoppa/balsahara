<%-- 
    Document   : AddProductCatSubcat
    Created on : Mar 28, 2011, 4:46:03 PM
    Author     : NEELAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="#" method="POST">
            
            <s:textfield name="newCatagory" label="Add a new item/catagory"/>
            <s:select name="existingCatagory" label="Choose a catagory" list="#"/>

            <s:submit value="save"/>

        </s:form>
    </body>
</html>
