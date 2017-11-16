<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!--s:property value="%{actionTaken != 'non'}" /-->

<s:if test="%{actionTaken != 'non'}"> 
    
    <select name="userDistrictId" id="userDistrictId"  headerValue="-- <s:text name="global.option.headerKey"/> --" headerKey="non" onchange="javascript:show_details1(this);return false;">
        <option value="1">---Please select----</option>
        <c:forEach items="${districtMap}" var="obj">
         <option value="${obj.key}">${obj.value}</option>
     </c:forEach>     
 </select>    
</s:if>
  
    


                       
                
                

