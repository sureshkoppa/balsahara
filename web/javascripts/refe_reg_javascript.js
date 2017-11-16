/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Referral Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_refe_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                  /*statement below submits the form when submit button is clicked*/
                  progressCircleShow2();
                                            document.refe_reg.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                   /*here no need to set values to null as when preview is
                    *displayed again the values will be over written*/
                                        document.getElementById('refe_reg_profile_id').style.visibility='visible';
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

           /*this variable sets display of dialog box for error message*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});

        /*the folowing function is called when referral register form is submitted*/
                $('form#refe_reg').submit(function(){
                    //alert(document.refe_reg.refe_reg_admitdate.value.toString().length);
                    /*validating the fields present in the form*/
                    if($("#refe_reg_profile_id").val()==1)
                        {
                            $dialog.html("Sorry! Entered Profileid is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(document.refe_reg.referralDate.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered Referral Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_hosp").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Hospital Referred is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_reason").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Referral Reason is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        /*else if(document.refe_reg.refe_reg_admitdate.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered Admit Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }*/
                        else if($("#refe_reg_treated_by").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Treated By is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#refe_reg_treatment_given").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Treatment Given is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        /*else if(document.refe_reg.refe_reg_dischargedate.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered Discharge Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }*/
                        else if($("#refe_reg_remarks").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Prescription At Discharge is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                            /*setting the entered fields into span tags to
                             *display the values in the preview*/
                            $("#refe_reg_profile_id_span").html($("#refe_reg_profile_id").val());
                            $("#refe_reg_referral_date_span").html(document.refe_reg.referralDate.value.toString());
                            $("#refe_reg_hosp_span").html($("#refe_reg_hosp").val());
                            $("#refe_reg_reason_span").html($("#refe_reg_reason").val());
                            $("#refe_reg_admit_date_span").html(document.refe_reg.refe_reg_admitdate.value.toString());
                            $("#refe_reg_treated_by_span").html($("#refe_reg_treated_by").val());
                            $("#refe_reg_treatment_given_span").html($("#refe_reg_treatment_given").val());
                            $("#refe_reg_discharge_date_span").html(document.refe_reg.refe_reg_dischargedate.value.toString());
                            $("#refe_reg_remarks_span").html(document.getElementById('refe_reg_remarks').value.toString());
                            /*setting the div tag's visibility to make it visible in preview*/
                            document.getElementById('dialog-form_refe_reg').style.visibility='visible';
                            document.getElementById('refe_reg_profile_id').style.visibility='hidden';
                            /*opening the dialog box with values in div dialog-form*/
                            $('#dialog-form_refe_reg').dialog('open');
	            return false;
                        }
	        });
	});

