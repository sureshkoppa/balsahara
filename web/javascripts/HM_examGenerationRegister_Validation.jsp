<%-- 
    Document   : HM_examGenerationRegister_Validation
    Created on : Feb 26, 2013, 3:32:51 PM
    Author     : sweta
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>

           /*this variable sets display of dialog box for error message*/
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

        /*the folowing function is called when Exam Generation register form is submitted*/
                $('form#examGenerationRegister').submit(function(){
                    var Digits_only=/^[0-9]{1,3}$/;
                   
                                if ($("#datepicker").val().length<1) {
                                $dialog.html("<s:text name="global.error.examGenRegSelExaDat"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("#maxMarks").val().length<1) {
                                $dialog.html("<s:text name="global.error.examGenRegExaMaxMar"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if(!Digits_only.test($("#maxMarks").val()))
                                {
                                $dialog.html("<s:text name="global.error.examGenRegEntDigOnly"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }             
              
                        else
                        {
                            progressCircleShow2();
	                    return true;
                        }
	        });
	});


