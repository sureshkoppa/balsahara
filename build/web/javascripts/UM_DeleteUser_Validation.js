/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * deleteUserform , checkbox
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
                $('form#deleteUserform').submit(function(){
                  
                    if (undefined === $("input[name='checkbox']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please select one or more employees then click submit.");
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



