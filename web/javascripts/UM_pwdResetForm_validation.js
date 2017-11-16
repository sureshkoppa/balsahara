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
                $('form#pwdResetForm').submit(function(){
                    //alert('hi'+$("#gender").val);
                    
                    /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{5})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    /*****************REG EX*************************/
                   
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                        if($("#oldPassword").val().length<1)
                        {
                          $dialog.html("Please enter your Old Password");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#oldPassword").val().length<5 || $("#oldPassword").val().length>20)
                        {
                          $dialog.html("Password must contain minimum 5 and maximum 20 characters");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!user_pass_regex.test($("#oldPassword").val())))
                        {
                            $dialog.html("Password can NOT contain space or spatial chracters except underscore '_'");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                         //for new password
                         
                         else if($("#newPassword").val().length<1)
                        {
                          $dialog.html("Please enter your NEW Password");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#newPassword").val().length<5 || $("#newPassword").val().length>20)
                        {
                          $dialog.html("NEW Password must contain minimum 5 and maximum 20 characters");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!user_pass_regex.test($("#newPassword").val())))
                        {
                            $dialog.html("NEW Password can NOT contain space or spatial chracters except underscore '_'");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                         else if($("#retypedPassword").val().length<1)
                        {
                          $dialog.html("Please retype your NEW Password");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        //retype new password
                        
                         else if($("#newPassword").val() != $("#retypedPassword").val())
                        {
                            $dialog.html("NEW Password is Not same as the RETYPED password");
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


