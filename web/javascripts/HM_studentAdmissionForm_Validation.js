
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate for Add User in User management module Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

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

        /*the folowing function is called when view Medical General register form is submitted*/
                $('form#studentAdmissionForm').submit(function(){
           //alert('hi'+$("#gender").val);
                    
                    /*****************REG EX************************
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                   *************REG EX*************************/
                   
                                
                                if ($("#datepicker").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please enter date of admission.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if($("#childProfileId").val()== '-1')
                                {
                                 $dialog.html("Please select a child for admission.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;  
                                    
                                }
                                 else if($("#childProfileId").val()== '-1')
                                {
                                 $dialog.html("Please select a child for admission.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;  
                                    
                                }
                                
                                else if(undefined === $("#eduType").val()=='-1')
                                {
                                 $dialog.html("Please select Type of education for the child");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;  
                                    
                                }
                                /*else if(undefined === $("input[name='eduType']:checked").val())
                                {
                                 $dialog.html("Please select Type of education for the child");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;  
                                    
                                }*/
                                
                                else if($("#admissionNo").val()== '-1')
                                {
                                 $dialog.html("Please provide a admission number");
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


