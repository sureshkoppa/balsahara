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
                                            document.tabrec_reg.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                        $( "#tabrec_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#tabrec_reg_span tbody" ).html("");
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
                                        $( "#tabrec_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                $('form#tabrec_reg').submit(function(){
                    if(document.tabrec_reg.tabrec_reg_pur_date.value.toString().length<1)
                    {
                        $dialog.html("Sorry! Please Enter Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.getElementById('TRR').rows.length>1)
                    {
                         $("#tabrec_reg_pur_date_span").html(document.tabrec_reg.tabrec_reg_pur_date.value.toString());
                            for(i=0;i<document.getElementById('TRR').rows.length-1;i++)
                                {
                                    if(document.getElementById('TRR').rows.length==2)
                                    {
                                        if(document.tabrec_reg.tabrec_reg_paticu.value.toString().length<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Tablet Particulars");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(document.tabrec_reg.tabrec_reg_rec_from.value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Received From");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(document.tabrec_reg.tabrec_reg_qty.value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Quantity Received");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(document.tabrec_reg.tabrec_reg_remarks.value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Remarks");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else
                                        {
                                        $( "#tabrec_reg_span tbody" ).append( "<tr>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_paticu.value.toString() + "</td>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_rec_from.value.toString() + "</td>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_qty.value.toString() + "</td>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_remarks.value.toString() + "</td>" +
                                                            "</tr>" );

                                        }
                                    }
                                    else
                                    {
                                        if(document.tabrec_reg.tabrec_reg_paticu[i].value.toString().length<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Tablet Particulars");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(document.tabrec_reg.tabrec_reg_rec_from[i].value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Received From");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(document.tabrec_reg.tabrec_reg_qty[i].value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Quantity Received");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(document.tabrec_reg.tabrec_reg_remarks[i].value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Remarks");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else
                                        {
                                        $( "#tabrec_reg_span tbody" ).append( "<tr>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_paticu[i].value.toString() + "</td>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_rec_from[i].value.toString() + "</td>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_qty[i].value.toString() + "</td>" +
                                                                    "<td>" + document.tabrec_reg.tabrec_reg_remarks[i].value.toString() + "</td>" +
                                                            "</tr>" );
                                        }
                                    }
                                }
                                $('#dialog-form').dialog('open');
                                return false;
                    }
	        });
	});


