<%-- 
    Document   : ViewProfile
    Created on : 30 Jun, 2011, 10:56:20 AM
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
            
           
            document.getElementById('ViewProfileForm').action="SU-viewProfile-populateSelectGAS";
            document.getElementById('ViewProfileForm').submit();
                        }
            }
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <img:image  src="%{image_guard}" resize="true" height="25" refresh="false" alt="gimage"/>

     <%--   <img src="C:\upload\7.jpg" alt="7 image"/>--%>
         
         <center>
            <CAPTION><font size="3"><b><s:text name="heading.viewProf"/></b></font></CAPTION>
              
            <s:form name="ViewProfileForm" action="SU-viewProfile-populateSelectGAS" id="ViewProfileForm" theme="css_xhtml">
                <s:hidden name="formName" value="ViewProfileForm"/>
                
                <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td><s:text name="label.selGuardStaff"/> :</td>
                               <td>
                                   <%--     <s:select list="addDutyProfile" listKey="profileidSecstaff" listValue="%{profileidSecstaff+'---->'+name}" name="modifyProfileId" id="modifyProfileId" headerKey="select" headerValue="--Select ProfileID--" onchange="populate_profile()"/>  --%>
                                   <select name="modifyProfileId" id="modifyProfileId" onchange="populate_profile()">
                                       <option value="select">--<s:text name="option.selProfile"/>--</option>
                                       <c:forEach items="${addDutyProfile}" var="pro" varStatus="stat">
                                           <option value="${pro.profileidSecstaff}">${pro.profileidSecstaff}--->${pro.name}</option>
                                           
                                       </c:forEach>
                                       
                                       
                                       
                                    </select>  
                               
                               </td>
                           </tr>
                  
                           <s:if test="%{modifyProfile!=null}">
                               <%--    --%>
          
                               <%--     <tr><td>photo---><%=request.getRealPath("/")%><td><img src='<%=request.getRealPath("/")%>WEB-INF\classes\photos\guard-<s:property value="modifyProfile.profile_id"/>.jpg'  /></td></tr>--%>
                               <tr><td><s:text name="label.name"/></td><td><s:property value="modifyProfile.profile_name" escape="false"/></td></tr>
                               <tr><td><s:text name="label.profileId"/></td><td><s:property value="modifyProfile.profile_id" escape="false"/></td></tr>
                               <tr><td><s:text name="label.age"/></td><td><s:property value="modifyProfile.profile_age" escape="false"/></td></tr>
                               <tr><td><s:text name="label.contAddr"/></td><td><s:property value="modifyProfile.profile_contactAddr" escape="false"/></td>
                               <tr><td><s:text name="label.contPhNo"/></td><td><s:property value="modifyProfile.profile_contactPhno"/></td></tr>
                               <tr><td><s:text name="label.desig"/></td><td><s:property value="modifyProfile.profile_desig" escape="false"/></td></tr>
                               <tr><td><s:text name="label.emailId"/></td><td><s:property value="modifyProfile.profile_emailId" escape="false"/></td></tr>    
                                 <s:date id="createdDate" name="modifyProfile.profile_doj" format="dd/MM/yyyy"/>  
                                       <tr><td><s:text name="label.dateOfJoin"/></td><td><s:property value="createdDate" /></td></tr>
                                     
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
