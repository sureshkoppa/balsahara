/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_donation_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.DonationForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#donate_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#donate_reg_span tbody" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                
			}
		});
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 130,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
                                        $( "#donate_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                 $('form#CounselorForm').submit(function(){
                     var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;
                 var max;
                    /*for checking either it is counsel or follow up*/
                    var con=null;
                    for (var index=0; index < document.CounselorForm.counsel_followup.length; index++) {
				if (document.CounselorForm.counsel_followup[index].checked) {
					con = document.CounselorForm.counsel_followup[index].value;
					break;
				}
			}
                     if($("#counsel_listChilds").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select ProfileId");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }      
                      
                   else if(con=='C')    
                        {
                       //    alert("counsel"); 
                            if(document.CounselorForm.counsel_date.value.toString().length<1)
                            {
                                 $dialog.html("Sorry! Please Enter Counseling Date");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }  
                        if($("#child_counsel_select").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select Counseling Type");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  
                         if($("#child_counsel_select").val()=="O")
                        {
                           if($("#counselTypeOthers").val()=="")
                           {
                            $dialog.html("Sorry! Please enter Counsel Others");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                           }
                        }  
                   
                        if($("#child_psycho_select").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select Psychotheraphy Type");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  
                         if($("#child_psycho_select").val()=="O")
                        {
                           if($("#psychoTypeOthers").val()=="")
                           {
                            $dialog.html("Sorry! Please enter Psychotheraphy Others");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                           }
                        }  
                        }
                        else if(con=='F')
                            {
                                
                                if(document.CounselorForm.reportingDate.value.toString().length<1)
                                {
                                $dialog.html("Sorry! Please Enter Reporting Date");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }  
                            }
                   
                    
                         if($("#childCounsel").val()=="")
                           {
                            $dialog.html("Sorry! Please enter Counseling for Child");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                           }
           
           
           
           
           
           
           
           
           
                  //}


            
                       // }


	        });
	});

