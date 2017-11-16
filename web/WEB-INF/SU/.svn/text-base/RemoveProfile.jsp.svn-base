<%-- 
    Document   : RemoveProfile
    Created on : 30 Jun, 2011, 11:31:35 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <script lang="javascript">
            var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
            
            
            
          function populate_profile()
            {
             if($("#modifyProfileId").val()=="select")
                        {
                            $dialog.html("Sorry!Please Select Guard Profile");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{    
            
            document.getElementById('ModifyProfileForm').action="SU-removeProfile-populateSelectGAS";
            document.getElementById('ModifyProfileForm').submit();
            }
            }
            function check()
            {
              
            
            //document.getElementById('ModifyProfileForm').action="SU-removeProfile-populateSelectGAS";
                                var r=confirm("Do you want to remove Profile");
                                  if (r==true)
                                  {
                                       document.getElementById('ModifyProfileForm').submit();
                                  }
                                  else
                                  {
                                        return false;
                                  }  
                                
                  
                
            }
           
        </script>
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b><s:text name="heading.remProf"/></b></font></CAPTION>

            <s:form name="ModifyProfileForm" action="SU-removeProfile-removeProfile" id="ModifyProfileForm" theme="css_xhtml" onsubmit="javascript:return check();">
              <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td> <s:text name="label.selGuardStaff"/> :</td>
                               <td>
                                  <select name="modifyProfileId" id="modifyProfileId" onchange="populate_profile()">
                                       <option value="select">--<s:text name="option.selProfile"/>--</option>
                                       <c:forEach items="${addDutyProfile}" var="pro" varStatus="stat">
                                           <option value="${pro.profileidSecstaff}">${pro.profileidSecstaff}--->${pro.name}</option>
                                           
                                       </c:forEach>
                                       
                                       
                                       
                                    </select>  
                               </td>
                           </tr>
                 
                           <s:if test="%{modifyProfile!=null}">
                              
                               <tr><td><s:text name="label.name"/></td><td><s:property value="modifyProfile.profile_name"/></td></tr>    
                               <tr><td><s:text name="label.age"/></td><td><s:property value="modifyProfile.profile_age"/></td></tr>
                               <tr><td><s:text name="label.contAddr"/></td><td><s:property  value="modifyProfile.profile_contactAddr"/></td>
                               <tr><td><s:text name="label.contPhNo"/></td><td><s:property value="modifyProfile.profile_contactPhno"/></td></tr>
                               <tr><td><s:text name="label.emailId"/></td><td><s:property value="modifyProfile.profile_emailId"/></td></tr>    
                                <s:date id="createdDate" name="modifyProfile.profile_doj" format="dd/MM/yyyy"/>  
                                       <tr><td><s:text name="label.dateOfJoin"/></td><td><s:property value="createdDate" /></td></tr>
                                    <tr>
                                           <td colspan="2" style="text-align: center;">
                                               <input type="submit" value="<s:text name="button.removeProf"/>" onclick="javascript:return check();" />
                                           
                                           </td>
                                           
                                       </tr>
                                       
                                   
                           </s:if>
                                   <s:else>
                                       
                                       
                                   </s:else>
                                    </tbody>
                                    </table>
         </s:form>
         </center>
    </body>
</html>
