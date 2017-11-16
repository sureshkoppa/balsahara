<%@ taglib uri="/struts-tags" prefix="s"%>
<%--s:property value="uidAvailable"/--%>
<s:if test="uidAvailable=='yes'">
    <font color="green"><s:text name="Form.msg.available"/></font>
</s:if>
    <s:elseif test="uidAvailable=='no'">
        <font color="red">Sorry!!!<br>User Id already exists</font>        
    </s:elseif>
        <s:elseif test="uidAvailable=='unknown'">
            (<s:text name="Form.msg.onlyAlpNemAndUSAllow"/>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </s:elseif>
