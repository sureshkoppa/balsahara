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
                $('form#modifyUserForm').submit(function(){
           //alert('hi'+$("#gender").val);
                    
                    /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    /*****************REG EX*************************/
                   
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                       /*if($("#userId").val().length<1)
                        {
                            $dialog.html("Please enter a user id");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        if((!user_pass_regex.test($("#userId").val())))
                        {
                            $dialog.html("User Id can NOT contain space or spatial chracters except underscore '_'");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else if($("#password").val().length<1)
                        {
                          $dialog.html("Please enter a password");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#password").val().length<5 || $("#password").val().length>20)
                        {
                          $dialog.html("Password must contain minimum 5 and maximum 20 characters");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if((!user_pass_regex.test($("#password").val())))
                        {
                            $dialog.html("Password can NOT contain space or spatial chracters except underscore '_'");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else*/ if($("#firstName").val().length<1)
                            {
                            $dialog.html("Please enter the user's First Name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }

                        else if($("#lastName").val().length<1)
                            {
                            $dialog.html("Please enter the user's Last Name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                             /*else if (undefined === $("input[name='gender']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please select user's gender");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                */
                           
                            else if($("#permanentAddress").val().length<1)
                            {
                            $dialog.html("Please enter the user's address");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                            else if($("#telOffice").val().length<1)
                            {
                            $dialog.html("Please enter the user's office telephone");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            else if($("#telOffice").val().length<1)
                            {
                            $dialog.html("Please enter the user's office telephone");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                            else if((!indian_phno.test($("#telOffice").val())))
                            {
                            $dialog.html("Please refer the example and provide a valid phone number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }       
                            
                            
                            
                            else if($("#telResidence").val().length<1)
                            {
                            $dialog.html("Please enter the user's mobile number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }                           
                            
                            
                            else if((!Digits_only.test($("#telResidence").val())))
                            {
                            $dialog.html("Please enter a valid mobile number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }   
                            
                            else  if($("#email").val().length<1)
                            {
                            $dialog.html("Please enter the user's email ");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            else  if((!email_Reg.test($("#email").val())))
                            {
                            $dialog.html("Please enter a valid email id");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                                                        
                            else  if($("#zipcode").val().length<1)
                            {
                            $dialog.html("Please enter the user's zip code");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            else if((!zip_code.test($("#zipcode").val())))
                            {
                            $dialog.html("Please enter a valid zip code");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }     
                            
                            
                            else  if($("#registrationType").val()=='-1')
                            {
                            $dialog.html("Please select the user's registration type");
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


