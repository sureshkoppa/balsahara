$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                
                $( "#dialog-form_mod_gas" ).dialog({
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
                                            document.ViewDutyForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                      //  $( "#modgas_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                             //   $( "#modgas_preview" ).html("");
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
            /*validating the fields present in the form*/
                     /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z ]+$/;
                    var Digits_only=/^[0-9]{1,2}$/;                 //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    /*****************REG EX*************************/
                $('form#ViewDutyForm').submit(function(){
                      if($("#viewDuty_name").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select Profile ID");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if($("#datepicker").val()=="")
                       {
                            $dialog.html("Sorry! Please Select From date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }  
                        else if(!datepattern.test($("#datepicker").val()))
                          {
                            $dialog.html("Sorry! From date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                     
                      else if($("#datepicker1").val()=="")
                       {
                            $dialog.html("Sorry! Please Select to date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }  
                        else if(!datepattern.test($("#datepicker1").val()))
                          {
                            $dialog.html("Sorry! To date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                    
                    
                    
                }
);


});
