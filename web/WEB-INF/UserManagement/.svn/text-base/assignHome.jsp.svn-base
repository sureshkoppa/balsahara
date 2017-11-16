<%-- 
    Document   : assignHome
    Created on : 10 Jun, 2011, 11:55:29 AM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html>
<html>
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<sx:head/>
<script>
function show_details(val) {
//alert('------1>'+val.value );
//if(val.value!=1)
dojo.event.topic.publish("show_detail");

}
</script>
</head>
   
    <body>
    <center>
         <h2><u>User Assign Home Register</u></h2>
         <br>
        <s:form name="assignHomeForm" id="assignHomeForm" action="UM-assignHome-Action" method="POST" theme="css_xhtml">
            
         
            Select District:<s:select  name="districtId" id="districtId" list="districtList" headerKey="-1" headerValue="-----please select-------" listKey="districtId" listValue="districtName"/>            
            
            Select Home Type:<s:select name="homeType" id="homeType" list="#{'oh':'Observation Homes','sh':'Special Homes','ruch':'Children Home with Reception Unit'}" headerValue="--- Please Select ---" headerKey="-1" onchange="javascript:show_details(this);return false;"/>
            
            <br><br><hr/>
            
            
                <s:url id="d_url" action="UM-GetHomeList-assignHome"/>
                <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="assignHomeForm" showLoadingText="true">
                </sx:div>
            
               
        </s:form>
    </center>
    </body>
</html>
