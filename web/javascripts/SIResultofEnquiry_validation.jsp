<%-- 
    Document   : SIResultofEnquiry_validation
    Created on : Mar 1, 2013, 10:24:46 AM
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
                                          document.sireq1.submit();
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

    $( "#dialog-form_ch_re_preview" ).dialog({
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
        width: 350,
        modal: true,
        title: 'ALERT'.fontcolor('#FF0000'),
        buttons: errButL10n
    });


    $('form#sireq1').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
                 
                        
        if($("#impactEmotionalMental").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntEmoFact"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#impactEmotionalMental").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqEmoFactInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#impactSocioEconomic").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntSocEcoImp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#impactSocioEconomic").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqSocEcoImpInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#impactAbuseIlltreatment").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntAbuIllImp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#impactAbuseIlltreatment").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqAbuIllImpInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#intelligentAssesssment").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntIntAsses"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#intelligentAssesssment").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqIntAssesInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#identifiedProblems").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntIdeProb"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#identifiedProblems").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqIdeProbInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#responseFamilyHelp").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntFamDetRes"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#responseFamilyHelp").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqFamDetResInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#analysisProblems").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntProbAna"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#analysisProblems").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqProbAnaInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                              
        else if($("#treatmentPlanPo").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntTreaPla"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#treatmentPlanPo").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqTreaPlaInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
                             
        else if($("#conditionProbation").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntProbCon"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#conditionProbation").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqProbConInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                                              
        else if($("#conditionCommunity").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntCommuSerCon"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#conditionCommunity").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqCommuSerConInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#suggestedTreatmentDrugs").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntSuggTreaPla"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        
        else if(!specialchar.test($("#suggestedTreatmentDrugs").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqSuggTreaPlaInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                  
        else if($("#treatmentCenter").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntTreaCent"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#treatmentCenter").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqTreaCentInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#restitutionReason").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntRestiDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#restitutionReason").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqRestiDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#instiTreatmentReason").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntInstTreaRec"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        
        else if(!specialchar.test($("#instiTreatmentReason").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqInstTreaRecInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#noninstiTreatmentReason").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntNonInstProg"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        
         else if(!specialchar.test($("#noninstiTreatmentReason").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqNonInstProgInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#parentAttitudeResponsibility").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntParResAtti"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        else if(!specialchar.test($("#parentAttitudeResponsibility").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqParResAttiInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#suggestedTreatmentInsti").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntInsDetSugPl"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#suggestedTreatmentInsti").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqInsDetSugPlInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#others").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIResEnqEntOthDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#others").val()))
        {

            $dialog.html("<s:text name="global.error.SIResEnqOthDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else
        {       
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#impactEmotionalMental_span").html($("#impactEmotionalMental").val());
            $("#impactSocioEconomic_span").html($("#impactSocioEconomic").val());
            $("#impactAbuseIlltreatment_span").html($("#impactAbuseIlltreatment").val());
            $("#intelligentAssesssment_span").html($("#intelligentAssesssment").val());
            $("#identifiedProblems_span").html($("#identifiedProblems").val());
            $("#responseFamilyHelp_span").html($("#responseFamilyHelp").val());
            $("#analysisProblems_span").html($("#analysisProblems").val());
            $("#treatmentPlanPo_span").html($("#treatmentPlanPo").val());
            $("#conditionProbation_span").html($("#conditionProbation").val());
            $("#conditionCommunity_span").html($("#conditionCommunity").val());
            $("#suggestedTreatmentDrugs_span").html($("#suggestedTreatmentDrugs").val());
            $("#treatmentCenter_span").html($("#treatmentCenter").val());
            $("#restitutionReason_span").html($("#restitutionReason").val());
            $("#instiTreatmentReason_span").html($("#instiTreatmentReason").val());
            $("#noninstiTreatmentReason_span").html($("#noninstiTreatmentReason").val());
            $("#parentAttitudeResponsibility_span").html($("#parentAttitudeResponsibility").val());
            $("#suggestedTreatmentInsti_span").html($("#suggestedTreatmentInsti").val());
            $("#others_span").html($("#others").val());
            document.getElementById('dialog-form_ch_re_preview').style.visibility='visible';
            $('#dialog-form_ch_re_preview').dialog('open');
            return false;
        }
    });
});




