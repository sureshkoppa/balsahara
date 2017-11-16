/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for OP Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_add_duty" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
                            "Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            /*for submitting the form when this button is clicked*/
                                            document.AddDutyForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#addduty_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#addduty_preview" ).html("");
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
                $('form#AddDutyForm').submit(function(){
                    /*validating the fields present in the form*/
                    if($("#addDuty_name").val()=="select")
                        {
                            $dialog.html("Sorry! Please select profile Id");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(document.AddDutyForm.addDuty_date.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Please Enter Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                            /*making the form details visible in preview*/
                           document.getElementById('dialog-form_add_duty').style.visibility='visible';
                            /*adding the fields common in the form to the preview*/
                            $( "#addduty_preview" ).append( "<tr><td align='right'>Security staff:</td><td>"+$("#addDuty_name option:selected").text()+"</td></tr>"+
                                                       "<tr><td align='right'>Date:</td><td>"+document.AddDutyForm.addDuty_date.value.toString()+"</td></tr>"+
                                                       "<tr><td align='right'>From Time:</td><td>"+$("#addDuty_fromTime_hours").val()+":"+$("#addDuty_fromTime_mins").val()+"  "+$("#addDuty_fromTime_ampm").val()+"</td></tr>"+
                                                       "<tr><td align='right'>To Time:</td><td>"+$("#addDuty_toTime_hours").val()+":"+$("#addDuty_toTime_mins").val()+"  "+$("#addDuty_toTime_ampm").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Duty at:</td><td>"+$("#addDuty_dutyAt").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Observations:</td><td>"+$("#addDuty_observations").val()+"</td></tr>");
                                                   
                             $('#dialog-form_add_duty').dialog('open');
	                            return false;                        
                                      
                       }
	        });
	});

           
