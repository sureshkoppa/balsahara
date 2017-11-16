


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:if test="SchoolStudentDTOs.size()!=0">
<table>    
<tr>    
    <td><s:text name="package.label.StuListSelStu"/>:</td>
    <td><select name="childProfileId">
    <s:iterator value="SchoolStudentDTOs">
        <option value='<s:property value='profileId'/>'><s:property value='name'/></option>
    </s:iterator>
    </select><%--s:select name="childProfileId" listKey="profileId" listValue="name" list="SchoolStudentDTOs" theme="simple"/--%></td>
</tr>

<tr><td colspan="2"> <input type="submit" value="<s:text name="global.button.hmShowAsseRepo"/>"/></td></tr>
</table>
       
        
</s:if>
<s:else>
    
</s:else>
