<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Category Register Form--%>

$(function() {
		$( "#dialog-form_add_guardprofile" ).dialog( "destroy" );
                <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="button.pre.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="button.pre.clear"/>").text();
                var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				alert("after submit-----");
                                          
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.AddProfileForm.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>      
             
             <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>      
             
            <%--for Preview Code start--%>           
		   $( "dialog-form_add_guardprofile" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_add_guardprofile" ).html("");
				                allFields.val("").removeClass( "ui-state-error" );
			                  }
		    });
            <%--for Preview Code ends--%>    

            <%--for Error Code start--%>    			
            <%--this var $dialog is for displaying the error dialog box--%>
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
            <%--for Error Code ends--%>     
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
                       if($("#addProfile_fname").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entFirstName"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!char_only.test($("#addProfile_fname").val()))
                        {
                            $dialog.html("<s:text name="js.err.firstNameCharOnly"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if($("#addProfile_fname").val().length>24)
                        {
                            $dialog.html("<s:text name="js.err.firstNameMax25"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else if($("#addProfile_lname").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entLastName"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!char_only.test($("#addProfile_lname").val()))
                        {
                            $dialog.html("<s:text name="js.err.lastNameCharOnly"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if($("#addProfile_lname").val().length>24)
                        {
                            $dialog.html("<s:text name="js.err.lastNameMax25"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#addProfile_age").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entAge"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }
                       else if(!Digits_only.test($("#addProfile_age").val()))
                       {
                            $dialog.html("<s:text name="js.err.ageMax2"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       } 
                       else if($("#addProfile_desig").val().length<1)
                       {
                            $dialog.html("<s:text name="js.err.entDesig"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }   
                       
                       else if($("#addProfile_desig").val().length>50)
                        {
                            $dialog.html("<s:text name="js.err.entDesigNotValid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if(!specialchar.test($("#addProfile_desig").val()))
                        {

                            $dialog.html("<s:text name="js.err.desigNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                         }
                        else if($("#addProfile_contactAddr").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entContAddr"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else if($("#addProfile_contactAddr").val().length>75)
                        {
                            $dialog.html("<s:text name="js.err.entAddrNotValid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if(!specialchar.test($("#addProfile_contactAddr").val()))
                        {

                            $dialog.html("<s:text name="js.err.contAddrNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }
                        else if($("#addProfile_contactPhno").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entPhNumber"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!indian_phno.test($("#addProfile_contactPhno").val()))
                        {
                            $dialog.html("<s:text name="js.err.phoneNumMax12"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       else  if(!email_Reg.test($("#addProfile_emailId").val()))
                        {
                            $dialog.html("<s:text name="js.err.entEmailNotValid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         //  }
                       
                      else if($("#datepicker").val().length<1)
                       {
                            $dialog.html("<s:text name="js.err.entJoinDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                      } 
                      else if(!datepattern.test($("#datepicker").val()))
                        {
                            $dialog.html("<s:text name="js.err.joinDateNotValid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                    
                      else
                            {
                               
                               document.getElementById('dialog-form_add_guardprofile').style.visibility='visible';
                                $( "#dialog-form_add_guardprofile" ).append( 
                                                       "<tr><td align='right'>First Name:</td><td>"+$("#addProfile_fname").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Last Name:</td><td>"+$("#addProfile_lname").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Age:</td><td>"+$("#addProfile_age").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Designation:</td><td>"+$("#addProfile_desig").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Contact Address:</td><td>"+$("#addProfile_contactAddr").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Contact Number:</td><td>"+$("#addProfile_contactPhno").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Email Id:</td><td>"+$("#addProfile_emailId").val()+"</td></tr>"+
                                                       "<tr><td align='right'>Date of Joining:</td><td>"+$("#datepicker").val()+"</td></tr>"
                                                       );
                                       $('#dialog-form_add_guardprofile').dialog('open');
	                            return false;             
                            }

                           //  document.getElementById('dialog-form_add_guardprofile').style.visibility='visible';
                            
                 });
});


