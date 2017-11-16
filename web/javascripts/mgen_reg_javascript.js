/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Medical General Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_mgen_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                   /*statement below submits the form when submit button is clicked*/
                   progressCircleShow2();
                                            document.mgen_reg.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                   /*here no need to set values to null as when preview is
                    *displayed again the values will be over written*/
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val("").removeClass( "ui-state-error" );
			}
		});
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

            /*the folowing function is called when
             *medical general register form is submitted*/
                $('form#mgen_reg').submit(function(){
                    var res_state=0;
                    var kitc_clean=0;
                    var diet=0;
                    //var menu_pres=0;
                    var prem_clean=0
                    /*these for loops are for checking which radio button is clicked*/
                    for( i = 0; i < document.mgen_reg.stateResidents.length; i++ )
                    {
                      if(document.mgen_reg.stateResidents[i].checked == true )
                      {
                         res_state = document.mgen_reg.stateResidents[i].value;
                      }
                    }
                    for( i = 0; i < document.mgen_reg.cleanlinessCookKitchen.length; i++ )
                    {
                      if(document.mgen_reg.cleanlinessCookKitchen[i].checked == true )
                      {
                         kitc_clean = document.mgen_reg.cleanlinessCookKitchen[i].value;
                      }
                    }
                    for( i = 0; i < document.mgen_reg.diet.length; i++ )
                    {
                      if(document.mgen_reg.diet[i].checked == true )
                      {
                         diet = document.mgen_reg.diet[i].value;
                      }
                    }
                    /*for( i = 0; i < document.mgen_reg.menuPres.length; i++ )
                    {
                      if(document.mgen_reg.menuPres[i].checked == true )
                      {
                         menu_pres = document.mgen_reg.menuPres[i].value;
                      }
                    }*/
                    for( i = 0; i < document.mgen_reg.statusPremises.length; i++ )
                    {
                      if(document.mgen_reg.statusPremises[i].checked == true )
                      {
                         prem_clean = document.mgen_reg.statusPremises[i].value;
                      }
                    }
                    /*validating the fields in the form*/
                    if(document.mgen_reg.date.value.toString().length<1)
                        {
                            $dialog.html("Sorry! Entered Date is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(res_state==0)
                        {
                            $dialog.html("Please select state of residence!");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(kitc_clean==0)
                        {
                            $dialog.html("Please select cleanliness of kitchen!");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(diet==0)
                        {
                            $dialog.html("Please select diet provided!");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        /*else if(menu_pres==0)
                        {
                            $dialog.html("Please select menu prescribed!");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }*/
                        else if(prem_clean==0)
                        {
                            $dialog.html("Please select cleanliness of premises!");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                 /*setting the entered fields into span tags to
                  *display the values in the preview*/
                            $("#mgen_reg_date_span").html(document.mgen_reg.date.value.toString());
                            $("#mgen_reg_res_state_span").html(res_state);
                            $("#mgen_reg_kitc_clean_span").html(kitc_clean);
                            $("#mgen_reg_diet_span").html(diet);
                            /*$("#mgen_reg_menu_pres_span").html(menu_pres);*/
                            $("#mgen_reg_prem_clean_span").html(prem_clean);
                            $( "#mgen_reg_medoff_sugg_span" ).html( document.getElementById('mgen_reg_medoff_sugg').value.toString());
                            /*setting the div tag's visibility to make it visible in preview*/
                            document.getElementById('dialog-form_mgen_reg').style.visibility='visible';
                            /*opening the dialog box with values in div dialog-form*/
                            $('#dialog-form_mgen_reg').dialog('open');
	            return false;
                        }
	        });
	});
