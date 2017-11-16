<%@taglib prefix="s" uri="/struts-tags"%>
//alert("************"); 
$(function() {
                
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                
                <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="button.pre.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="button.pre.clear"/>").text();
	        var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
               
                preButL10n[submitvar.submit] = 
				function() { 
				                          
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.indexForm.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>      
             
                <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok};               
               var errButL10n = {};
               errButL10n[okvar.close] = function() { 
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>      
             <%--for Preview Code start--%>           
		   $( "#dialog-form_receipt_reg" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_receipt_reg" ).html("");
				                allFields.val("").removeClass( "ui-state-error" );
			                  }
		    });
            <%--for Preview Code ends--%>    
            
              <%--for Error Code start--%>    			
           		
            <%--this var $dialog is for displaying the error dialog box--%>
            var $dialog = $('<div></div>')
		    .html('This dialog will show every time!')
		    .dialog({
			autoOpen: false,
                        height: 130,
			width: 250,
                        modal: true,
                        title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
	     	});
             <%--for Error Code ends--%>  
           

});