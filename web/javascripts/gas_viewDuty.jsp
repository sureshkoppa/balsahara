<%@taglib prefix="s" uri="/struts-tags"%>

$(function() {
	 var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok};               
               var errButL10n = {};
               errButL10n[okvar.close] = function() { 
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>    
             var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 180,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ALERT'.fontcolor('#FF0000'),
                        buttons: errButL10n
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
                      if($("#viewProfileId").val()=="select")
                        {
                            $dialog.html("<s:text name="js.err.selProfile"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if($("#datepicker").val()=="")
                       {
                            $dialog.html("<s:text name="js.err.selFromDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }  
                        else if(!datepattern.test($("#datepicker").val()))
                          {
                            $dialog.html("<s:text name="js.err.fdateInvalid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                     
                      else if($("#datepicker1").val()=="")
                       {
                            $dialog.html("<s:text name="js.err.selToDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                       }  
                        else if(!datepattern.test($("#datepicker1").val()))
                          {
                            $dialog.html("<s:text name="js.err.tdateInvalid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                   
                }
);


});
