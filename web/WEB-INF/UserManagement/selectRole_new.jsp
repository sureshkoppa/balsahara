
<%@ taglib uri="http://jakarta.apache.org/lookandfeel" prefix="l"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>

<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
   
     <SCRIPT LANGUAGE="JavaScript" SRC="scripts/PopupWindow.js"></script>
    <SCRIPT LANGUAGE="JavaScript" SRC="scripts/AnchorPosition.js"></script>
    <SCRIPT LANGUAGE="JavaScript" SRC="scripts/CalendarPopup.js"></script>
    <SCRIPT LANGUAGE="JavaScript" SRC="scripts/date.js"></script>
    <SCRIPT LANGUAGE="JavaScript">

var cal1x = new CalendarPopup();
</SCRIPT>
    <SCRIPT LANGUAGE="JavaScript" SRC="scripts/GenerateMenu.js"></script>
  
<link href="css/textcss.css" rel="stylesheet" media="screen">

   
    <title>Add User</title><link href="css/textcss.css" rel="stylesheet" media="screen">
  </head>
  <body>
    <form action="AddRoleAction.do" method="get">
      <l:Table cellspacing="1" cellpadding="3"  width="200"   bgcolor="#7f99b6">
       <l:TableHead colspan="3" align="left"><span class="style6"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">usermanagement&gt;user&gt;add</font></span></l:TableHead>
     
       
        <l:TableTitle colspan="3" align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"></font>Select Role</l:TableTitle>
     
     
        <l:TableRow> 
        
          <l:TableData align="center">Role Name</l:TableData>
        </l:TableRow>
        <c:forEach items="${ROLES}" var="ROLE">
        <l:TableRow>
          
          <l:TableData  align="center">
          <s:a href="#" onclick="startRequest('<c:out value="${ROLE.roleId}"></c:out>');"> <c:out value="${ROLE.roleName}"></c:out>
         </s:a><s:hidden name="roleId_txt" value= />
          </l:TableData>
          <l:TableRow>
         <td align="center" id="menu">
         </td>
     </l:TableRow>
    <l:TableData></l:TableData>
        
        </l:TableRow>
      </c:forEach>
  </l:Table>
       </form>
  
  
  
  </body>
</html>
