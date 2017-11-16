<%-- 
    Document   : DeleteVocationalCourse
    Created on : 10 Jul, 2011, 4:59:01 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Vocational Course</title>
    </head>
    <body>
        <%--
        private List<VocationalMaster> vocationalMasters;
      private int vocationalId;
        --%>
        <center>
        <h2><u><s:text name="global.heading.ViewDelVocCour"/></u></h2></br></br>
        <s:form name="deleteVocational" id="deleteVocational" action="HM-DeleteVocationalCourse-Action" theme="simple">
            <s:text name="package.label.vocaAssSelVocCour"/>:<select name="vocationalId" id="vocationalId">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="vocationalMasters">
        <option value='<s:property value='vocCourseId'/>'><s:property value='vocCourseName' escape="false"/></option>
    </s:iterator>
    </select><%--s:select name="vocationalId" id="vocationalId" list="vocationalMasters" listKey="vocCourseId" listValue="vocCourseName"/--%></br></br>
        <input type="submit" value="<s:text name="global.button.Delete"/>"/>
        </s:form>
        </center>
    </body>
</html>
