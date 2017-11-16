/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate for View Height Weight Register Form*/
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

        /*the folowing function is called when view height weight register form is submitted*/
                $('form#view_htwtreg').submit(function(){
                    /*validating the fields present in the form*/
                        if(document.view_htwtreg.htwt_fromdate.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered From Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(document.view_htwtreg.htwt_todate.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered To Date is not valid");
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



