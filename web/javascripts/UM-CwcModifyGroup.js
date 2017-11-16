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
                $('form#cwcModifyForm').submit(function(){
                  
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                        if($("#districtId").val().toString()=='-1')
                            {
                            $dialog.html("Please Select the CWC district.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                             else if (undefined === $("input[name='act']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please select the operation you want to perform.");
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



