<%-- 
    Document   : ViewReceiptRegister
    Created on : 22 Aug, 2011, 11:06:16 AM
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

                
            
              //  alert(val.value);
              //  dojo.event.topic.publish("show_childdetails");
              // if(val.value!=1){
            dojo.event.topic.publish("show_ReceiptDetails");
                        
                    // }
                        }
            }
            
        </script>
         </head>
    <body>
       <center>
           <CAPTION style="text-align: center"><font size="3"><b><s:text name="heading.viewRecAndPur"/></b></font></CAPTION>
    <s:form action="DS-receipt-viewReceipt" theme="simple" id="ViewReceiptForm" name="ViewReceiptForm">
        <table>
            <tr>
                <td> <s:text name="label.fromDate"/> : </td><td> <s:textfield id="datepicker" theme="simple" name="viewReceipt_fromDate"/>  </td>    
                <td> <s:text name="label.toDate"/> : </td><td> <s:textfield id="datepicker1" theme="simple" name="viewReceipt_toDate" /> </td>  
           </tr>
           <tr>
               <td colspan="4" style="text-align: center">
                   <input type="button" value="<s:text name="button.view"/>" onclick="javascript:show_details(this);return false;"/>                   
               </td>
           </tr>
           
        </table>
    
  
                    <s:url id="d_url" action="DS-receipt-viewReceipt"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_ReceiptDetails" formId="ViewReceiptForm" showLoadingText="true">
                 </sx:div>
                    
                   </s:form>
       </center>.
    </body>
</html>
