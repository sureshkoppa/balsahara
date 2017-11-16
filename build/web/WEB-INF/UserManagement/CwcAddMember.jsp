<%-- 
    Document   : CwcAddMember
    Created on : 22 Jul, 2011, 3:32:35 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h2><u>CWC Add new member</u></h2>
        <s:form name="cwcAddMemberForm" id="cwcAddMemberForm" action="UM-CWCAddMember-Save">
           <%-- cwcId:<s:property value="%{cwcHome.cwcId}"/>--%><s:hidden name="cwcId" value="%{cwcHome.cwcId}"/>
           <%--districtId:<s:property value="%{cwcHome.district}"/--%><s:hidden name="districtId" value="%{cwcHome.district}"/>
        <table>
            <tr>
                <td>Start Date:</td><td class="demo"><s:textfield name="roleStartDate" readonly="true" id="datepicker" theme="simple"/></td><%--td><s:textfield name="roleStartDate" /></td--%>
           </tr>
           <tr>
               <td>End Date:</td><td class="demo"><s:textfield name="roleEndDate" readonly="true" id="datepicker1" theme="simple"/></td><%--td><s:textfield name="roleEndDate" /></td--%>
           </tr>
        </table>
        
        <table id="CWC_Group" border="1">
             <tr>
              <td>S/N</td>
                <td><b>Profile Id & Name</b></td>
           
                <td><b>Role</b></td>
             </tr>
             <tr>
                <td><INPUT type="checkbox" name="chk"/></td>
                <td><s:select name="userIds" list="userList" listKey="userId" listValue="userId" headerValue="---please select---" headerKey="1" theme="simple"/> </td>
             
                <td><s:select name="cwcRoles" list="#{'chairperson':'Chair Person','member':'Member'}" theme="simple"/></td>
             </tr>
        </table>
             
            <INPUT type="button" value="Add Row" onclick="addRow('CWC_Group')" />&nbsp;&nbsp;<INPUT type="button" value="Delete Row" onclick="deleteRow('CWC_Group')"/>
            <%--Dynamic table--%>
        
        
        
        
        <br>
        <table><tr><td align="center"><s:submit value="Add member"/></td></tr></table>
        </s:form>
        <br><br>
        
        </hr>
        
        
        
        
        
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
        </center>
    </body>
</html>
