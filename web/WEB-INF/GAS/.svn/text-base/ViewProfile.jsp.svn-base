<%-- 
    Document   : ViewProfile
    Created on : 30 Jun, 2011, 10:56:20 AM
    Author     : suresh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <script lang="javascript">
            function populate_profile()
            {
            document.getElementById('ModifyProfileForm').action="SU-viewProfile-populateSelectGAS";
            document.getElementById('ModifyProfileForm').submit();
            }
        </script>
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b>View Profile Details</b></font></CAPTION>

            <s:form name="ModifyProfileForm" action="SU-viewProfile-modifyProfile" id="ModifyProfileForm" theme="css_xhtml">
              <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td>Select Security Staff :</td>
                               <td>
                                   <s:select list="addDutyProfile" listKey="profile_id" listValue="profile_name" name="modifyProfileId" headerKey="select" headerValue="--Select Profile--" onchange="populate_profile()"/> 
                               </td>
                           </tr>
                  
                           <s:if test="%{modifyProfile!=null}">
                              
                               <tr><td>Name</td><td><s:text name="%{modifyProfile.profile_name}"/></td></tr>
                               <tr><td>Profile Id</td><td><s:text name="%{modifyProfile.profile_id}"/></td></tr>
                               <tr><td>Age</td><td><s:text name="%{modifyProfile.profile_age}"/></td></tr>
                               <tr><td>Address</td><td><s:text  name="%{modifyProfile.profile_contactAddr}"/></td>
                               <tr><td>Phone no</td><td><s:text name="%{modifyProfile.profile_contactPhno}"/></td></tr>
                               <tr><td>Designation</td><td><s:text name="%{modifyProfile.profile_desig}"/></td></tr>
                               <tr><td>Email Id</td><td><s:text name="%{modifyProfile.profile_emailId}"/></td></tr>    
                                 <s:date id="createdDate" name="modifyProfile.profile_doj" format="dd/MM/yyyy"/>  
                                       <tr><td>Joining Date</td><td><s:property value="createdDate" /></td></tr>
                                      
                                    <%-- <table>
                                       <tr>
                                           <td><s:submit value="Modify Details"/></td>
                                           <td><s:reset value="clear"/></td>
                                       </tr>
                                       
                                   </table>  --%>
                           </s:if>
                               
                           </tbody>
                                    </table> 
                  
            
        
            </s:form></center>
    </body>
</html>
