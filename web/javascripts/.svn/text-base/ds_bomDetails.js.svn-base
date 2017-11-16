/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_enter_bom" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.BOMForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#bom_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#bom_reg_span tbody" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                
			}
		});
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 140,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
                                        $( "#bom_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                $('form#BOMForm').submit(function(){
                     var char_only=/^[a-zA-Z]+$/;
                     var Digits_only=/^[0-9]{1,3}$/;
                     var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                     var qoh_only=/^\d{1,8}(\.\d{0,2})?$/;
                
                            alert("------itr----"+document.getElementById("itr").value);
                        
                       var max=document.getElementById("itr").value;
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                      for (var i = 0; i < max; i++) {
                          var itemNO=document.BOMForm.bomItemNo[i].value;
                          
                          //alert("------->itemno--->"+itemNO+"  name "+document.getElementById("bomItemName_"+itemNO).value);
                          //alert("---->"+document.getElementById('bom_quantity_'+itemNO).value);
                          //alert("---------itemNO-->"+itemNO+"-----val------"+document.getElementbom_quantity[itemNO].value);
                                    if (!qoh_only.test(document.getElementById('bom_quantity_'+itemNO).value )) {
                                              $dialog.html("Entered quantity is not valid or too large for <u>"+document.getElementById("bomItemName_"+itemNO).value+"</u>.<br/>Enter in format(eg:nnnn.nn)");
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                              }
                             }
                          }
                      else
                          {
                                    if (document.BOMForm.bom_quantity.checked == true) 
                                        total=1;
                              
                          }   
   
   
   
   
   
   
   
   
                });



	        });
               


