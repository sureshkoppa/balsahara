<%-- 
    Document   : AddGuardPhoto
    Created on : 10 Aug, 2011, 11:28:01 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <!--  <script type="text/javascript">
            function populate_profile()
            {
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
                
                
                    /*validating the fields present in the form*/
                     if($("#addGuardPhotoId").val()=="select")
                        {
                            $dialog.html("Sorry!Please Select Guard for adding Photo");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                    
            
            }
        </script>  -->
    </head>
    <body>
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.addPhoto"/></b></font></CAPTION>
            <s:form action="SU-addGuardPhoto-addGuardPhoto" theme="simple" method="post" id="AddPhotoForm" name="AddPhotoForm" enctype="multipart/form-data">
                <s:hidden name="formName" value="AddPhotoForm"/>
                     <table border="1" align="center" style="font-size:small">
                            <tr>
                              <td><s:text name="label.selGuardStaff"/> :</td>
                                <td> 
                                   <select name="addGuardPhotoId" id="addGuardPhotoId" onchange="populate_profile()">
                                       <option value="select">--<s:text name="option.selProfile"/>--</option>
                                       <c:forEach items="${addDutyProfile}" var="pro" varStatus="stat">
                                           <option value="${pro.profileidSecstaff}">${pro.profileidSecstaff}--->${pro.name}</option>
                                           
                                       </c:forEach>
                                       
                                       
                                       
                                    </select>  
                                   </td>
                               </tr>
                           
                           
                           
                           
                           
                             <tr>
                                 <td><s:text name="label.uploadPhoto"/></td>
                                <td><s:file name="guardPhotoFile" id="guardPhotoFile" theme="simple" /></td>
                            </tr>
                    
                     </table>
            <table>
                <tr>
                    <td><input type="submit"  value="<s:text name="button.savePhoto"/>" /></td>
                    <td><input type="reset"  value="<s:text name="button.clear"/>" /></td>
                </tr>
            </table>
            </s:form>
            <br/><br/><br/>
            <ul style="font-size: small">
                <li> <s:text name="message.photo_type"/> </li>
                <li> <s:text name="message.photo_size"/> </li>
            </ul>    
        </center>
    </body>
</html>
