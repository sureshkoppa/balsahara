$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

           /*this variable sets display of dialog box for error message*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 150,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});

        /*the folowing function is called when view Medical General register form is submitted*/
                $('form#addSchoolForm').submit(function(){
           //alert('hi'+$("#gender").val);
                    
                    /*****************REG EX************************
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                   *************REG EX*************************/
                   
                                
                                if ($("#schoolName").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please enter the name of the school.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                
                                else if ($("#districtId").val()=='-1') {
                                //alert('hi');
                                $dialog.html("Please choose the district where the school is located.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("#schoolAddress").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please write the address of the school.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("#schoolType").val()=='-1') {
                                //alert('hi');
                                $dialog.html("Please choose a type of the school.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
              
                        else
                        {
                            //$('#progress').addClass('progressCircle');
                            progressCircleShow2();
	                    //return false;
	                    return true;
                        }
	        });
	});
