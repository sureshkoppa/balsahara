<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                
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
            $('form#modifyUserForm').submit(function(){
                    /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    /*****************REG EX*************************/
                            if($("#firstName").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.entFirstName"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            else if($("#lastName").val().length<1)
                            {
                            $dialog.html("<s:text name="global.err.entLastName"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            else if($("#permanentAddress").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.entUserAddr"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            
                            else if($("#telOffice").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.entOffTel"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            else if($("#telOffice").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.entOffTel"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            
                            else if((!indian_phno.test($("#telOffice").val())))
                            {
                                $dialog.html("<s:text name="global.err.plsRefOffTel"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }       
                            
                            
                            
                            else if($("#telResidence").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.plsEntMob"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }                           
                            
                            
                            else if((!Digits_only.test($("#telResidence").val())))
                            {
                                $dialog.html("<s:text name="global.err.valMobNum"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }   
                            
                            else  if($("#email").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.plsEntEmail"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            else  if((!email_Reg.test($("#email").val())))
                            {
                                $dialog.html("<s:text name="global.err.plsEntValEmail"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                                                        
                            else  if($("#zipcode").val().length<1)
                            {
                                $dialog.html("<s:text name="global.err.plsEntZip"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }
                            else if((!zip_code.test($("#zipcode").val())))
                            {
                                $dialog.html("<s:text name="global.err.plsEntValZip"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }     
                            
                            
                            else  if($("#registrationType").val()=='-1')
                            {
                                $dialog.html("<s:text name="global.err.entRegType"/>");
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
