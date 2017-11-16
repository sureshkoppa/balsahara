<%-- 
    Document   : AddNewVocational
    Created on : 10 Jul, 2011, 4:41:01 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
        <jsp:include page="../../javascripts/HM_AddNewVocational_Validation.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <center>
        <h2><u><s:text name="global.heading.AddVocaCour"/></u></h2><br><br>
        <s:form name="addVocationalForm" id="addVocationalForm" action="HM-AddNewVocational-Save" theme="css_xhtml">
            <s:hidden name="formName" value="addVocationalForm"/>
        <s:text name="global.label.EnterVocaCour"/><s:textfield name="vocCourseName" id="vocCourseName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/><br>
        <input type="submit" value="<s:text name="global.button.medAdmRegSave"/>" align="center"/>
        </s:form>    
        </center>
    </body>
</html>
