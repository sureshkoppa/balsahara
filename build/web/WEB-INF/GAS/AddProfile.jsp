<%-- 
    Document   : AddProfile
    Created on : 30 Jun, 2011, 10:32:44 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b>Add Profile</b></font></CAPTION>
        
        <s:form name="AddProfileForm" action="SU-profile-addProfile" theme="css_xhtml" id="AddProfileForm">
         <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td>First Name*</td>
                               <td>
                                   <s:textfield name="addProfile_fname" id="addProfile_fname"/>
                               </td>
                           </tr>
                           <tr><td>Last Name*</td>
                               <td>
                                   <s:textfield name="addProfile_lname" id="addProfile_lname"/>
                               </td>
                           </tr>
                           <tr><td>Age*</td>
                               <td >
                                   <s:textfield name="addProfile_age" id="addProfile_age" size="2" maxlength="2"/>
                               </td>
                           </tr>
                           <tr><td>Designation*</td>
                               <td >
                                   <s:textfield name="addProfile_desig" id="addProfile_desig" value="Security"/>
                               </td>
                           </tr>
                           <tr><td>Contact Address*</td>
                               <td >
                                   <s:textarea name="addProfile_contactAddr" id="addProfile_contactAddr" rows="4" cols="20" />
                               </td>
                           </tr>
                           <tr><td>Contact Number*</td>
                               <td >
                                   <s:textfield name="addProfile_contactPhno" id="addProfile_contactPhno" maxlength="12"/>
                               </td>
                           </tr>
                           <tr><td>Email Id</td>
                               <td >
                                   <s:textfield name="addProfile_emailId" id="addProfile_emailId" />
                               </td>
                           </tr>
                             <tr><td>Date of Joining*</td>
                               <td >
                                   <s:textfield name="addProfile_doj" id="datepicker"/>
                               </td>
                 </tbody>
                </table>
             <table>
                <tr>
                    <td><s:submit value="Save Profile" /></td>
                    <td><s:reset value="Clear"/></td>
                </tr>
            </table>    
                
                
            </s:form>    
       
        
         <!--this div is for showing preview (unlike other forms here all fields are added dynamically in preview)-->
        <div id="dialog-form_add_profile" title="Add Profile Preview">
            <table border="1" id="add_profile_preview" >
                </table>
        </div>
          </center>
    </body>
</html>
