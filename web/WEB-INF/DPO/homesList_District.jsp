<%-- 
    Document   : homesList_District
    Created on : May 30, 2011, 2:22:43 PM
    Author     : Ramu Parupalli
--%>

   <%@ taglib prefix="s" uri="/struts-tags"%>
   <%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

    <s:if test="homesInADistrict.get(0)!= 'NO HOMES'">
        <select name="selctedHomeId" onchange="javascript:show_details2(this);return false;">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${homesInADistrict}" var="obj">
                                       <option value=${obj}>${obj}</option>
                                   </c:forEach>
                               </select><%--s:select name="selctedHomeId" list="homesInADistrict" headerValue="-- Please Select --" headerKey="1" onchange="javascript:show_details2(this);return false;" ></s:select--%>
    </s:if>
        
