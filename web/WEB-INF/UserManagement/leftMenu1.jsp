<%@taglib uri="/struts-tags" prefix="s"%>
<html>
  <head>
   <link href="css/textcss.css" rel="stylesheet" media="screen"> 
    <script language="JavaScript" type="text/javascript" src="scripts/ClickShowHideMenu.js">
</script>


  </head>
  <body>
    <table id="click-menu1" class="click-menu" cellpadding="0" cellspacing="0">
      <tbody>
      <tr>
          <td align="left" bgcolor="silver"  >
            <s:a href="logoutAction.do" class="inner_link"> Logout</s:a>
          </td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f7f7f7" valign="top">
            <span class="style5"><font color="#0033ff"></font></span> 
          </td>
        </tr>
        <tr>
          <td>
            <div class="box1">User Management  <img alt="" src="images/arrow1.gif" height="11" width="11"/>
            </div>
            <div class="section">
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <%--s:a href="mainUser.jsp?parameter1=addUser">Add User</s:a--%>
                <s:a href="AddUser.jsp">Add User</s:a>
              </div>
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="UserFetchAction.do?Operation=update">Modify User</s:a>
              </div>
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="UserFetchAction.do?Operation=delete">Delete User</s:a>
              </div>
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="UserFetchAction.do?Operation=view" target="">View User</s:a>
              </div>                            
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="mainUser.jsp?parameter1=addRole" target="">Add Role</s:a>
              </div>
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="ViewRoleAction.do">View Role</s:a>
              </div>
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="UserFetchAction.do?Operation=modify">Assign Role</s:a>
              </div>                      
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="RoleFetchAction.do">Add Privilege</s:a>
              </div>
              <div class="box2">
                <img alt="" src="images/arrow2.gif" height="9" width="14"/>
                <s:a href="DelPrivilegeAction.do?methodToCall=RolesName">Delete Privilege</s:a>
              </div>
            </div>
          </td>
        </tr>
        
           
        
      </tbody>
    </table>
    <script type="text/javascript">
var clickMenu1 = new ClickShowHideMenu('click-menu1');
clickMenu1.init();
</script>
  </body>
</html>
