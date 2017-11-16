<%-- 
    Document   : showHomeDetails
    Created on : 5 Aug, 2011, 2:54:46 PM
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
            if(val.value!=-1)
            dojo.event.topic.publish("show_detail");

            }
        </script>
    </head>
    <body>
        <center>
        <h1><u>View Home Details</u></h1>
        <s:form name="viewHomeDetails" id="viewHomeDetails">
        <p>
            Select Home Id:<s:select  name="homeId" id="homeId" list="homes" headerKey="-1" headerValue="-----please select-------" listKey="homeId" listValue="homeId" theme="simple" onchange="javascript:show_details(this);return false;"/>            
        </p>
        <p>
            <s:url id="d_url" action="UM-ShowHomeDetails-View"/>
                <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="viewHomeDetails" showLoadingText="true">
                </sx:div>
        </p>
        </center>
        </s:form>
    </body>
</html>
