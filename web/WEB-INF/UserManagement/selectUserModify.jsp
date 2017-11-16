<%@ taglib uri="http://jakarta.apache.org/lookandfeel" prefix="l"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>untitled</title><link href="css/textcss.css" rel="stylesheet" media="screen">
<link href="css/styles_final.css" rel="stylesheet" media="screen">

</head>
<body>
<l:Table id="workspace" width="476" bgcolor="#7f99b6">
  <l:TableRow>
    <l:TableData>
      <FONT face="Verdana" size="1"><span class="style6"><s:a class="flyoutSearchText" href="mainUser.jsp">user management</s:a>&gt;<s:a class="flyoutSearchText" href="#">user</s:a>&gt;modify</span></FONT>
      <l:TableRow>
      <l:TableTitle align="right" colspan="5" id="workspace">Select User</l:TableTitle>
      </l:TableRow>
    </l:TableData>
  </l:TableRow>
<l:TableRow><l:TableData>
  <display:table name="VENDORS" width="100%" class="tableborder1" cellpadding="2"  cellspacing="2" requestURI="UserFetchAction.do" >
    <display:column title="User Id" align="center" property="userId" bgcolor="#a4b6c4" href="ModifyUserSubAction.do"  paramId="userId" paramProperty="userId"/>
    <display:column title="First Name" align="center" property="firstName" bgcolor="#a4b6c4"/>
     <display:column title="Last Name" align="center" property="lastName" bgcolor="#a4b6c4"/>
     <display:column title="Phone No" align="center" property="telOffice" bgcolor="#a4b6c4"/>
    
  </display:table>
  </l:TableData></l:TableRow>
  </l:Table>
</body>
</html>
