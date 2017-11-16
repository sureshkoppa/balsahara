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
          <CAPTION><font size="3"><b><s:text name="heading.addProfile"/></b></font></CAPTION>
        
            <s:form name="AddGuardProfileForm" action="SU-profile-addProfile" theme="css_xhtml" method="post" id="AddGuardProfileForm" >
            <s:hidden name="formName" value="AddGuardProfileForm"/>
         <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td><s:text name="label.fName"/>*</td>
                               <td>
                                   <s:textfield name="addProfile_fname" id="addProfile_fname" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.lName"/>*</td>
                               <td>
                                   <s:textfield name="addProfile_lname" id="addProfile_lname" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.age" />*</td>
                               <td >
                                   <s:textfield name="addProfile_age" id="addProfile_age" size="2" maxlength="2" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.desig"/>*</td>
                               <td >
                                   <s:textfield name="addProfile_desig" id="addProfile_desig" value="Security" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.contAddr"/>*</td>
                               <td >
                                   <s:textarea name="addProfile_contactAddr" id="addProfile_contactAddr" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.contPhNo"/>*</td>
                               <td >
                                   <s:textfield name="addProfile_contactPhno" id="addProfile_contactPhno" maxlength="12" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.emailId"/></td>
                               <td >
                                   <s:textfield name="addProfile_emailId" id="addProfile_emailId" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                             <tr><td><s:text name="label.dateOfJoin"/>*</td>
                               <td >
                                   <s:textfield name="addProfile_doj" id="datepicker"/>
                               </td>
                             </tr>
                             <%--  <tr>
                              <td>Upload photo</td>
                                 <td><s:file name="guardPhotoFile" theme="simple" /></td>
                               </tr>
                             --%>
                 </tbody>
                </table>
             <table>
               <tr>
                    <td><input type="submit" value="<s:text name="button.submit"/>"/></td>
                        <td><input type="reset" value="<s:text name="button.clear"/>"/></td>
                </tr>
            </table>    
                
                
            </s:form>   
          
          
         <!--this div is for showing preview (unlike other forms here all fields are added dynamically in preview)-->
        <div id="dialog-form_add_guardprofile" title="<s:text name="js.preview.addProfile"/>">
           
            <form name="add_guard_form">
            
            <table border="1" id="add_profile_preview" >
                </table>
            </form>
        </div>
          
          
          
        </center>
       
         
    </body>
     
</html>
