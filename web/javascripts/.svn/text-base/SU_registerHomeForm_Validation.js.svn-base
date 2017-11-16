
    
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
                $('form#registerHomeForm').submit(function(){
                    //alert('hi'+$("#gender").val);
                    
                    /*****************REG EX*************************/
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]+$/; //allows digits with 10 or more occurences
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]\d{2,4}-\d{6,8}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    /*****************REG EX*************************/
                   
                    /*validating the fields present in the form $("#refe_reg_profile_id")*/
                       if($("#homeId").val().length<1)
                        {
                            $dialog.html("Please enter a home id");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#yearOfEstb").val()=='-1')
                        {
                            $dialog.html("Please select the year of establisment.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if($("#homeAddress").val().length<1)
                        {
                            $dialog.html("Please enter the home address.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#mandal").val().length<1)
                        {
                            $dialog.html("Please enter mandal.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#village").val().length<1)
                        {
                            $dialog.html("Please enter village.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#landlineNo").val().length<1)
                        {
                            $dialog.html("Please enter the phone no.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                         else if((!indian_phno.test($("#landlineNo").val())))
                            {
                            $dialog.html("Please refer the example and provide a valid phone number");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            } 
                            
                            else if($("#headOfInst").val().length<1)
                            {
                            $dialog.html("Please enter the head of the institution's name.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                            else if($("#homeManagedBy").val()=='-1')
                            {
                            $dialog.html("Please select an option home managed by whom.");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                            else if (undefined === $("input[name='compWall']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose compound wall is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                           else if (undefined === $("input[name='visitorsRoom']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose visitor's Room is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if (undefined === $("input[name='securityStaff']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose security staff is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                 else if (undefined === $("input[name='medicalFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose medical facility is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if($("#totalPlinthArea").val().length<1)
                                 {
                                  $dialog.html("Please enter the total plainth area.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#totalPlinthArea").val())))
                                 {
                                  $dialog.html("Please enter digits only in area field.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                  else if($("#plinthPerInmate").val().length<1)
                                 {
                                  $dialog.html("Please enter the total plainth area per inmate.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#plinthPerInmate").val())))
                                 {
                                  $dialog.html("Please enter digits only in area field.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 else if (undefined === $("input[name='playGround']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose play ground is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                               else if ($("#indoorGamesEqup").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please write  about indoor games available.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if ($("#outdoorGamesEqup").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please write  about outdoor games available.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                else if (undefined === $("input[name='presDiet']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose prescribed diet is followed or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if (undefined === $("input[name='presDiet']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose prescribed diet is followed or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                  else if (undefined === $("input[name='drinikingWater']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose drinking water is sufficient or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                 else if($("#noOfBathrooms").val().length<1)
                                 {
                                  $dialog.html("Please enter the number of bathrooms available.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#noOfBathrooms").val())))
                                 {
                                  $dialog.html("Please enter digits only as no of bathrooms.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                 else if($("#noOfToilets").val().length<1)
                                 {
                                  $dialog.html("Please enter the number of toilets available.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#noOfToilets").val())))
                                 {
                                  $dialog.html("Please enter digits only as no of toilets.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if($("#cleanlinessStatus").val().length<1)
                                 {
                                  $dialog.html("Please write something about the cleanliness status.");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                 else if (undefined === $("input[name='kitchenAvailable']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose kitchen is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("kitechenHygiene").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please write smoething about kitchen hygine.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                 else if (undefined === $("input[name='dinningFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose dinning facility is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if (undefined === $("input[name='counselFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose counseling facility is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("premisesMaint").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please write smoething about premises Maintainance.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                else if ($("recreaction").val().length<1) {
                                //alert('hi');
                                $dialog.html("Please write smoething about recreation in children home.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if (undefined === $("input[name='vocationalTraining']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose vocational training is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                               else if (undefined === $("input[name='internetFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("Please choose internet facility is available or not.");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
        
                           
                        else
                        {
                            progressCircleShow2();
	                    return true;
                        }
	        });
	});





