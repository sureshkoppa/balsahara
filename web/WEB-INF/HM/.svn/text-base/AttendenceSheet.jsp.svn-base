<%-- 
    Document   : AttendenceSheet
    Created on : 30 Jun, 2011, 4:45:27 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<s:if test="schoolStudentDTOs.size()!=0">
<table border="1">
    <tr>
    <td><s:text name="package.label.attSheetProfId" /></td>
    <td><s:text name="package.label.attSheetChName" /></td>
    <td><s:text name="package.label.attSheetPreAbs" /></td>
    </tr>
    
    
    
    <s:iterator value="schoolStudentDTOs">        
        <tr>
            <td><s:property value="profileId"/><s:hidden name="childProfileId" value="%{profileId}"/> </td>
            <td><s:property value="name"/> </td>
            <td><select name="abpr">
                    <option value="p"><s:text name='package.selectOption.attenSheetPre'/></option>
                    <option value="a"><s:text name='package.selectOption.attenSheetAbs'/></option>
                </select><%--s:select name="abpr" list="#{'p':'Present','a':'Absent'}" theme="simple"/--%> </td>        
        
        </tr>
        
        
    
    </s:iterator>
        <tr><td colspan="3" align="center"><input type="submit" value="<s:text name="global.button.hmSaveAtten"/>"/></td></tr>
    
    
</table>
</s:if>
<s:else>
  
</s:else>


