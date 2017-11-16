/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate and show preview for Add Category Register Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_add_topcat" ).dialog({
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
                                            document.AddTopCatForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#addtopcat_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#addtopcat_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

            /*this var $dialog is for displaying the error dialog box*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
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
           $('form#AddTopCatForm').submit(function(){
                    /*validating the fields present in the form*/
                         var specialchar= /^[^<>%$]*$/;
                     if($("#newtopcat_name").val().length<1)
                        {
                            $dialog.html("Sorry! Enter Category Name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if($("#newtopcat_name").val().length>49)
                        {
                            $dialog.html("Sorry! Category Name can contain max 50 chars");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if(!specialchar.test($("#newtopcat_name").val()))
                        {
                            $dialog.html("Sorry! Special characters are not allowed in catgory name");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if($("#newtopcat_type").val().length>49)
                        {
                           
                                   $dialog.html("Sorry! Category type can contain max 50 chars.");
                                   $dialog.parent().addClass( "ui-state-error" );
                                   $dialog.dialog('open');
                                   return false;                                    
                             
                                
                        }
                        else if(!specialchar.test($("#newtopcat_type").val()))
                        {
                            $dialog.html("Sorry! Special characters are not allowed in catgory type");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       
                          /*making the form details visible in preview*/
                           document.getElementById('dialog-form_add_topcat').style.visibility='visible';
                          $( "#addtopcat_preview" ).append( "<tr><td align='right'>Top Category Name:</td><td>"+$("#newtopcat_name").val()+"</td></tr>"+
                                                     "<tr><td align='right'>Category Type:</td><td>"+$("#newtopcat_type").val()+"</td></tr>"
                                                               );
                   
                                    $('#dialog-form_add_topcat').dialog('open');
	                            return false;
                       
           });
});
                  