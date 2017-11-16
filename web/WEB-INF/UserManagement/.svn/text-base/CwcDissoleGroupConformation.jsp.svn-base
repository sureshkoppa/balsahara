<%-- 
    Document   : CwcDissoleGroupConformation
    Created on : 23 Jul, 2011, 12:34:09 PM
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
        <h2><u>CWC Dissolve Group</u></h2><br>
        <s:form name="cwcDissolveGroupForm" id="cwcDissolveGroupForm" action="UM-CWCDissolveGroup-Action">
        <s:hidden name="districtId" value="%{cwcHome.district}"/>
        <p>Are you sure you want to dissolve the following group</p><br>
         <table border="1">
             <tr>
                 
                 <th>User Id</th>
                 <th>Designation</th>
                 <th>Start Date</th>
                 <th>End Date</th>
             </tr>
             
         <s:iterator value="cwcDetails">
             <tr>
         
             <!--s:property value="cwcDetailPK.cwcId"/-->
             <td><s:property value="cwcDetailPK.userId"/></td>
             <!--s:property value="cwcDetailPK.lastModifiedDate"/-->             
             <td><s:property value="designation"/></td>
             <td><s:property value="startDate"/></td>
             <td><s:property value="endDate"/></td>
             </tr>
         </s:iterator>
         </table>
        
        <br>
        <hr/>
        <s:submit theme="simple" value="Yes"/>
        </s:form>
        
        </center>
    </body>
</html>
