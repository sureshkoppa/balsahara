<%-- 
    Document   : ViewDietRegister
    Created on : 9 Jan, 2013, 11:18:14 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
    <head>
        <sx:head/>
        <script>
            function show_Dietdetails(val)
            {
               var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 180,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ALERT'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                      if($("#datepicker").val()=="")
                        {
                            $dialog.html("Sorry! Please Select Date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else {

                
                          dojo.event.topic.publish("show_DietIssueDetails");
        
                    // }
                        }
            }
            
        </script>
         </head>
    <body>
        <center>
    <CAPTION style="text-align: center"><font size="3"><b>View Diet Issue</b></font></CAPTION>
    <s:form action="DS-issue-viewDietIssue" theme="simple" id="ViewDietIssueForm" name="ViewDietIssueForm">
        <table>
            <tr>
                <td> Select Date : </td><td> <s:textfield id="datepicker" theme="simple" name="viewDietIssue_date"/>  </td>    
               
           </tr>
           <tr>
               <td colspan="4" style="text-align: center">
                   <input type="button" value="View" onclick="javascript:show_Dietdetails(this);return false;"/>                   
               </td>
           </tr>
           
        </table>
    
  
                    <s:url id="d_url" action="DS-issue-viewDietIssue"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_DietIssueDetails" formId="ViewDietIssueForm" showLoadingText="true">
                 </sx:div>
                    
                   </s:form>
</center>
    </body>
</html>

