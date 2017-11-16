/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Add Category Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_add_cat" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            /*for submitting the form when this button is clicked*/
                                            progressCircleShow2();
                                            document.AddCategoryForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#addcat_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#addcat_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

            /*this var $dialog is for displaying the error dialog box*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 130,
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
           $('form#AddCategoryForm').submit(function(){
                    /*validating the fields present in the form*/
                      var specialchar= /^[^<>%$]*$/;
                    
                     if($("#removeitem_items_select").val()=="select")
                        {
                            $dialog.html("Sorry! Entered sub category is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#addcat_newcat_name").val()<1)
                        {
                            $dialog.html("Sorry! Please Enter category name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if($("#addcat_newcat_name").val().length>49)
                        {
                            $dialog.html("Sorry! Max characters for subcat name is 50");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if(!specialchar.test($("#addcat_newcat_name").val()))
                        {
                            $dialog.html("Sorry! Special characters are not allowed in subcat name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       else if($("#addcat_newcat_itemType").val().length!=0&&$("#addcat_newcat_itemType").val().length>49)
                                {
                                   $dialog.html("Sorry! Category Type is too long");
                                   $dialog.parent().addClass( "ui-state-error" );
                                   $dialog.dialog('open');
                                   return false;  
                                   //alert("in item type");
                                }
                       else if(!specialchar.test($("#addcat_newcat_itemType").val()))
                        {
                            $dialog.html("Sorry! Special characters are not allowed in catgory type");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                            {
                          /*making the form details visible in preview*/
                          //alert("in preview");
                            document.getElementById('dialog-form_add_cat').style.visibility='visible';
                           $( "#addcat_preview" ).append("<tr><td align='right'>Product Category:</td><td>"+$("#addcat_prodcat_select option:selected").text()+"</td></tr>"+
                                                     "<tr><td align='right'>Product Sub Category:</td><td>"+$("#removeitem_items_select option:selected").text()+"</td></tr>"+
                                                     "<tr><td align='right'>Sub Category Name:</td><td>"+$("#addcat_newcat_name").val()+"</td></tr>"+
                                                    "<tr><td align='right'>Remarks:</td><td>"+$("#addcat_newcat_itemType").val()+"</td></tr>"
                                                               );
                   
                                    $('#dialog-form_add_cat').dialog('open');
	                            return false;
                            }
                       
           });
});
                  