<%@ taglib uri="http://jakarta.apache.org/lookandfeel" prefix="l"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>Role Name</title>
    <script language="JavaScript" type="text/javascript" src="scripts/ShowHideTaskList.js">
</script><link href="css/textcss.css" rel="stylesheet" media="screen">

  </head>
  <style type="text/css">
<!--
body {
	MARGIN: 0px;background-color: #a4b6c4;
}
--> 
</style>
  <body>
   <form action="GenerateMenuAction.do" method="post" name="f1">
    <table width="778" height="428" border="0" cellpadding="0" cellspacing="0" class="tableborder1">
      <tr>
        <td  width="778" align="left" valign="top" bgcolor="#a4b6c4">
          
          <tiles:insert template="header.jsp"/>
           
       
        </td>
        
      </tr>
      <tr>
        <td width="778" height="386">
          <table width="778" height="384" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="155" height="384" align="left" valign="top" bgcolor="#a4b6c4">
                <P>
                  <span class="style3">
                   
                  </span>
                  <span class="style3">
                    <tiles:insert template="/testMenu.jsp"/>
                  </span>
                </P>
                <P>
                  <img src="images/FINAL__27.jpg" width="150" height="133"/>
                </P>
                <img src="images/FINAL__32.jpg" width="150" height="79"/>
              </td>
              
              <td width="100%" height="384" align="left" valign="top" bgcolor="#a4b6c4">
               <l:Table  cellspacing="1" cellpadding="3"  width="100%"   bgcolor="#7f99b6">
       
     
       
      
     
     
        <l:TableRow> 
        
          <l:TableData align="center">Role Name</l:TableDats:a>
        </l:TableRow>
        <c:forEach items="${ROLES}" var="ROLE">
        <l:TableRow>
          
          <l:TableData  align="center">
         
          <s:a onClick="document.f1.submit();return false"  href=""> <c:out value="${ROLE.roleName}" ></c:out>
         </s:a><s:hidden name="roleId_txt" value= />
          </l:TableDats:a>
          
     </l:TableRow>
    
        <s:hidden name="ROLEID" id="ROLEIDhidden" value="<c:out value="${ROLE.roleId}"/>"/>
       
      </c:forEach>
  </l:Table>
              </td>
             
              <td height="384" align="left" valign="top" bgcolor="#2a626f">
                <tiles:insert template="/rightMenu.jsp"/>
              </td>
            </tr>
           
            <script type="text/javascript" language="javascript" >
			var state = getcookie("tasklist");
			if (state && (state == 'none')) {
				showTocToggle("tasklist", "Show","Hide", "", "show");
			} else {
				showTocToggle("tasklist", "Show","Hide", "", "hide");
			}
</script>

          </table>
        </td>
      </tr>
      <tr>
        <td width="778" height="7" bgcolor="#a4b6c4">
          <tiles:insert template="/footer.jsp"/>
        </td>
      </tr>
    </table> 
    </form>
  </body>
   

</html>
