
<%-- 
    Document   : ReassignRole
    Created on : Apr 28, 2011, 2:08:31 PM
    Author     : NEELAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%-- 
values----><s:property value="#session.userMap.get(userId).get(0)"/>
size----><s:property value="#session.userMap.get(userId).size()"/>
--%>
<s:if test="#session.userMap.get(userId).get(0)==-1 && #session.userMap.get(userId).size()==1">
    
</s:if>

<s:else>
    <!--s:property value="%{#session.userMap.get(userId)}"/-->
<s:iterator value="%{#session.userMap.get(userId)}">

    
    <s:if test="top!=-1">
        
        <s:set var="roleName" value="#session.roleMap.get(top)"/>

        <!--s:property value="roleName"/><br-->

        
        <input type="checkbox" name="rolesOfHome" id="rolesOfHome" value="${top}">
               <!--s:checkbox name="checkbox" fieldValue="" theme="simple" /(TRY LATER)-->
               <%--
                <s:url id="ModifyTheUser" action="#">
                <s:param name="rolesOfHome">${top}</s:param>
                </s:url>
                <s:a href="%{ModifyTheUser}">
                     <img width="11" height="13" src="images/button_delete.png" alt="Delete" title="Delete" border="0"/>
                </s:a>
               --%>
                <s:property value="roleName"/>
                <br>
        
    </s:if>



</s:iterator>

</s:else>


