<%-- 
    Document   : ViewIssueRegister
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
               <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok};               
               var errButL10n = {};
               errButL10n[okvar.close] = function() { 
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>    
             var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 180,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ALERT'.fontcolor('#FF0000'),
                        buttons: errButL10n
		});
                
                      if($("#datepicker").val()=="")
                        {
                            $dialog.html("<s:text name="js.err.selFromDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#datepicker1").val()=="")
                        {
                            $dialog.html("<s:text name="js.err.selToDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else {

                
                
            dojo.event.topic.publish("show_IssueDetails");
        
                    // }
                        }
            }
            
        </script>
         </head>
    <body>
        <center>
            <CAPTION style="text-align: center"><font size="3"><b><s:text name="heading.viewIss"/></b></font></CAPTION>
    <s:form action="DS-issue-viewIssue" theme="simple" id="ViewIssueForm" name="ViewIssueForm">
        <table>
            <tr>
                <td> <s:text name="label.fromDate"/> : </td><td> <s:textfield id="datepicker" theme="simple" name="viewIssue_fromDate"/>  </td>    
                <td> <s:text name="label.toDate"/> : </td><td> <s:textfield id="datepicker1" theme="simple" name="viewIssue_toDate"/> </td>  
           </tr>
           <tr>
               <td colspan="4" style="text-align: center">
                   <input type="button" value="<s:text name='button.view'/>" onclick="javascript:show_details(this);return false;"/>                   
               </td>
           </tr>
           
        </table>
    
  
                    <s:url id="d_url" action="DS-issue-viewIssue"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_IssueDetails" formId="ViewIssueForm" showLoadingText="true">
                 </sx:div>
                    
                   </s:form>
</center>
    </body>
</html>

