<%-- 
    Document   : ViewDuty
    Created on : 1 Jul, 2011, 5:45:08 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
 <html>
    <head>
        <script type="text/javascript">
          function populate_pid()
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
                     if($("#viewDuty_name").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select Profile ID");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       

            }   
                    </script>
       
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b><s:text name="heading.viewDuty"/></b></font></CAPTION>

            <s:form name="AddDutyForm"  action="SU-viewDuty-viewDuty" id="ViewDutyForm" theme="css_xhtml">
                 <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td><s:text name="label.selGuardStaff"/> :</td>
                               <td>
                                   <%--<s:select list="addDutyProfile" listKey="profileidSecstaff" listValue="name" name="viewDuty_name" id="viewDuty_name" headerKey="select" headerValue="--Select Profile--" onchange="populate_pid()"/> --%>
                                    <select name="viewProfileId" id="viewProfileId" onchange="populate_pid()">
                                       <option value="select">--<s:text name="option.selProfile"/>--</option>
                                       <c:forEach items="${addDutyProfile}" var="pro" varStatus="stat">
                                           <option value="${pro.profileidSecstaff}">${pro.profileidSecstaff}--->${pro.name}</option>
                                           
                                       </c:forEach>
                                       
                                       
                                       
                                    </select>  
                               </td>
                           </tr>
                           <tr><td><s:text name="label.fromTime"/>  :</td>
                               <td>
                                   <s:textfield id="datepicker" name="viewDuty_fromDate" readonly="true" />
                               </td>
                           </tr>
                           <tr><td><s:text name="label.toTime"/> :</td>
                               <td><s:textfield id="datepicker1" name="viewDuty_toDate" readonly="true" /></td>
                           </tr>
                    </tbody>
                 </table>
                           
                             
                           
                             <table>
                                   <tr>
                                       <td><input type="submit" value="<s:text name="button.viewDuty"/>" /></td>
                                       <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                                   </tr>
                
                               </table>
            </s:form>
         </center>
 </body>
</html>

