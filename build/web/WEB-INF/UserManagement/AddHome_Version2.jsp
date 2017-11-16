<%--
    Document   : AddHome
    Created on : Mar 23, 2011, 3:43:16 PM
    Author     :Anupam
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
    <!--
     String homeId;
     String districtId;
     String homeIdCat;
     String homeName;
    -->
    <body>
<center>
    <h2><u>Home Registration Register</u></h2>
 
    <s:form name="addHomeFrom" id="addHomeFrom" action="AddHomeAction" method="POST">
        
        <s:hidden name="stateId" id="stateId" value="AP" />
            <table border="0">
                <tr><td>
                        <s:select name="districtId" id="districtId" label="Enter District" list="districtList" listValue="districtName" listKey="districtId"/>
                </td> </tr>
                
                <tr><td>
            <s:select name="homeCat" id="homeCat" label="Enter catagory" list="#{'RUCH':'Reception Unit and Children Home','OH':'Observation Home','SH':'Special Home'}" />
                </td> </tr>
                
             <tr><td> 
            <s:radio  name="genderId" id="genderId" list="#{'B':'Boys','G':'Girls'}"  label="Home is for:"/>
            </td> </tr>
            
             <tr><td>
            <s:textarea name="homeAddress" id="homeAddress" cols="20" rows="5" label="Home Address" />
               </td> </tr>
            </table>
                <tr> 
                <table border="0">
                       <tr>
                    <td align="center">
                        <s:submit value="save" theme="simple"/>
                    </td>
                       </tr>
                    </table>

        </s:form>
</center>
    </body>
</html>
