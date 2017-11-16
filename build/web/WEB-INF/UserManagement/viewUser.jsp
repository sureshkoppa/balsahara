<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%-- Anupam commented this START
<table id="workspace" width="476" bgcolor="#7f99b6">
  <tr>
    
      <FONT face="Verdana" size="1"><span class="style6"><s:a class="flyoutSearchText" href="mainUser.jsp">user management</s:a>&gt;<s:a class="flyoutSearchText" href="#">User</s:a>&gt;view</span></FONT>
      <caption colspan="3" align="right">
            <center>
          <STRONG><font size="2" face="Verdana, Arial, Helvetica, sans-serif"/><FONT color="#003366" size="2">View Users</FONT></STRONG>
          </center>
        </caption>
  </tr>
Anupam commented this END--%>

<!--just for mapping not important START
this.userId = userId;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.permanentAddress = permanentAddress;
        this.city = city;
        this.state = state;
        this.country = country;
        this.telOffice = telOffice;
        this.telResidence = telResidence;
        this.email = email;
        this.zipcode = zipcode;
        this.regDate = regDate;
        this.gender = gender;
        this.age = age;
        this.qualification = qualification;
        this.paymentMode = paymentMode;
        this.userDetails = userDetails;
just for mapping not important END-->

<%-- ------------><s:property value="Operation"/> --%>


<s:if test="%{Operation == 'view'}">
<%--View MODE--%>
<!--View-->
<table border="1" align="center">
    <tr>
        <th align="center">User Id</td>
        <th align="center">Name</td>
        <th align="center">email Id</td>
        <th align="center">Registration Type</td>
        
    </tr>
    <s:iterator value="users">
  <tr>
  <td align="center"><s:property value="userId"/></td>

  <td align="center"> <s:property value="firstName"/>&nbsp;<s:property value="lastName"/></td>
  
  <td align="center"><s:property value="email"/></td>
  
  <td align="center"><s:property value="registrationType"/></td>
  
  </tr>
  </s:iterator>

  </table>
</s:if>

<!--Modify-->
<s:elseif test="%{Operation == 'modify'}">
<table border="1" align="center">
    <tr>
        <th align="center">UserId</td>
        <th align="center">Name</td>
        <th align="center">email Id</td>
        <th align="center">Registration Type</td>
        
    </tr>
   <s:iterator value="users">
        <tr>
            <td>
                <s:url id="ModifyTheUser" action="UM-ModifyUserMainAction">
                <s:param name="userId">%{userId}</s:param>
                </s:url>
                <s:a href="%{ModifyTheUser}"><s:property value="%{userId}" escape="false"/></s:a>
            </td>
            
            <td align="center"> <s:property value="firstName" escape="false"/>&nbsp;<s:property value="lastName" escape="false"/></td>
  
             <td align="center"><s:property value="email"/></td>
  
             <td align="center"><s:property value="registrationType"/></td>
        </tr>

    </s:iterator>

</table>
   

</s:elseif>


<!--For delete-->

<s:elseif test="%{Operation == 'delete'}">
    <s:form id="deleteUserform" action="DeleteUserSubAction" method="post">
    <table border="1" align="center">
    <tr>
        <th align="center">select</th>
        <th align="center">User Id</th>
        <th align="center">Name</th>
        <th align="center">email Id</td>
        <th align="center">Registration Type</td>
       
    </tr>
    <s:iterator value="users" id="user" status="stat">
        <s:if test="userId != 'administrator'">
       <tr>
           <td align="center">
               <input type="checkbox" name="checkbox" id="checkbox" value="${userId}">
               <!--s:checkbox name="checkbox" fieldValue="" theme="simple" /(TRY LATER)-->
               <s:url id="ModifyTheUser" action="DeleteUserSubAction">
                <s:param name="checkbox">%{userId}</s:param>
                </s:url>
                <s:a href="%{ModifyTheUser}">
                     <img width="11" height="13" src="images/button_delete.png" alt="Delete" title="Delete" border="0"/>
                </s:a>
           </td>
            <td align="center"><s:property value="userId"/></td>
            <td align="center"> <s:property value="firstName"/>&nbsp;<s:property value="lastName"/></td>
  
             <td align="center"><s:property value="email"/></td>
  
             <td align="center"><s:property value="registrationType"/></td>
            
        </tr>
        </s:if>
    </s:iterator>

</table>
<%--s:checkboxlist name="checkbox" list="%{users}" value="" theme="css_xhtml" (TRY LATER)/--%>
 <s:submit value="Submit"/>
</s:form>
</s:elseif>


</body>
</html>
