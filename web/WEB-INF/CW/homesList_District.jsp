<%-- 
    Document   : homesList_District
    Created on : May 30, 2011, 2:22:43 PM
    Author     : Ramu Parupalli
--%>

   <%@ taglib prefix="s" uri="/struts-tags"%>
    
   <%--
    <s:if test="homesInADistrict.get(0)!= 'NO HOMES'">
        <s:select name="transHomeId" id="transHomeId" list="homesInADistrict" headerValue="-- Please Select --" headerKey="1"></s:select>
    </s:if>
   --%>
   
   
        <s:select name="transHomeId" id="transHomeId" list="homesInADistrictMap" headerValue="-- Please Select --" headerKey="1"></s:select>
   
   
   
   
        
