<%-- 
    Document   : SIChildbackgroundDetails_validation
    Created on : Mar 1, 2013, 2:14:31 PM
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
                                          document.sifbg1.submit();
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

    $( "#dialog-form_ch_background_preview" ).dialog({
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


    $('form#sifbg1').submit(function(){
        var specialchar= /^[^<>%$]*$/;
                         
                        
        if($("#marriedPerticulars").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntMarPat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(!specialchar.test($("#marriedPerticulars").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroMarPatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#relativesIntrested").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntIntRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#relativesIntrested").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroIntRelInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#attitudeReligion").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntReliAtt"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#attitudeReligion").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroReliAttInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#socialStatus").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntSocSta"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#socialStatus").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroSocStaInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#delinquencyFamily").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntFamDeli"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#delinquencyFamily").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroFamDeliInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#presentLivingCondition").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntPreLiv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#presentLivingCondition").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroPreLivInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#relationBwParents").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntParRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#relationBwParents").val()))
        {

            $dialog.html("<s:text name="global.error.SIChBacGroParRelInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                              
        else if($("#otherFacts").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChBacGroEntOthFact"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#otherFacts").val()))
        {
            $dialog.html("<s:text name="global.error.SIChBacGroOthFactInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                            
        else
        {       
                                                             
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#marriedPerticulars_span").html($("#marriedPerticulars").val());
            $("#relativesIntrested_span").html($("#relativesIntrested").val());
            $("#attitudeReligion_span").html($("#attitudeReligion").val());
            $("#socialStatus_span").html($("#socialStatus").val());
            $("#delinquencyFamily_span").html($("#delinquencyFamily").val());
            $("#presentLivingCondition_span").html($("#presentLivingCondition").val());
            $("#relationBwParents_span").html($("#relationBwParents").val());
            $("#otherFacts_span").html($("#otherFacts").val());
            document.getElementById('dialog-form_ch_background_preview').style.visibility='visible';
            $('#dialog-form_ch_background_preview').dialog('open');
            return false;
        }
    });
});



