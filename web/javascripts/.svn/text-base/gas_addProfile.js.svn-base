/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Add Profile Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_add_guardprofile" ).dialog({
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
                                            document.AddGuardProfileForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                  
                                        $( "#add_profile_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#add_profile_preview" ).html("");
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
            $('form#AddGuardProfileForm').submit(function(){
                    /*validating the fields present in the form*/
                     /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{1,2}$/;                 //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]{1,12}$/;
                    var zip_code=/^([0-9]{6})$/;
                    //var email_Reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                   // var email_Reg = /^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/;
                   // var email_Reg = /^([a-zA-Z0-9_\-\.]+)@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/;
                   
                   //(from anupam)
                   var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    var specialchar= /^[^<>%$]*$/;
                    /*****************REG EX*************************/
                       if($("#addProfile_fname").val().length<1)
                        {
                            $dialog.html("please Enter first name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!char_only.test($("#addProfile_fname").val()))
                        {
                            $dialog.html("First Name must contain only characters");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if($("#addProfile_fname").val().length>24)
                        {
                            $dialog.html("First name can not take more than 25 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else if($("#addProfile_lname").val().length<1)
                        {
                            $dialog.html("Please Enter last name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!char_only.test($("#addProfile_lname").val()))
                        {
                            $dialog.html("Last name should contain only characters");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if($("#addProfile_lname").val().length>24)
                        {
                            $dialog.html("Last name can not take more than 25 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#addProfile_age").val().length<1)
                        {
                            $dialog.html("Please enter age");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }
                       else if(!Digits_only.test($("#addProfile_age").val()))
                       {
                            $dialog.html("Sorry! Age should contain only digits with max length 2");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       } 
                       else if($("#addProfile_desig").val().length<1)
                       {
                            $dialog.html("Sorry! Please Enter Designation");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }   
                       
                       else if($("#addProfile_desig").val().length>50)
                        {
                            $dialog.html("Sorry! Entered designation is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if(!specialchar.test($("#addProfile_desig").val()))
                        {

                            $dialog.html("Sorry! Special Characters are not allowed in Designation");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                         }
                        else if($("#addProfile_contactAddr").val().length<1)
                        {
                            $dialog.html("Sorry! Please Enter Contact Address");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else if($("#addProfile_contactAddr").val().length>75)
                        {
                            $dialog.html("Sorry! Entered Address is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if(!specialchar.test($("#addProfile_contactAddr").val()))
                        {

                            $dialog.html("Sorry! Special Characters are not allowed in Contact Address");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }
                        else if($("#addProfile_contactPhno").val().length<1)
                        {
                            $dialog.html("Sorry! Please Enter Phone number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!indian_phno.test($("#addProfile_contactPhno").val()))
                        {
                            $dialog.html("Sorry! Enter only  digits with max length 12 for ph number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       // else if($("#addProfile_emailId").val().length>1&&(!email_Reg.test($("addProfile_emailId"))))
                      // else if($("#addProfile_emailId").val().length>1)
                        //   {
                       else  if(!email_Reg.test($("#addProfile_emailId").val()))
                        {
                            $dialog.html("Sorry! Entered Email is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         //  }
                       
                      else if($("#datepicker").val().length<1)
                       {
                            $dialog.html("Sorry! Please enter Joining date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                      } 
                      else if(!datepattern.test($("#datepicker").val()))
                        {
                            $dialog.html("Sorry! Entered Joining date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                    
                      else
                            {
                                /*making the form details visible in preview*/
                           document.getElementById('dialog-form_add_guardprofile').style.visibility='visible';
                            /*adding the fields common in the form to the preview*/
                            $( "#add_profile_preview" ).append( "<tr><td align='right'>First Name:</td><td>"+$("#addProfile_fname").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Last Name:</td><td>"+$("#addProfile_lname").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Age:</td><td>"+$("#addProfile_age").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Designation:</td><td>"+$("#addProfile_desig").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Contact Address:</td><td>"+$("#addProfile_contactAddr").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Contact Number:</td><td>"+$("#addProfile_contactPhno").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Email Id:</td><td>"+$("#addProfile_emailId").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Date of Joining:</td><td>"+$("#datepicker").val()+"</td></tr>");
                                                   
                            }
                      $('#dialog-form_add_guardprofile').dialog('open');
	                            return false;
                                    
                                    
                                    
                                  
            });
});
