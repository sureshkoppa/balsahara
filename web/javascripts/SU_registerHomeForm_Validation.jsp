<%-- 
    Document   : SU_registerHomeForm_Validation
    Created on : Feb 13, 2013, 5:47:26 PM
    Author     : sweta
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
/*this file is used to validate for Add User in User management module Form*/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

           <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>

		
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 180,
			width: 250,
                        modal: true,
			title: 'ALERT'.fontcolor('#FF0000'),
                        buttons: errButL10n
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
                   
                       if($("#homeId").val().length<1)
                        {
                            $dialog.html("<s:text name="package.error.suEntHomeId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#yearOfEstb").val()=='-1')
                        {
                            $dialog.html("<s:text name="package.error.suSelYOE"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if($("#homeAddress").val().length<1)
                        {
                            $dialog.html("<s:text name="package.error.suEntHomAdd"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#mandal").val().length<1)
                        {
                            $dialog.html("<s:text name="package.error.suEntMand"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#village").val().length<1)
                        {
                            $dialog.html("<s:text name="package.error.suEntVill"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#landlineNo").val().length<1)
                        {
                            $dialog.html("<s:text name="package.error.suEntPhoNo"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                         else if((!indian_phno.test($("#landlineNo").val())))
                            {
                            $dialog.html("<s:text name="package.error.suEntValPhoNo"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            } 
                            
                            else if($("#headOfInst").val().length<1)
                            {
                            $dialog.html("<s:text name="package.error.suEntInsHeadNam"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                            else if($("#homeManagedBy").val()=='-1')
                            {
                            $dialog.html("<s:text name="package.error.suSelHomMagaBy"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                            }
                            
                            else if (undefined === $("input[name='compWall']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelComWallAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                           else if (undefined === $("input[name='visitorsRoom']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelVisRoomAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if (undefined === $("input[name='securityStaff']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelSecStaAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                 else if (undefined === $("input[name='medicalFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelMedFacAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if($("#totalPlinthArea").val().length<1)
                                 {
                                  $dialog.html("<s:text name="package.error.suEntTotPliAre"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#totalPlinthArea").val())))
                                 {
                                  $dialog.html("<s:text name="package.error.suEntDigiOnly"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                  else if($("#plinthPerInmate").val().length<1)
                                 {
                                  $dialog.html("<s:text name="package.error.suEntPliPerInm"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#plinthPerInmate").val())))
                                 {
                                  $dialog.html("<s:text name="package.error.suEntDigiOnly"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 else if (undefined === $("input[name='playGround']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelPlaGroAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                               else if ($("#indoorGamesEqup").val().length<1) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suEntIndGamAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if ($("#outdoorGamesEqup").val().length<1) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suEntOutGamAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                else if (undefined === $("input[name='presDiet']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelPreDieFoll"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                else if (undefined === $("input[name='drinikingWater']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelDriWatSuf"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                 else if($("#noOfBathrooms").val().length<1)
                                 {
                                  $dialog.html("<s:text name="package.error.suEntBathsNos"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#noOfBathrooms").val())))
                                 {
                                  $dialog.html("<s:text name="package.error.suEntBathsDig"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                 else if($("#noOfToilets").val().length<1)
                                 {
                                  $dialog.html("<s:text name="package.error.suEntToiNos"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if((!Digits_only.test($("#noOfToilets").val())))
                                 {
                                  $dialog.html("<s:text name="package.error.suEntToiDig"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                  else if($("#cleanlinessStatus").val().length<1)
                                 {
                                  $dialog.html("<s:text name="package.error.suEntCleaStat"/>");
                                  $dialog.parent().addClass( "ui-state-error" );
                                  $dialog.dialog('open');
                                  return false;
                                 }
                                 
                                 else if (undefined === $("input[name='kitchenAvailable']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelKitcAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("kitechenHygiene").val().length<1) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suEntKitHyg"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                 else if (undefined === $("input[name='dinningFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelDinFacAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                 else if (undefined === $("input[name='counselFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelCouFacAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if ($("premisesMaint").val().length<1) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelPremMain"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                else if ($("recreaction").val().length<1) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suEntHomeRecre"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                                else if (undefined === $("input[name='vocationalTraining']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelVocTraAva"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                                
                               else if (undefined === $("input[name='internetFacility']:checked").val()) {
                                //alert('hi');
                                $dialog.html("<s:text name="package.error.suSelInteAva"/>");
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




