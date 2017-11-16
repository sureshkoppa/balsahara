<%-- 
    Document   : AdmissionRegisterCheck
    Created on : 29 Feb, 2012, 2:30:04 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
        <script type="text/javascript">            
             <jsp:include page="../../javascripts/RU_AdmCheckForm_Validation.jsp"></jsp:include> 
        </script> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="global.heading.admRegCheck"/></title>
    </head>
    <body>
        <center>
            <s:text name="global.label.plsEntFields"/>.</br></br>
            <s:form name="AdmCheckForm" id="AdmCheckForm" action="CW-RH-Adm-Check-Act" theme="simple">
                <table cellpadding="10">
                    <tr>
                        <td align="right"><s:text name="global.label.entFirstName"/> :</td>
                        <td align="left"><s:textfield name="childName"  id="childName" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.entCwcJjbNum"/> :</td>
                        <td align="left"><s:textfield name="cwcNo" id="cwcNo" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    
                </table>
                
                
        <input type="submit" value="<s:text name="button.proceed"/>" /><!--div id="progress"></div-->
        </s:form>
        </center>
    </body>
</html>
