/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.ReceiptForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#donation_form_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#donation_form_span tbody" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                
			}
		});
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
                                        $( "#donation_form_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                 $('form#ReceiptForm').submit(function(){
                    if(document.ReceiptForm.receipt_date.value.toString().length<1)
                    {
                        $dialog.html("Sorry! Please Enter Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.ReceiptForm.receipt_from.value.toString().length<1)
                    {
                        
                        $dialog.html("Sorry! ----Please Enter Receipt From");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                 }
)});


