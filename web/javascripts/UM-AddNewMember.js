/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

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
                $('form#cwcAddMemberForm').submit(function(){
                  
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                        if($("#datepicker").val().length<1)
                            {
                            $dialog.html("Please enter the start date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                             else if ($("#datepicker1").val().length<1) {
                            $dialog.html("Please enter the end date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
	        });
	});





