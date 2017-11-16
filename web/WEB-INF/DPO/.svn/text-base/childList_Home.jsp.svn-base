<%-- 
    Document   : childList_Home
    Created on : May 30, 2011, 3:45:00 PM
    Author     : Ramu Parupalli
--%>

   <%@ taglib prefix="s" uri="/struts-tags"%>
   <%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%--OLD CODE
     <s:if test="callforDPOChildList.size()!=0">
         <s:select  name="childProfileId" list="callforDPOChildList" listKey="childProfileId" listValue="childProfileId" headerValue="-- Please Select --" headerKey="1" onchange="javascript:show_details3(this);return false;"></s:select>
    </s:if>
        --%>
        
        <s:if test="childProfileIdList.size()!=0">
            <select name="childProfileId" id="childProfileId" onchange="javascript:show_details3(this);return false;">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${childProfileIdList}" var="obj">
                                       <option value=${obj}>${obj}</option>
                                   </c:forEach>
                               </select><%--s:select  name="childProfileId" list="childProfileIdList" headerValue="-- Please Select --" headerKey="1"  onchange="javascript:show_details3(this);return false;"></s:select--%>
    </s:if>