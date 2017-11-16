
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*this file is used to validate for Add User in User management module Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

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

        /*the folowing function is called when view Medical General register form is submitted*/
                $('form#viewExamRegister').submit(function(){
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
                   
                                
                                if ($("#searchBy").val()=='-1') {
                                //alert('hi');
                                $dialog.html("Please enter the search criteria");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                              
                             
                                switch($("#searchBy").val())
                                {
                                    case 'Type':
                                    if($("#examType").val()=='-1')
                                        {
                                        $dialog.html("Please enter the search criteria");
                                        $dialog.parent().addClass( "ui-state-error" );
                                         $dialog.dialog('open');
                                            return false; 
                                        }
                                        break;
                                        
                                        case 'Class':
                                        if($("#class1").val()=='-1')
                                        {
                                        $dialog.html("Please enter the search criteria");
                                        $dialog.parent().addClass( "ui-state-error" );
                                         $dialog.dialog('open');
                                            return false; 
                                        }
                                        break;                                             
                                             
                                            case 'Subject':
                                        if($("#subject").val()=='-1')
                                        {
                                        $dialog.html("Please enter the search criteria");
                                        $dialog.parent().addClass( "ui-state-error" );
                                         $dialog.dialog('open');
                                            return false; 
                                        }
                                        break;      
                                
                                    
                                }
                                
                                if($("#datepicker1").val().length<1)
                                    {
                                        $dialog.html("Please enter from which date you wish the search.");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false; 
                                    }
                                    
                                    else if($("#datepicker2").val().length<1)
                                    {
                                        $dialog.html("Please enter upto which date you want to search.");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false; 
                                    }
                                
                                
                                
                                
              
                       progressCircleShow2();
	                    return true;
                       
	        });
	});


