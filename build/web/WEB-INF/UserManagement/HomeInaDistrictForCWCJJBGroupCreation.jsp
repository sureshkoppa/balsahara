    <%@ taglib prefix="s" uri="/struts-tags"%>
    
    <!--s:property value="homesInADistrict"/-->
    
    <s:if test="userList.size()!= 0">
       <%--
        Select a home:<s:select name="roleHomeId" list="homesInADistrict" headerValue="--- Please Select ---" headerKey="1"></s:select>
        <br><br>
       --%>
       
        
        <%--dynamic table--%>
<table id="CWC_Group" border="1">
             <tr>
              <td>S/N</td>
                <td><b>Profile Id & Name</b></td>
           
                <td><b>Role</b></td>
             </tr>
             <tr>
                <td><INPUT type="checkbox" name="chk"/></td>
                <td><s:select name="userIds" id="userIds" list="userList" listKey="userId" listValue="userId" headerValue="---please select---" headerKey="1" theme="simple"/> </td>
             
                <td><s:select name="cwcRoles" id="cwcRoles" list="#{'chairperson':'Chair Person','member':'Member'}" theme="simple"/></td>
             </tr>
</table>
            <INPUT type="button" value="Add Row" onclick="addRow('CWC_Group')" />&nbsp;&nbsp;<INPUT type="button" value="Delete Row" onclick="deleteRow('CWC_Group')"/>
            <%--Dynamic table--%>
        
        
        
        
        <br>
        <table><tr><td align="center"><s:submit value="Create Group"/></td></tr></table>
    </s:if>
 



    