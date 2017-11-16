/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Modify Profile Form*/
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
                                            document.ModifyProfileForm1.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#modgas_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#modgas_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

            /*this var $dialog is for displaying the error dialog box*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 130,
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


           
                $('form#ModifyProfileForm1').submit(function(){
                  /*validating the fields present in the form*/
                     /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z ]+$/;
                    var Digits_only=/^[0-9]{1,2}$/;                 //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var phno = /^[0-9]{1,12}$/;
                    var zip_code=/^([0-9]{6})$/;
                    //var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                   // var email_Reg = /^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/;
                      var email_Reg = /^([a-zA-Z0-9_\-\.]+)@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    var specialchar= /^[^<>%$]*$/;
                    /*****************REG EX*************************/
                    
                    if($("#modifyProfileId").val()=="select")
                        {
                             $dialog.html("Sorry! Please select Profile Id");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                    else if($("#modifyProfile_name").val().length<1)
                        {
                            $dialog.html("Sorry! Please Enter Name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#modifyProfile_name").val().length>49)
                        {
                            $dialog.html("Sorry! Name can take only 50 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!char_only.test($("#modifyProfile_name").val()))
                        {
                            $dialog.html("Name should contain only characters and spaces");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       else if($("#modifyProfile_age").val().length<1)
                           {
                            $dialog.html("Sorry! Please Enter age");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                               
                           }
                        else if($("#modifyProfile_age").val().length>2)
                        {
                            $dialog.html("Sorry! Entered age is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!Digits_only.test($("#modifyProfile_age").val()))
                        {
                            $dialog.html("Sorry! Age should contain only digits");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }   
                        else if($("#modifyProfile_address").val().length<1)
                        {  
                            $dialog.html("Sorry! Please Enter contact address");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if($("#modifyProfile_address").val().length>75)
                        {
                            $dialog.html("Sorry! Address can not contain more than 75 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!specialchar.test($("#modifyProfile_address").val()))
                        {

                            $dialog.html("Sorry! Special Characters are not allowed in Contact Address");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }
                        
                        else if($("#modifyProfile_Phno").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Phno is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!phno.test($("#modifyProfile_Phno").val()))
                        {
                            $dialog.html("Sorry! Enter only digits for phone number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
//                       
//                       else
//                       {
//                          // alert("preview--------");
//                              /*making the form details visible in preview*/
//                           document.getElementById('dialog-form_mod_gas').style.visibility='visible';
//                            /*adding the fields common in the form to the preview*/
//                            $( "#modgas_preview" ).append( "<tr><td align='right'>Name:</td><td>"+$("#modifyProfile_name").val()+"</td></tr>"+
//                                                       
//                                                      "<tr><td align='right'>Age:</td><td>"+$("#modifyProfile_age").val()+"</td></tr>"+
//                                                       
//                                                       "<tr><td align='right'>Address:</td><td>"+$("#modifyProfile_address").val()+"</td></tr>"+
//                                                       "<tr><td align='right'>Phone no:</td><td>"+$("#modifyProfile_Phno").val()+"</td></tr>"
//                                                       
//                                             
//                                           );
//                         
//                           
//                           
//                                    $('#dialog-form_mod_gas').dialog('open');
//	                            return false;
//                           }
//                           
                           
	        });
	});


