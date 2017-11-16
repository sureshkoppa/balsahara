<%-- 
    Document   : CwcRemoveMember
    Created on : 21 Jul, 2011, 6:09:04 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <center>
         <h2><u>CWC Remove Member</u></h2><br>
         
         <s:property value="cwcHome.cwcId" /><br>
         <s:property value="cwcHome.district" /><br>
         <s:hidden name="districtId" value="%{cwcHome.district}"/>
         
         <%--
         private int[] cwcId_arr;
         private String [] userId_arr;
         private String [] lastModfiedDate_arr;
         --%>
         
         <table border="1">
             <tr>
                 <th>Select</th>
                 <th>User Id</th>
                 <th>Designation</th>
                 <th>Start Date</th>
                 <th>End Date</th>
             </tr>
             
         <s:iterator value="cwcDetails">
             <tr>
                 <td align="center">
               <!--input type="checkbox" name="checkbox" value="${userId}"-->
               <!--s:checkbox name="checkbox" fieldValue="" theme="simple" /(TRY LATER)-->
               <s:url id="removeTheCWCMember" action="UM-CWCRemoveMember-Action">
                <s:param name="cwcId_arr">%{cwcDetailPK.cwcId}</s:param>
                <s:param name="userId_arr">%{cwcDetailPK.userId}</s:param>
                <s:param name="lastModfiedDate_arr">%{cwcDetailPK.lastModifiedDate}</s:param>
                </s:url>
                <s:a href="%{removeTheCWCMember}">
                     <img width="11" height="13" src="images/button_delete.png" alt="Delete" title="Delete" border="0"/>
                </s:a>
           </td>
             <!--s:property value="cwcDetailPK.cwcId"/-->
             <td><s:property value="cwcDetailPK.userId"/></td>
             <!--s:property value="cwcDetailPK.lastModifiedDate"/-->             
             <td><s:property value="designation"/></td>
             <td><s:property value="startDate"/></td>
             <td><s:property value="endDate"/></td>
             </tr>
         </s:iterator>
         </table>
         
    </center>
       
    </body>
</html>
