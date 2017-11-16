<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Category Register Form--%>

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>  
             <%--for Error Code start--%>    			
            <%--this var $dialog is for displaying the error dialog box--%>
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
            <%--for Error Code ends--%>     
              $('form#AdmCheckForm').submit(function(){
              
               if ($("#childName").val().length<1 && $("#cwcNo").val().length<1 ) {
                                //alert('hi');                                
                                $dialog.html("<s:text name="js.err.plsFillAnyOfFields"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
              
                        else
                        {
                            //showProgress('footer-centre');
                            //showProgressOnButton();
                            //showProgressCircle();
                            //$('#progress').addClass('progressCircle');
                            progressCircleShow2();
	                    return true;
                        }
	        });
	});