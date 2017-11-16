<%-- 
    Document   : refe_reg_javascript
    Created on : Aug 29, 2012, 4:57:39 PM
    Author     : sweta
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Referral Register Form--%>
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="global.button.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="global.button.clear"/>").text();
			    var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.refe_reg.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>      
             
             <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>    

		$( "#dialog-form_refe_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: preButL10n,
			close: function() {
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

           <%--this variable sets display of dialog box for error message--%>
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

        <%--the folowing function is called when referral register form is submitted--%>
                $('form#refe_reg').submit(function(){
                    <%--validating the fields present in the form--%>
                    if($("#refe_reg_profile_id").val()==1)
                        {
                            $dialog.html("<s:text name="global.error.refeProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(document.refe_reg.referralDate.value.toString().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_hosp").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeHosp"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_reason").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeReas"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_treated_by").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeTreatBy"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_treatment_given").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeTreatGiven"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_remarks").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeDiscPres"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                            <%--setting the entered fields into span tags to
                              display the values in the preview--%>
                            $("#refe_reg_profile_id_span").html($("#refe_reg_profile_id").val());
                            $("#refe_reg_referral_date_span").html(document.refe_reg.referralDate.value.toString());
                            $("#refe_reg_hosp_span").html($("#refe_reg_hosp").val());
                            $("#refe_reg_reason_span").html($("#refe_reg_reason").val());
                            $("#refe_reg_admit_date_span").html(document.refe_reg.refe_reg_admitdate.value.toString());
                            $("#refe_reg_treated_by_span").html($("#refe_reg_treated_by").val());
                            $("#refe_reg_treatment_given_span").html($("#refe_reg_treatment_given").val());
                            $("#refe_reg_discharge_date_span").html(document.refe_reg.refe_reg_dischargedate.value.toString());
                            $("#refe_reg_remarks_span").html(document.getElementById('refe_reg_remarks').value.toString());
                            <%--setting the div tag's visibility to make it visible in preview--%>
                            document.getElementById('dialog-form_refe_reg').style.visibility='visible';
                            document.getElementById('refe_reg_profile_id').style.visibility='hidden';
                            <%--opening the dialog box with values in div dialog-form--%>
                            $('#dialog-form_refe_reg').dialog('open');
	            return false;
                        }
	        });
	});


