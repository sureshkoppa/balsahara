/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_wh_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.wh_reg.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                        $( "#wh_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#wh_reg_span tbody" ).html("");
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
                                        $( "#wh_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                $('form#wh_reg').submit(function(){
                    var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    if(document.wh_reg.wh_reg_date.value.toString().length<1)
                    {
                        $dialog.html("Sorry! Please Enter Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.getElementById('WHT').rows.length>1)
                    {
                         $("#wh_reg_date_span").html(document.wh_reg.wh_reg_date.value.toString());
                            for(i=0;i<document.getElementById('WHT').rows.length-1;i++)
                                {
                                    if(document.getElementById('WHT').rows.length==2)
                                    {
                                        if(document.wh_reg.wh_reg_profile_id.value.toString()==1)
                                        {
                                            $dialog.html("Sorry! Please Enter Profile ID");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.htChild.value.toString()))
                                        {
                                            $dialog.html("Sorry! Please Enter Height");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.wtChild.value.toString()))
                                        {
                                            $dialog.html("Sorry! Please Enter Weight");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        /*else if(document.wh_reg.remarks.value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Remarks");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }*/
                                        else
                                        {
                                        $( "#wh_reg_span tbody" ).append( "<tr>" +
                                                                    "<td>" + document.wh_reg.wh_reg_profile_id.value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.htChild.value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.wtChild.value.toString() + "</td>" +
                                                                    
                                                                    "<td>" +document.wh_reg.childComplaints.value.toString()+ "</td>" +
                                                                    "<td>" + document.wh_reg.remarks.value.toString() + "</td>" +
                                                            "</tr>" );

                                        }
                                    }
                                    else
                                    {
                                        if(document.wh_reg.wh_reg_profile_id[i].value.toString()==1)
                                        {
                                            $dialog.html("Sorry! Please Enter Profile ID");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.htChild[i].value.toString()))
                                        {
                                            $dialog.html("Sorry! Please Enter Height");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.wtChild[i].value.toString()))
                                        {
                                            $dialog.html("Sorry! Please Enter Weight");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        /*else if(document.wh_reg.remarks[i].value.toString()<1)
                                        {
                                            $dialog.html("Sorry! Please Enter Remarks");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }*/
                                        else
                                        {
                                        $( "#wh_reg_span tbody" ).append( "<tr>" +
                                                                    "<td>" + document.wh_reg.wh_reg_profile_id[i].value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.htChild[i].value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.wtChild[i].value.toString() + "</td>" +
                                                                   
                                                                     "<td>" + document.wh_reg.childComplaints[i].value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.remarks[i].value.toString() + "</td>" +
                                                            "</tr>" );
                                        }
                                    }
                                }
                                document.getElementById('dialog-form_wh_reg').style.visibility='visible';
                                $('#dialog-form_wh_reg').dialog('open');
                                return false;
                    }
	        });
	});

