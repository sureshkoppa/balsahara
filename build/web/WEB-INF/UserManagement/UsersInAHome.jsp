    <%@ taglib prefix="s" uri="/struts-tags"%>
    <!--s:property value="userMapOfAHome"/-->
    <s:if test="userMapOfAHome.isEmpty()==false">
        Select a user:<s:select name="userId" id="userId" list="userMapOfAHome" listValue="%{Key}" listKey="%{Key}" headerValue="-- Please Select --" headerKey="-1" onchange="javascript:show_details3(this);return false;"></s:select>
    
    </s:if>