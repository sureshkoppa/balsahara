<%-- 
    Document   : AddHome
    Created on : Mar 23, 2011, 3:43:16 PM
    Author     : NEELAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Home</title>
       
    </head>
    <!--
     String homeId;
     String districtId;
     String homeIdCat;
     String homeName;
    -->
    <body>

        <s:form name="" id="" action="AddHomeAction" method="POST">
        <!--s:form action="#" method="get"-->
            <!--s:select name="stateId" label="Enter state (Hard Coded)" list="{'AP'}" /-->
            <s:hidden name="stateId" id="stateId" value="AP"/>
            <s:select name="districtId" id="districtId" label="Enter District" list="districtList" listValue="districtName" listKey="districtId" />
            <s:select name="homeCat" id="homeCat" label="Enter catagory" list="{'CH','RU','OH','SH'}" />
            <s:radio  name="genderId" id="genderId" list="{'B','G'}"  label="Home is for:"/>
            <!--s:textfield name="homeId" label="Enter any home id(JUST TESTING)"/><br-->
            <!--s:textfield name="homeIdCat" label="Enter any home cat (keep blank for root lavel)"/><br-->
            <!--s:textfield name="homeName" label="Enter name(JUST TESTING)"/><br-->
            <s:submit value="save"/>



        </s:form>
    </body>
</html>
