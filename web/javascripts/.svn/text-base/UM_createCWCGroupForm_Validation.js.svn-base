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
                $('form#createCWCGroupForm').submit(function(){
                    //alert('hi'+$("#gender").val);
                    
                    /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{10,}$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    /*****************REG EX*************************/
                    
                    var noOfRows=document.getElementById('CWC_Group').rows.length;
                    //alert('no of rows ;-) --- > '+noOfRows);
                    
                    
                    
                     //for( i=0;i<noOfRows;i++)   
                        //alert(i+"---"+document.createCWCGroupForm.userIds[i].value);
                    
                    //return false;
                    
                    
                    
                 
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                      
                     if($("#districtId").val()=='-1')
                            {
                            $dialog.html("Please select a district for which you want to create the CWC group.If the district is not present may be already a active CWC exists.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                        
                       
                        else if($("#datepicker").val().length<1)
                        {
                          $dialog.html("Please Choose start date.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#datepicker1").val().length<1)
                        {
                          $dialog.html("Please choose end date.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                        else if(noOfRows<=2)
                        {
                          $dialog.html("At the time of CWC group creation minimum two members are required.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        } 
                        
                        else if(noOfRows>2)
                          {
                              for( i=0;i<noOfRows-1;i++)   {
                        alert(i+"---"+document.createCWCGroupForm.userIds[i].value);
                           
                           if(document.createCWCGroupForm.userIds[i].value.toString()=='1')
                               {
                                   $dialog.html("please select a CWC member");
                                   $dialog.parent().addClass( "ui-state-error" );
                                   $dialog.dialog('open');
                                   return false; 
                                   
                               }
                              
                                
                            
                                        }
                              
                          
                         
                          }
                                            
                            
                       
                        else
                        {
                            progressCircleShow2();
	                    return true;
                        }
                        
                        
                        
                        
                        
                        
	        });
	});


