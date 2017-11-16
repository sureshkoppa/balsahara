<%-- 
    Document   : CWC_Meetings21
    Created on : 13 Sep, 2017, 11:22:40 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <s:form name="cwcHomeSelectForm" id="cwcHomeSelectForm" action="CWC_Meetings21rep" method="POST" target="_blank">
            <h6 style="text-align: center">FORM 21<br/>            
[Rule 19 (3)]<br/>
ORDER FOR SOCIAL INVESTIGATION REPORT OF CHILD IN <br/>NEED OF CARE AND PROTECTION</h6>
<table>
<table>
    
    <tr><td>Select Child Profile ID: </td><td>     <s:select id="child"  theme="simple" list="ordSirCh" name="sirChildPdf" listKey="id" listValue="profileId+'-->'+firstName"/></td> </tr> 

        <!--input type="hidden" id="foundchildprofile" name="foundchildprofileid"/-->

</select><%--s:select name="homeId" id="homeId" theme="simple" list="homeMasters" headerValue="--- Please Select ---" headerKey="-1"></s:select--%></td></tr>
<tr><td colspan="2" style="text-align: center"><br/><input style="text-align: center" type="submit" value="<s:text name="global.button.cwcProceed"/>"/></td></tr>
</table>
</s:form>
            
            <br/>
            <div style="text-align: center">
                <a href="images_Forms/Form21.pdf" target="_blank">Click for Template</a>
            </div>    
            
            
        </body>
</html>
