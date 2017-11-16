<%-- 
    Document   : SIChildHistory_validation
    Created on : Mar 5, 2013, 11:19:44 AM
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
                                          document.sich1.submit();
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

    $( "#dialog-form_ch_history_preview" ).dialog({
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


    $('form#sich1').submit(function(){
        var specialchar= /^[^<>%$]*$/;
                                       
        if($("#motherHealth").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntMotHeaCon"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(!specialchar.test($("#motherHealth").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistMotHeaConInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
         else if($('input[name="motherTreatmentUndergone"]:checked').length===0)
        {
             $dialog.html("<s:text name="global.error.SIChHistEntJauTypTre"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($('input[name="accidentPregnancy"]:checked').length===0)
        {
             $dialog.html("<s:text name="global.error.SIChHistJauTypTreInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#otherComplications").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntOthSerCom"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#otherComplications").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistOthSerComInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#childBirthType").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntChBirTyp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childBirthType").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistChBirTypInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#immunizationChild").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntImmuDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#immunizationChild").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistImmuDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#treatmentChildPostnatal").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntAliTreGiv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#treatmentChildPostnatal").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistAliTreGivInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#pcDisability").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntDisab"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#pcDisability").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistDisabInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#pcPhysicalStructure").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntPhyStrDes"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#pcPhysicalStructure").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistPhyStrDesInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#pcColorEye").val()==1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntEyeColor"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                              
        else if($("#pcOthers").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntOthsDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        
        else if(!specialchar.test($("#pcOthers").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistOthsDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                          
                                          
        else if($("#mcRetardation").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntMentIll"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#mcRetardation").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistMentIllInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                                              
        else if($("#mcCapacityUnderstand").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntUndSitCap"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                               
        else if($("#mcStrongDepression").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntStrDepr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
          else if(!specialchar.test($("#mcStrongDepression").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistStrDeprInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                                              
                                           
        else if($("#mcPsycologists").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntPsycRepo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#mcPsycologists").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistPsycRepoInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
                        
        else if($("#mcOther").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntMentCond"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#mcOther").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistMentCondInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#physicalAbuse").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntPhyAbuCons"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        else if(!specialchar.test($("#physicalAbuse").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistPhyAbuConsInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
                        
        else if($("#sexualAbuse").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntSeAbusCons"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#sexualAbuse").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistSeAbusConsInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#physicalNeglectConsequences").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntPhyNegMal"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#physicalNeglectConsequences").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistPhyNegMalInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#illTreatment").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntIllTreDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        
         else if(!specialchar.test($("#illTreatment").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistIllTreDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#otherExploitation").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntOthExpDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        
        else if(!specialchar.test($("#otherExploitation").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistOthExpDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#habits").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntHabits"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        
         else if(!specialchar.test($("#habits").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistHabitsInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#intrests").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntIntereDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
         else if(!specialchar.test($("#intrests").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistIntereDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        
        else if($("#moralValues").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntMoralVal"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
         else if(!specialchar.test($("#moralValues").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistMoralValInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#recreationActivities").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntRecActDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#recreationActivities").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistRecActDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#outstandingChareristics").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntOutCharDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#outstandingChareristics").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistOutCharDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#companionsInfluence").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntComInfDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#companionsInfluence").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistComInfDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#truancyHome").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntHomTruDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#truancyHome").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistHomTruDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#schoolDetails").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntSchoolDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#schoolDetails").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistSchoolDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#workRecord").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntWorRecDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
         else if(!specialchar.test($("#workRecord").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistWorRecDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#neighbourhoodReport").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntNeiRepDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#neighbourhoodReport").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistNeiRepDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#parentsDisciplane").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntParDisAtt"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#parentsDisciplane").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistParDisAttInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#remarks").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChHistEntRemarks"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#remarks").val()))
        {

            $dialog.html("<s:text name="global.error.SIChHistRemarksInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
                
        else
        {       
                                                             
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#motherHealth_span").html($("#motherHealth").val());
            $("#motherTreatmentUndergone_span").html($('input[name="motherTreatmentUndergone"]:checked').val());
            $("#accidentPregnancy_span").html($('input[name="accidentPregnancy"]:checked').val());
            $("#otherComplications_span").html($("#otherComplications").val());
            $("#childBirthType_span").html($("#childBirthType").val());
            $("#immunizationChild_span").html($("#immunizationChild").val());
            $("#treatmentChildPostnatal_span").html($("#treatmentChildPostnatal").val());
            $("#pcDisability_span").html($("#pcDisability").val());
            $("#pcPhysicalStructure_span").html($("#pcPhysicalStructure").val());
            $("#pcColorEye_span").html($("#pcColorEye").val());
            $("#pcOthers_span").html($("#pcOthers").val());
            $("#mcRetardation_span").html($("#mcRetardation").val());
            $("#mcCapacityUnderstand_span").html($("#mcCapacityUnderstand").val());
            $("#mcStrongDepression_span").html($("#mcStrongDepression").val());
            $("#mcPsycologists_span").html($("#mcPsycologists").val());
            $("#mcOther_span").html($("#mcOther").val());
            $("#physicalAbuse_span").html($("#physicalAbuse").val());
            $("#sexualAbuse_span").html($("#sexualAbuse").val());
            $("#physicalNeglectConsequences_span").html($("#physicalNeglectConsequences").val());
            $("#illTreatment_span").html($("#illTreatment").val());
            $("#otherExploitation_span").html($("#otherExploitation").val());
            $("#habits_span").html($("#habits").val());
            $("#intrests_span").html($("#intrests").val());
            $("#moralValues_span").html($("#moralValues").val());
            $("#recreationActivities_span").html($("#recreationActivities").val());
            $("#outstandingChareristics_span").html($("#outstandingChareristics").val());
            $("#companionsInfluence_span").html($("#companionsInfluence").val());
            $("#truancyHome_span").html($("#truancyHome").val());
            $("#schoolDetails_span").html($("#schoolDetails").val());
            $("#workRecord_span").html($("#workRecord").val());
            $("#neighbourhoodReport_span").html($("#neighbourhoodReport").val());
            $("#parentsDisciplane_span").html($("#parentsDisciplane").val());
            $("#remarks_span").html($("#remarks").val());
            document.getElementById('dialog-form_ch_history_preview').style.visibility='visible';
            $('#dialog-form_ch_history_preview').dialog('open');
            return false;
        }
    });
});







