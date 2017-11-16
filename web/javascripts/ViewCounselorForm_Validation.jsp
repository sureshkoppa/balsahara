<%-- 
    Document   : ViewCounselorForm_Validation
    Created on : Feb 12, 2013, 11:09:13 AM
    Author     : sweta
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
                
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
                 function popCounsel()
                 {
                     
                 if($("#view_counsel_profileId").val()=="select")
                        {
                            $dialog.html("<s:text name="global.error.couFormSelProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                          dojo.event.topic.publish("viewCounsilTopics");  
                    }
                }

           