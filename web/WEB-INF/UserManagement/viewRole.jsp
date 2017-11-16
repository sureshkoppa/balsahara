<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8"%>

------------><s:property value="Operation"/>
<!--View-->
<s:if test="%{Operation == 'view'}">
View MODE
<!--View-->
<table border="1">

    <s:iterator value="roles">
  <tr>
  <td><s:property value="roleId"/></td>

  <td> <s:property value="roleName"/></td>

  </tr>
  </s:iterator>

  </table>
</s:if>

<!--Add-->
<s:elseif test="%{Operation == 'add'}">
    <s:form action="AddRoleAction" method="POST" >
    <table border="1">

         <tr>
             <td rowspan="2">Add a new Role</td>

        </tr>
        <tr>
          <td align="left">Role Name</td>
          <td>
          <s:textfield name="roleName" class="fortextfield"/>
          </td>  

        </tr>
    </table>
          <s:submit value="save"/>
    </s:form>
    
</s:elseif>
<!--Assign-->





<%-- SCM OLD CODE START
<caption colspan="3" align="right">
            <center>
          <STRONG><font size="2" face="Verdana, Arial, Helvetica, sans-serif"/><FONT color="#003366" size="2">View Role</FONT></STRONG>
          </center>
        </caption>
<table id="workspace" width="476" bgcolor="#7f99b6">
  <th>
    <td>
      <FONT face="Verdana" size="1"><span class="style6"><s:a class="flyoutSearchText" href="mainUser.jsp">user management</s:a>&gt;<s:a class="flyoutSearchText" href="#">User</s:a>&gt;view role</span></FONT>
      <th>
      
      </th>
    
  
<!--th><td>
  <display:table name="ROLES" width="100%" class="tableborder1" cellpadding="2"  cellspacing="2" requestURI="UserFetchAction.do" >
    <display:column title="Role Id" align="center" property="roleId" bgcolor="#a4b6c4" href="ViewRoleDetailsAction.do"  paramId="vendorNo" paramProperty="roleId"/>
    <display:column title="Role Name" align="center" property="roleName" bgcolor="#a4b6c4"/>
     
    
  </display:table-->
 
  </table>
</body>
</html>
SCM OLD CODE END --%>