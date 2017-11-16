<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
          $( "#dialog:ui-dialog" ).dialog( "destroy" );
          <%--for preview BUTTONS start--%>            
          
          <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
          <%--for Error Buttons ends--%>
          <%--for Error Code start--%>    			
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
            
            $('form#pwdResetForm').submit(function(){
            
            /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{5})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
           /*****************REG EX*************************/
           
                       if($("#oldPassword").val().length<1)
                        {
                            $dialog.html("<s:text name="global.err.plsEntOldPass"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#oldPassword").val().length<5 || $("#oldPassword").val().length>20)
                        {
                            $dialog.html("<s:text name="global.err.passMin5Max20"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!user_pass_regex.test($("#oldPassword").val())))
                        {
                            $dialog.html("<s:text name="global.err.passNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                         //for new password
                         
                         else if($("#newPassword").val().length<1)
                        {
                            $dialog.html("<s:text name="global.err.plsEntNewPass"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#newPassword").val().length<5 || $("#newPassword").val().length>20)
                        {
                            $dialog.html("<s:text name="global.err.nPassMin5Max20"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!user_pass_regex.test($("#newPassword").val())))
                        {
                            $dialog.html("<s:text name="global.err.nPassNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                         else if($("#retypedPassword").val().length<1)
                        {
                            $dialog.html("<s:text name="global.err.plsRetypeNPass"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        //retype new password
                        
                         else if($("#newPassword").val() != $("#retypedPassword").val())
                        {
                            $dialog.html("<s:text name="global.err.passRePassNotSame"/>");
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
               