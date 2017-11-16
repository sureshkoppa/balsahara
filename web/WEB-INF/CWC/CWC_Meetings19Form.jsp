<%-- 
    Document   : CWC_Meetings19
    Created on : 12 Sep, 2017, 5:21:56 PM
    Author     : suresh
--%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="jq/jquery-ui.css"/>
	 <script src="jq/jquery-1.8.2.js"></script>
	 <script src="jq/jquery-ui.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <script>
        
 $(document).ready(function() {
    $('#dialog19').on("click", function() {
        $('<div>').dialog({
            modal: true,
            open: function ()
            {
                $(this).load('CWC_Meetings19Form');
                $(this).parent().css('background-color','white');
                
             
            },         
            height: 700,
            width: 1200,
            title: 'Form 19'
        });
    });
    });
    </script>
    </head>
    <body>
        <s:form name="cwcHomeSelectForm" id="cwcHomeSelectForm" action="CW-CWCChRepBfCWC" method="POST" target="_blank">
            
            <h6 style="text-align: center">FORM 19<br/>
[Rule 18(8)]<br/>
ORDER FOR PLACEMENT OF CHILD UNDER THE CARE OF A PARENT, GUARDIAN OR FIT<br/>
PERSON PENDING INQUIRY</h6>
<table>
    
    <tr><td>Select Child Profile ID: </td><td>     <s:select id="child"  theme="simple" list="foundlist" name="pendEnqPdf"/></td> </tr> 

        <!--input type="hidden" id="foundchildprofile" name="foundchildprofileid"/-->

</select><%--s:select name="homeId" id="homeId" theme="simple" list="homeMasters" headerValue="--- Please Select ---" headerKey="-1"></s:select--%></td></tr>
<tr><td colspan="2" style="text-align: center"><br/><input style="text-align: center" id="dialog19" type="button" value="<s:text name="global.button.cwcProceed"/>"/></td></tr>
</table>
</s:form>
            
            <br/>
            <div style="text-align: center">
                <a href="images_Forms/Form19.pdf" target="_blank">Click for Template</a>
            </div>    
            
            <div></div>
        </body>
</html>
