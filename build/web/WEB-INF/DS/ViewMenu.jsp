<%-- 
    Document   : ViewMenu
    Created on : 16 Nov, 2012, 3:08:19 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            $dialog.html("Sorry! Please Select Date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else {

                
            dojo.event.topic.publish("show_MenuDetails");
        
                    // }
                        }
            }
            
        </script>
    </head>
    <body>
    <center>
        <CAPTION style="text-align: center"><font size="3"><b><s:text name="global.leftMenu.viewMenu"/></b></font></CAPTION>
    <s:form action="DS-menu-viewMenu" theme="simple" id="ViewMenuForm" name="ViewMenuForm">
        <table>
            <tr>
                <td> <s:text name="label.selDate"/> : </td><td> <s:textfield id="datepicker" theme="simple" name="viewMenu_date"/>  </td>    
            </tr>
           <tr>
               <td colspan="4" style="text-align: center">
                   <input type="button" value="<s:text name="button.view"/>" onclick="javascript:show_details(this);return false;"/>                   
               </td>
           </tr>
           
        </table>
    
  
                    <s:url id="d_url" action="DS-menu-viewMenu"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_MenuDetails" formId="ViewMenuForm" showLoadingText="true">
                 </sx:div>
                    
                   </s:form>
</center>
    </body>
</html>
