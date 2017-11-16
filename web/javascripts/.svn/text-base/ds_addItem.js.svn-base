/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Add Category Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_add_item" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            /*for submitting the form when this button is clicked*/
                                            document.AddItemForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#additem_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#additem_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                $( this ).dialog( "close" );
			}
		});

            /*this var $dialog is for displaying the error dialog box*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 150,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});

           /*following function will be called when OP Register form is submitted*/
           $('form#AddItemForm').submit(function(){
                    /*validating the fields present in the form*/
                    /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    //var qoh_only=/^\d*.\d\d$/;                 //allows digits only
                    var qoh_only=/^\d{1,8}(\.\d{0,2})?$/;
                    var float_only=/^\d{1,10}(\.\d{0,2})?$/;
                   // var digits_only=/^\d+(\.\d+)?$/;
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]{1,10}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var Digits_only=/^[0-9]{1,10}.\d\d$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                         var specialchar= /^[^<>%$]*$/;
                    /*****************REG EX*************************/
                     if($("#removeitem_items_select").val()=="select")
                        {
                            $dialog.html("Sorry! Please Enter sub category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#additem_newitem_itemName").val().length<1)
                        {
                            $dialog.html("Sorry! Item Name is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#additem_newitem_itemName").val().length>74)
                        {
                            $dialog.html("Sorry! Item Name can not exceed 75 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;    
                        }
                         else if(!specialchar.test($("#additem_newitem_itemName").val()))
                         {

                            $dialog.html("Sorry! Special Characters are not allowed in Item Name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }  
                        else if($("#additem_newitem_itemSpec").val().length>150)
                        {
                            
                            $dialog.html("Sorry! Specification can not exceed 150 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;    
                        }
                         else if(!specialchar.test($("#additem_newitem_itemSpec").val()))
                        {

                            $dialog.html("Sorry! Special Characters are not allowed in Item specification");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }  

                  /*      else if($("#additem_newitem_itemQoh").val().length<1)
                        {
                            $dialog.html("Sorry! Please Enter Quantity on hand");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!qoh_only.test($("#additem_newitem_itemQoh").val())))
                        {
                            $dialog.html("Entered value is not correct.enter ex(nnnn.nn)");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  */
                        else if($("#additem_newitem_itemUom").val()=="select")
                        {
                            $dialog.html("Sorry! Please enter Unit of Measurement");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#additem_newitem_itemPrice").val().length<1)
                        {
                            $dialog.html("Sorry! Please Enter Unit Price");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if(!float_only.test($("#additem_newitem_itemPrice").val()))
                        {
                            $dialog.html("Entered value is not correct.enter ex(nnnn.nn)");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  
                        else if($("#additem_newitem_itemRemarks").val().length>150)
                        {                             
                            $dialog.html("Sorry! Remarks can not exceed 150 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;    
                            
                        }
                         else if(!specialchar.test($("#additem_newitem_itemRemarks").val()))
                        {

                            $dialog.html("Sorry! Special Characters are not allowed in Remarks");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }  
                      else
                      {
                          /*making the form details visible in preview*/
                           document.getElementById('dialog-form_add_item').style.visibility='visible';
                          $( "#additem_preview" ).append( "<tr><td align='right'>Product top Category:</td><td>"+$("#addcat_prodcat_select_top option:selected").text()+"</td></tr>"+
                                                     "<tr><td align='right'>Product Sub Category:</td><td>"+$("#removeitem_items_select option:selected").text()+"</td></tr>"+
                                                     "<tr><td align='right'>Item Name:</td><td>"+$("#additem_newitem_itemName").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Specification:</td><td>"+$("#additem_newitem_itemSpec").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Unit Of Measurement:</td><td>"+$("#additem_newitem_itemUom").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Unit Price:</td><td>"+$("#additem_newitem_itemPrice").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Remarks:</td><td>"+$("#additem_newitem_itemRemarks").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Manufacturing Date:</td><td>"+$("#datepicker").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Expiring   Date:</td><td>"+$("#datepicker1").val()+"</td></tr>"
                                                 
                                                   );
                                                     
                                                    
                                                             
                   
                                    $('#dialog-form_add_item').dialog('open');
	                            return false;
                    }
           });
});
                  