/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_add_profile" ).dialog({
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
                                            document.AddPhotoForm.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        //$( "#add_profile_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                //$( "#add_profile_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
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
            $('form#AddPhotoForm').submit(function(){
                var sel=$("#guardPhotoFile").val();
                var type=sel.substr(sel.length-4, 4).toLowerCase();
                //alert("type------------>"+type);
                
                 if($("#addGuardPhotoId").val()=="select")
                        {
                            $dialog.html("Sorry!Please Select Guard for adding Photo");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                else if($("#guardPhotoFile").val()=="")
                        {
                            $dialog.html("Sorry!Please Select Photo for Uploading");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }       
                
                else if(!(type==".jpg"||type==".png"||type==".gif"||type=="jpeg"))
                        {
                            $dialog.html("Entered File type is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                
                
                
                
                
                
            }
           

     );
     });