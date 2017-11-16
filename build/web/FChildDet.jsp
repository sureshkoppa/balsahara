<%-- 
    Document   : FChildDet
    Created on : 8 Dec, 2016, 11:46:30 AM
    Author     : suresh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.cdac.usermanagement.ORM.ChildMaster"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Child Details</h1>
        
        First Name:<s:property value="cd.childName"/>
        Sur Name:<s:property value="cd.childSurname"/>
        Date Of Birth:<s:property value="cd.dob"/>
        Religion:<s:property value="cd.religion"/>
        Caste:<s:property value="cd.caste"/>
        Sub-Caste:<s:property value="cd.subcaste"/>
        Father Name:<s:property value="cd.fatherName"/>
        Mother Name:<s:property value="cd.motherName"/>
        Father Occupation:<s:property value="cd.fatherOccup"/>
        Mother Occupation:<s:property value="cd.motherOccup"/>
        Languages Known:<s:property value="cd.languagesKnown"/>
        Address Of Parents:<s:property value="cd.addrParents"/>
        Identified Problems If Any :<s:property value="cd.identifiedProblemsChild"/>
    </body>
</html>
