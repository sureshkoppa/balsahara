/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor. 
 * approveDPOForm
 */
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
                $('form#approveDPOForm').submit(function(){
                  
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                        if($("#userId").val()=='1')
                        {
                          $dialog.html("Please Select a DPO from the list to approve.");
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





