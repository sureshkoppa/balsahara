<%-- 
    Document   : AgeWiseSubReport
    Created on : 12 Jul, 2013, 2:55:48 PM
    Author     : Swetha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1><s:text name="global.label.classWiseRepoStuList"/></h1>
        <table border="2" style="border:solid; font-size:large; width: 50%;">
            <tr>
                <td><s:text name="global.label.ChStaReSNO"/></td>
                <td><s:text name="global.label.ageWiseChProfId"/></td>
                <td><s:text name="global.label.ageWiseChName"/></td>
                <td><s:text name="global.label.ageWiseChSurName"/></td>
                <td><s:text name="global.label.ageWiseAdmDateTim1"/><br/><s:text name="global.label.ageWiseAdmDateTim2"/></td>
                <td><s:text name="global.label.ageWisePresAge"/></td>
                <td><s:text name="global.label.ageWiseGender"/></td>
                <td><s:text name="global.label.ageWiseDisabled"/></td>
                <td><s:text name="global.label.ageWiseNatOfDisab"/></td>       
            </tr>
            <s:iterator value="ageChildList" status="childAgeListStat">
            <tr>
                <td><s:property value="%{#childAgeListStat.index+1}"/></td>
                <td><s:property value="%{childProfileId}"/></td>
                <td><s:property value="%{childName}"/></td> 
                <td><s:property value="%{childSurname}"/></td> 
                <td><s:property value="%{dateTimeAdm}"/></td> 
                <td><s:property value="%{age}"/></td> 
                <td><s:property value="%{gender}"/></td> 
                <td><s:property value="%{disabled}"/></td> 
                <td><s:property value="%{natureDisability}"/></td> 
            </tr>
            </s:iterator>
        </table>
        <br/><br/>
        <input type="button" id="prbutton" value="<s:text name="global.button.print"/>" onclick="AgeWiseSubPrint()"/>
        <script type="text/javascript">
        function AgeWiseSubPrint()
        {
            window.print();
        }
       </script>
    </center>    
    </body>
</html>
