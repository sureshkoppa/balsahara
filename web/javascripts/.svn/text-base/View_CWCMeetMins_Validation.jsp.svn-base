<%-- 
    Document   : View_CWCMeetMins_Validation
    Created on : Feb 18, 2013, 12:21:27 PM
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
             var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
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
                
                
        $('form#view_cwcmeetings').submit(function(){
        if($("#homeId").val()==-1)
        {
            $dialog.html("<s:text name="package.error.CWCMeetHomeId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="global.error.viewFromDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="global.error.viewFromDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#datepicker1").val().length<1)
        {
            $dialog.html("<s:text name="global.error.viewToDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("<s:text name="global.error.viewToDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
   });
});
  