<%@taglib uri="/struts-tags" prefix="s"%>
<%-- 
    Document   : ResetPassword
    Created on : Apr 26, 2011, 2:32:28 PM
    Author     : NEELAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Reset Page</title>
           <script type="text/javascript">            
               <jsp:include page="../../javascripts/UM_pwdResetForm_validation.jsp"></jsp:include> 
            </script>
       <script>
           function decideActionBasedOnRole()
            {
                //alert('hi');           
                
                 var formElement=document.getElementById("pwdResetForm");
                //alert('------> '+formElement);
                  //alert('===========>'+formElement.action);
                //alert('value from session======!!!!=====>'+${session['roleid']});
                //decide action based on role
                if(${session['roleid']}=='0')
                {                    
                 document.pwdResetForm.action='UM-ChangePassword-Action';   
                }
                else if(${session['roleid']}=='1')
                {
                    document.pwdResetForm.action='HM-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                 else if(${session['roleid']}=='2')
                {
                    document.pwdResetForm.action='CW-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='3')
                {
                    document.pwdResetForm.action='DS-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                 else if(${session['roleid']}=='4')
                {
                    document.pwdResetForm.action='SU-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='6')
                {
                    document.pwdResetForm.action='DOC-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                 else if(${session['roleid']}=='-4')
                {
                    document.pwdResetForm.action='DPO-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='-3')
                {
                    document.pwdResetForm.action='CWC-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='-2')
                {
                    document.pwdResetForm.action='CWC-ChangePassword-Action';  
                    //alert('**********>'+formElement.action);
                }
                
                
                //alert('**********>'+formElement.action);
                
            }
       </script>
    </head>
    <body onload="return decideActionBasedOnRole();">
        <center> 
            <h2><u><s:text name="global.common.changePass"/></u></h2>
        <s:form name="pwdResetForm" id="pwdResetForm" action="" theme="css_xhtml">
            <table border="0" cellspacing="5">
                <tr><td><s:text name="global.common.entOldPass"/>:</td><td><s:password id="oldPassword" name="oldPassword"/></td></tr>
                <tr><td><s:text name="global.common.entNewPass"/>:</td><td><s:password id="newPassword" name="newPassword"/></td></tr>
                <tr><td><s:text name="global.common.reTypePass"/>:</td><td><s:password id="retypedPassword"  name="retypedPassword"/></td></tr>
                <tr><td colspan="2"><input type="submit" value="<s:text name="global.button.changePass"/>"/></td></tr>
            </table>

        </s:form>
        </center>
    </body>
</html>
