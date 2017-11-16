<%-- 
    Document   : HM_AddOutSideSchool_Validation
    Created on : Feb 26, 2013, 2:11:17 PM
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

        /*the folowing function is called when Add Outside School register form is submitted*/
                $('form#addSchoolForm').submit(function(){
                         
                                if ($("#schoolName").val().length<1) {
                                $dialog.html("<s:text name="global.error.addOutSchEntSchName"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                
                                else if ($("#districtId").val()=='-1') {
                                $dialog.html("<s:text name="global.error.addOutSchSelSchDist"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("#schoolAddress").val().length<1) {
                                $dialog.html("<s:text name="global.error.addOutSchEntSchAdd"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("#schoolType").val()=='-1') {
                                $dialog.html("<s:text name="global.error.addOutSchSelSchTyp"/>");
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