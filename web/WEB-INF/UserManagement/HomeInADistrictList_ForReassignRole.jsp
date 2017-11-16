    <%@ taglib prefix="s" uri="/struts-tags"%>
    

    <s:if test="homesInADistrict.get(0)!= 'NO HOMES'">
        Select a home:<s:select name="roleHomeId" id="roleHomeId" list="homesInADistrict" headerValue="-- Please Select --" headerKey="-1" onchange="javascript:show_details2(this);return false;" ></s:select>
    </s:if>
    <s:elseif test="homesInADistrict.get(0)!= 'NO HOMES'">
         <!--s:property value="homesInADistrict.get(0)"/> in this district.-->
         
        </s:elseif>



    