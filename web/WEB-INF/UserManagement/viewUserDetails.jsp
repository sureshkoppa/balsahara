<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jakarta.apache.org/lookandfeel" prefix="l"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<link href="css/styles_final.css" rel="stylesheet" media="screen">
<link href="css/textcss.css" rel="stylesheet" media="screen">
</head>
<body>
<form action="deletevendorAction.do">
  <l:Table id="workspace" width="476" border="0" align="center" cellpadding="2" cellspacing="2" bgcolor="#7f99b6">
    <l:TableRow>
     <l:TableData colspan="2">
              <span class="style6"><FONT face="Verdana" size="1"><A class="flyoutSearchText" href="procurementMainPage.jsp">
                
              procurement</A>&gt;<A class="flyoutSearchText" href="#">vendor</A>&gt;view</FONT></span> 
   </l:TableData> </l:TableRow>        
   
    <l:TableTitle colspan="2" align="right">User Details</l:TableTitle>
    <l:TableRow>
      <l:TableData >
        <FONT >User ID</FONT>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.userId}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <FONT >FirstName</FONT>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.firstName}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>Last Name
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.lastName}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>PassWord
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.password}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <FONT >Address &nbsp;&nbsp;</FONT>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.permanentAddress}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <bean:message key="vendor.city"/>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.city}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <bean:message key="vendor.state"/>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.state}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <bean:message key="vendor.country"/>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.country}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <bean:message key="vendor.pincode"/>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.zipcode}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <bean:message key="vendor.email"/>
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.email}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
        <bean:message key="vendor.phone"/> (Office)
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.telOffice}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>Telephone(Home)
      </l:TableData>
      <l:TableData>
        <c:out value="${VENDOR.telResidence}"/>
      </l:TableData>
    </l:TableRow>
    <l:TableRow>
      <l:TableData>
      </l:TableData>
      <l:TableData>
        <l:Table cellspacing="2" cellpadding="2" border="0" width="100%">
          <l:TableRow>
          <c:if test="${not empty show}">
            <l:TableData>
              <s:button value="Modify" class="forbuttonfield" onclick="location.href='ModifyVendorSubAction.do?VendorNo=<c:out value="${VENDOR.vendorNo}"/>'"/>
            </l:TableData>
            <l:TableData>
              <s:button value="Delete" class="forbuttonfield" onclick="if(confirm('Are you sure want to delete'))location.href='DeleteVendorSubAction.do?checkbox=<c:out value="${VENDOR.vendorNo}"/>'"/>
            </l:TableData>
            <l:TableData/>
            </c:if>
          </l:TableRow>
        </l:Table>
      </l:TableData>
    </l:TableRow>
  </l:Table>
</form>
</body>
</html>