<%-- 
    Document   : SU_Childstatus_Validation
    Created on : Feb 12, 2013, 3:32:11 PM
    Author     : sweta
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="global.button.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="global.button.clear"/>").text();
			    var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.su_childstatus.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>  
    
    <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>

           $( "#dialog-form_Childstatus_preview" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: preButL10n,
			close: function() {
				allFields.val("").removeClass( "ui-state-error" );
			}
		});  
           
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

    $('form#su_childstatus').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
         var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        
       	 var startDate= new Date($("#datepicker1").val());
        var endDate = new Date($("#datepicker2").val());  
         
                    
        // alert($("#childProfileId").val()==1);
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="global.error.couFormSelProfId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#type").val()==1)
        {
            $dialog.html("<s:text name="global.error.chStaSelCase"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#type").val()=='runaway' && $("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaSelRunDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='runaway' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="global.error.chStaSelRunDateInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='missing' && $("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaSelMisDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='missing' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="global.error.chStaSelMisDateInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#type").val()=='missing' && $("#datepicker3").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaSelFIRDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='missing' && !datepattern.test($("#datepicker3").val())))
        {
            $dialog.html("<s:text name="global.error.chStaFIRDateInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='runaway' && $("#datepicker3").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaSelFIRDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='runaway' && !datepattern.test($("#datepicker3").val())))
        {
            $dialog.html("<s:text name="global.error.chStaFIRDateInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }            
        else if(($("#type").val()=='shortleave' && $("#datepicker1").val().length<1))
        {
            $dialog.html("<s:text name="global.error.chStaSelShoLeaDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            else if(($("#type").val()=='shortleave' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("<s:text name="global.error.chStaSelShoLeaDateInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(($("#type").val()=='shortleave' && $("#datepicker2").val().length<1))
        {
            $dialog.html("<s:text name="global.error.chStaSelRetShoLeaDate"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(($("#type").val()=='shortleave' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("<s:text name="global.error.chStaRetShoLeaDateInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
               
        
        
         else if($("#type").val()=='residential' && $("#datepicker1").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaSelResSchFrDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(($("#type").val()=='residential' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("<s:text name="global.error.chStaResSchFrDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='residential' && $("#datepicker2").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelResSchExpDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(($("#type").val()=='residential' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("<s:text name="global.error.chStaResSchExpDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#type").val()=='runawaycameback' && $("#datepicker").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelRunCameDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       else if(($("#type").val()=='runawaycameback' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="global.error.chStaSelRunCameDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#type").val()=='missingfound' && $("#datepicker").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelMisFouDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='missingfound' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="global.error.chStaSelMisFouDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#type").val()=='shortleavereturn' && $("#datepicker1").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelShoLeaRetDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='shortleavereturn' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("<s:text name="global.error.chStaShoLeaRetDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#type").val()=='shortleavereturn' && $("#datepicker2").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelRetShoLeaRetDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='shortleavereturn' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("<s:text name="global.error.chStaRetShoLeaRetDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        
         else if($("#type").val()=='residentialreturned' && $("#datepicker1").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelResRetToDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='residentialreturned' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("<s:text name="global.error.chStaResRetToDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='residentialreturned' && $("#datepicker2").val().length<1 )
        {
            $dialog.html("<s:text name="global.error.chStaSelResRetRetDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='residentialreturned' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("<s:text name="global.error.chStaResRetRetDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                                 
        else if($("#reason").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaReaFIRDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#reason").val()))
        {

            $dialog.html("<s:text name="global.error.chStaReaSpeChar"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        
        else if($("#address").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaEntResAdd"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#address").val()))
        {

            $dialog.html("<s:text name="global.error.chStaResAddSpeChar"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
      
              
        else if($("#remarks").val().length<1)
        {
            $dialog.html("<s:text name="global.error.chStaEntRema"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#remarks").val()))
        {

            $dialog.html("<s:text name="global.error.chStaRemaSpeChar"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }      
                
              
        else
        {     
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#type_span").html($("#type").val());
            $("#missingdate_string_span").html(document.su_childstatus.missingdate_string.value.toString());
            $("#firdate_string_span").html(document.su_childstatus.date_fir.value.toString());
            $("#fromdate_string_span").html(document.su_childstatus.fromdate_string.value.toString());
            $("#todate_string_span").html(document.su_childstatus.todate_string.value.toString());
            $("#reason_span").html($("#reason").val());
            $("#address_span").html($("#address").val());
            $("#remarks_span").html($("#remarks").val());
            document.getElementById('dialog-form_Childstatus_preview').style.visibility='visible';
            $('#dialog-form_Childstatus_preview').dialog('open');
            return false;
        }
    });
});


