<%-- 
    Document   : StudentList
    Created on : 16 Aug, 2011, 2:05:25 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:if test="childListForAttendence.size()!=0">
<table>    
<tr>    
    <td><s:text name="package.label.StuListSelStu"/>:</td>
    <td><s:select name="childProfileId" listKey="childProfileId" listValue="childName" list="childListForAttendence" theme="simple"/></td>
</tr>

<tr><td colspan="2"> <input type="submit" value="<s:text name="global.button.hmShowAsseRepo"/>"/></td></tr>
</table>
       
        
</s:if>
<s:else>
    
</s:else>
