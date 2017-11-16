<%-- 
    Document   : View_CWCMeetingsMinutes
    Created on : Jul 27, 2011, 11:31:09 AM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <script type="text/javascript">
            
         /*function validate()
            {
               // alert('helloi');
               var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
               var $dialog = $('<div></div>')
               
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
        
                     if($("#homeId").val()==-1)
                        {
                            $dialog.html("Sorry! Please Select home");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       else if($("#datepicker").val().length<1)
        {
            $dialog.html("Sorry! Entered From Date is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! Entered From Date is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
         else if($("#datepicker1").val().length<1)
        {
            $dialog.html("Sorry! Entered To Date is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("Sorry! Entered To Date is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
                       
            } */    
       
        <jsp:include page="../../javascripts/View_CWCMeetMins_Validation.jsp"></jsp:include>
        </script> 
        
    </head>
    <body>
        <center>
         <CAPTION><font size="3"><b><s:text name="global.heading.ViewCWCMeetMinsReg"/></b></font></CAPTION> 
       <table>
           <s:form name="view_cwcmeetings" action="view_cwcmeetings" method="POST" theme="css_xhtml" id="view_cwcmeetings" onsubmit="return validate();">
                  <s:hidden name="formName" value="view_cwcmeetings"/>
                  <tr><td align="right"><s:text name="package.label.CWCMeetSelHome" />:</td><td><select name="homeId" id="homeId">
                                   <option value="-1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${homeMasters}" var="obk">
                                       <option value=${obk}>${obk}</option>
                                   </c:forEach>
                  </select><%--s:select name="homeId" id="homeId" theme="simple" list="homeMasters" headerValue="--- Please Select ---" headerKey="-1"></s:select--%></td></tr>
                  <tr><td align="right"><s:text name="package.label.CWCMeetFromDate" />:</td><td><s:textfield name="cwc_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="package.label.CWCMeetToDate" />:</td><td><s:textfield name="cwc_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td></td><td align="center"><input type="submit" value="<s:text name="global.button.cwcProceed"/>"/></td></tr>
            </s:form>
       </table></center>
    </body>
</html>
