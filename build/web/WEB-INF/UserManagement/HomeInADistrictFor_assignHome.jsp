    <%@ taglib prefix="s" uri="/struts-tags"%>
    
    <!--s:property value="homesInADistrict"/-->
    
    <s:if test="homesInADistrict.get(0)!= 'NO HOMES'">
        
        <table>
            <tr><td>Select a home:<s:select name="roleHomeId" id="roleHomeId" theme="simple" list="homesInADistrict" headerValue="--- Please Select ---" headerKey="-1"></s:select></td></tr>
            <tr><td align="center">Select User(s):<s:select name="userIds" id="userIds" list="userList" theme="simple" listKey="userId" listValue="userId" multiple="true" headerValue="---please select---" headerKey="-1" value="-1" /></td><td>(For multiple Select press 'ctrl' and select)</td></tr>
         
        </table>
        <table align="center">
            <tr><td align="center"><br><s:submit value="assign" theme="simple"/></td></tr>
            
        </table>
       
    </s:if>
    
 



    