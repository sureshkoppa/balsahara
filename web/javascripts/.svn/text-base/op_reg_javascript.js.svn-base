/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for OP Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_op_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            /*for submitting the form when this button is clicked*/
                                            progressCircleShow2();
                                            document.op_reg.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#op_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#op_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

            /*this var $dialog is for displaying the error dialog box*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});

           /*following function will be called when OP Register form is submitted*/
                $('form#op_reg').submit(function(){
                    /*validating the fields present in the form*/
                    if($("#op_reg_profile_id").val()==1)
                        {
                            $dialog.html("Sorry! Entered Profileid is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(document.op_reg.op_reg_date.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#op_reg_diagnosis").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#op_reg_treatment").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Treatment is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#op_reg_treated_at").val()==1)
                        {
                            $dialog.html("Sorry! Enter a value for Treated At");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                            /*making the form details visible in preview*/
                           document.getElementById('dialog-form_op_reg').style.visibility='visible';
                            /*adding the fields common in the form to the preview*/
                            $( "#op_preview" ).append( "<tr><td align='right'>Profile Id:</td><td>"+$("#op_reg_profile_id").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Date:</td><td>"+document.op_reg.op_reg_date.value.toString()+"</td></tr>"+
                                                       "<tr><td align='right'>Diagnosis:</td><td>"+$("#op_reg_diagnosis").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Treatment:</td><td>"+$("#op_reg_treatment").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Treated At:</td><td>"+$("#op_reg_treated_at").val()+"</td></tr>");
                           /*checking the option selected and validating the dynamic fields that are displayed*/
                           if($("#op_reg_treated_at").val()=="Treated In Home")
                            {
                              if($("#op_reg_specify_treatment").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Specify Treatment is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else
                                {
                                    /*preview of the treated in home option selected*/
                                    $( "#op_preview" ).append( "<tr><td align='right'>Specify Treatment Given:</td><td>"+document.getElementById('op_reg_specify_treatment').value.toString()+"</td></tr>");
                                    $('#dialog-form_op_reg').dialog('open');
	                            return false;
                                }
                            }
                            else if($("#op_reg_treated_at").val()=="Refered To Outside Hospital")
                            {
                               if($("#op_reg_hosp").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Hospital Referred is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else if($("#op_reg_reason").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Referral Reason is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                /*else if($("#datepicker2").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Admit Date is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }*/
                                else if($("#op_reg_treated_by").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Treated By is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else if($("#op_reg_treatment_given").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Treatment Given is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                /*else if($("#datepicker3").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Discharge Date is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }*/
                                else if($("#op_reg_remarks").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("Sorry! Entered Prescription At Discharge is not valid");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else
                                {
                                    /*preview of referred to outside hospital option selected*/
                                    $( "#op_preview" ).append( "<tr><td align='right'>Name Of The Hospital Referred:</td><td>"+$("#op_reg_hosp").val()+"</td></tr>"+
                                                               "<tr><td align='right'>Reason For Referral:</td><td>"+$("#op_reg_reason").val()+"</td></tr>"+
                                                               "<tr><td align='right'>Date Of Admit:</td><td>"+$("#datepicker2").val()+"</td></tr>"+
                                                               "<tr><td align='right'>Treated By Whom:</td><td>"+$("#op_reg_treated_by").val()+"</td></tr>"+
                                                               "<tr><td align='right'>Treatment Given:</td><td>"+$("#op_reg_treatment_given").val()+"</td></tr>"+
                                                               "<tr><td align='right'>Date Of Discharge:</td><td>"+$("#datepicker3").val()+"</td></tr>"+
                                                               "<tr><td align='right'>Prescription At Discharge:</td><td>"+document.getElementById('op_reg_remarks').value.toString()+"</td></tr>");
                   
                                    $('#dialog-form_op_reg').dialog('open');
	                            return false;
                                }
                            }
                            
                        }
	        });
	});



