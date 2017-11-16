<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Category Register Form--%>

$(function() {
		$( "#dialog-form_mod_gas" ).dialog( "destroy" );
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
                                          document.ModifyProfileForm.submit();
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
		   $( "dialog-form_mod_gas" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_mod_gas" ).html("");
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
                
                
                
                
                
                 $('form#ModifyProfileForm').submit(function(){
                 
                    var char_only=/^[a-zA-Z ]+$/;
                    var Digits_only=/^[0-9]{1,2}$/;                 //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var phno = /^[0-9]{1,12}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([a-zA-Z0-9_\-\.]+)@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/;
                    var specialchar= /^[^<>%$]*$/;
                    
                        if($("#modifyProfile_name").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entName"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if($("#modifyProfile_name").val().length>49)
                        {
                            $dialog.html("<s:text name="js.err.entNameMax50"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        } 
                        else if($("#modifyProfile_age").val().length<1)
                           {
                            $dialog.html("<s:text name="js.err.entAge"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                               
                           }
                        else if($("#modifyProfile_age").val().length>2)
                        {
                            $dialog.html("<s:text name="js.err.ageMax2"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!Digits_only.test($("#modifyProfile_age").val()))
                        {
                            $dialog.html("<s:text name="js.err.ageOnlyDigits"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }   
                        else if($("#modifyProfile_address").val().length<1)
                        {  
                            $dialog.html("<s:text name="js.err.entContAddr"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if($("#modifyProfile_address").val().length>75)
                        {
                            $dialog.html("<s:text name="js.err.contAddrMax75"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!specialchar.test(   $("#modifyProfile_address").val()  ))
                        {
                            $dialog.html("<s:text name="js.err.contAddrNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }
                        else if($("#modifyProfile_Phno").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entPhNumber"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(!phno.test($("#modifyProfile_Phno").val()))
                        {
                            $dialog.html("<s:text name="js.err.phoneNumMax12"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                      
           });
           
         
           
           
 });