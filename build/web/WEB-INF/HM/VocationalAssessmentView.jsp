<%-- 
    Document   : VocationalAssessmentView
    Created on : 16 Aug, 2011, 6:34:45 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
<sx:head/>
<script>
function show_details(val) {
//alert('------1>'+val.value );
if(val.value!=-1)
dojo.event.topic.publish("show_detail");

}
</script>
    </head>
    <body>
    <center>
        <h2><u><s:text name="global.heading.vocaAssView"/></u></h2><br>
        <s:form name="vocDetailsFrom" id="vocDetailsFrom">
            <select name="vocCourseId" id="vocCourseId" onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="vocationalMasters">
        <option value='<s:property value='vocCourseId'/>'><s:property value='vocCourseName' escape="false"/></option>
    </s:iterator>
    </select><%--s:select theme="simple" list="vocationalMasters" name="vocCourseId" id="vocCourseId" listKey="vocCourseId" listValue="vocCourseName" onchange="return show_details(this);"/--%> 
        
        <br><br></hr>
        <s:url id="d_url" action="HM-Vocational-Details" />
        <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="vocDetailsFrom" showLoadingText="true">
        </sx:div>
        
        </s:form>
        
    </center>
    </body>
</html>
