    <%@ taglib prefix="s" uri="/struts-tags"%>
 
    <s:if test="districtList!= null">
        Select a home:<s:select name="userHomeId" list="homesInADistrict" ></s:select>
    </s:if>


    