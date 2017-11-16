<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/lookandfeel" prefix="l"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page import="java.util.*" %>
<html>
<head>
<link href="css/styles_final.css" rel="stylesheet" media="screen">
<link href="css/textcss.css" rel="stylesheet" media="screen">
</head>
<body>
<form action="deletevendorAction.do">
  <l:Table id="workspace" width="476" border="0" align="center" cellpadding="2" cellspacing="2" bgcolor="#7f99b6">
    <l:TableRow>
            <l:TableData colspan="4">
              <span class="style6"><FONT face="Verdana" size="1"><A class="flyoutSearchText" href="procurementMainPage.jsp">
                
             usermanagement</A>&gt;<A class="flyoutSearchText" href="#">role</A>&gt;view</FONT></span> 
           </l:TableData> 
         </l:TableRow>
    <l:TableTitle colspan="4" align="right">Role Details</l:TableTitle>
    <l:TableRow>
     
      <l:TableData >Role Id
      </l:TableData>
      <l:TableData>
        <c:out value="${ROLE.roleId}"/>
      </l:TableData><l:TableData colspan="2"></l:TableData>
    </l:TableRow>
    <l:TableRow>
     
      <l:TableData>Role Name
      </l:TableData>
      <l:TableData>
        <c:out value="${ROLE.roleName}"/>
      </l:TableData><l:TableData colspan="2"></l:TableData>
    </l:TableRow>
  <c:if test="${not empty ROLE.privRoles }">
    <l:TableRow >
    <l:TableData  colspan="6"><strong>Privileges</strong></l:TableData>
    </l:TableRow>
    <l:TableRow>
      
    
      <l:TableHead align="center">
          Module Name
      </l:TableHead>
      <l:TableHead align="center">
          Sub Module Name
      </l:TableHead>
      <l:TableHead align="center" colspan="2">
          Privileges
      </l:TableHead>
    </l:TableRow>
        
          <c:forEach items="${ROLE.privRoles}" var="PROLE">
      <l:TableRow>
        
        <l:TableData align="center">
          <c:out value="${PROLE.comp_id.module}"/>
        </l:TableData>
        <l:TableData align="center">
          <c:out value="${PROLE.comp_id.subModule}"/>
        </l:TableData>
        <l:TableData align="center" colspan="2">
          <c:out value='${PROLE.comp_id.priv}'/>
        </l:TableData>
      </l:TableRow>
    </c:forEach>
    
     <l:TableRow >
    <l:TableData  colspan="6"><strong>User Details</strong></l:TableData>
    </l:TableRow><c:if test="${not empty ROLE.userDetails}">
    <l:TableRow>
      
      <l:TableHead align="center">
        User Id 
      </l:TableHead>
      <l:TableHead align="center">
          First Name
      </l:TableHead>
      <l:TableHead align="center" colspan="2">
          LastName 
      </l:TableHead>
    
    </l:TableRow>
      </c:if>  
          <c:forEach items="${ROLE.userDetails}" var="PROLE1">
      <l:TableRow>
        <l:TableData align="center">
          <c:out value="${PROLE1.userMaster.userId}"/>
        </l:TableData>
        <l:TableData align="center" >
          <c:out value="${PROLE1.userMaster.firstName}"/>
        </l:TableData>
        <l:TableData align="center" colspan="2">
          <c:out value="${PROLE1.userMaster.lastName}"/>
        </l:TableData>
       
      </l:TableRow>
    </c:forEach>
    </c:if>
  </l:Table>
</form>
</body>
</html>