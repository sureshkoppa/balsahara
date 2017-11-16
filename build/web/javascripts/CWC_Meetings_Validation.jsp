<%-- 
    Document   : CWC_Meetings_Validation
    Created on : Feb 18, 2013, 12:07:06 PM
    Author     : sweta
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
               <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
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
			title: 'ALERT'.fontcolor('#FF0000'),
                        buttons: errButL10n
		});
                
                
                    $('form#cwcHomeSelectForm').submit(function(){
                     if($("#homeId").val()==-1)
                        {
                            $dialog.html("<s:text name="package.error.CWCMeetHomeId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       
            });
});
