<%-- 
    Document   : ViewTailoringRegister
    Created on : 29 Aug, 2011, 2:27:43 PM
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
            function show_details(val)
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
                            $dialog.html("Sorry! Please Select From Date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#datepicker1").val()=="")
                        {
                            $dialog.html("Sorry! Please Select To Date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else {

                
            dojo.event.topic.publish("show_TailorDetails");
        
                    // }
                        }
            }
            
        </script>
         </head>
    <body>
        <center>
    <CAPTION style="text-align: center"><font size="3"><b>View Tailoring Register</b></font></CAPTION>
    <s:form action="DS-tailor-viewTailor" theme="simple" id="ViewTailoringForm" name="ViewTailoringForm">
        <table>
            <tr>
                <td> From Date : </td><td> <s:textfield id="datepicker" theme="simple" name="viewTail_fromDate"/>  </td>    
                <td> To   Date : </td><td> <s:textfield id="datepicker1" theme="simple" name="viewTail_toDate"/> </td>  
           </tr>
           <tr>
               <td colspan="4" style="text-align: center">
                   <input type="button" value="View" onclick="javascript:show_details(this);return false;"/>                   
               </td>
           </tr>
           
        </table>
    
  
                    <s:url id="d_url" action="DS-tailor-viewTailor"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_TailorDetails" formId="ViewTailoringForm" showLoadingText="true">
                 </sx:div>
                    
                   </s:form>
</center>
    </body>
</html>