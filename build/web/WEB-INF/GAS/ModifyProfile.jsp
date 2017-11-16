<%-- 
    Document   : ModifyProfile
    Created on : 20 Jun, 2011, 6:55:30 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <script type="text/javascript">
            function populate_profile()
            {
            document.getElementById('ModifyGASForm').action="SU-modifyProfile-populateSelectGAS";
            document.getElementById('ModifyGASForm').submit();
            }
        </script>
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b>Modify Profile Details</b></font></CAPTION>

            <s:form name="ModifyGASForm" action="SU-modifyProfile-modifyProfile" id="ModifyGASForm" theme="css_xhtml">
              <table border="1" align="center" style="font-size:small">
                    <tbody>
                           <tr><td>Select Security Staff :</td>
                               <td>
                                   <s:select list="addDutyProfile" listKey="profile_id" listValue="profile_name" name="modifyProfileId" id="modifyProfileId" headerKey="select" headerValue="--Select Profile--" onchange="populate_profile()"/> 
                               </td>
                           </tr>
                    </tbody>
              </table>
                           <s:if test="%{modifyProfile!=null}">
                               <table border="1"  style="font-size:small; border-width: 1; text-align: left  ">
                                   <tbody>
                                       <tr><td>Name*</td><td><s:textfield name="modifyProfielName" id="modifyProfile_name" value="%{modifyProfile.profile_name}" /></td></tr>    
                                       <tr><td>Age*</td><td><s:textfield name="modifyProfileAge" value="%{modifyProfile.profile_age}" id="modifyProfile_age" /></td></tr>
                                       <tr><td>Designation</td><td><s:property value="modifyProfile.profile_desig"  /></td></tr>
                                       <tr><td>Contact Address*</td><td><s:textarea name="modifyProfileAddr" id="modifyProfile_address" value="%{modifyProfile.profile_contactAddr}"  rows="4" cols="20"/></td>
                                       <tr><td>Contact Phone no*</td><td><s:textfield name="modifyProfilePhno" id="modifyProfile_Phno" value="%{modifyProfile.profile_contactPhno}" /></td></tr>
                                       <tr><td>Email Id</td><td><s:property value="modifyProfile.profile_emailId" /></td></tr>    
                                         <s:date id="createdDate" name="modifyProfile.profile_doj" format="dd/MM/yyyy"/>  
                                       <tr><td>Joining Date</td><td><s:property value="createdDate" /></td></tr>
                                   </tbody>
                               </table>    
                                   <table>
                                       <tr>
                                           <td><s:submit value="Modify Details"/></td>
                                           <td><s:reset value="clear"/></td>
                                       </tr>
                                       
                                   </table>
                           </s:if>
           </s:form>
            
         </center>
    
    <div id="dialog-form_mod_gas" title="Modify Profile Preview">
                <table border="1" id="modgas_preview">
                </table>
        </div>
    </body>
</html>
