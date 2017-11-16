/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_ch_re_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.sireq1.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            allFields.val("").removeClass( "ui-state-error" );
        }
    });

    var $dialog = $('<div></div>')
    .html('This dialog will show every time!')
    .dialog({
        autoOpen: false,
        height: 150,
        width: 350,
        modal: true,
        title: 'ERROR'.fontcolor('#FF0000'),
        buttons: {
            Ok: function() {
                $dialog.dialog('close');
            }
        }
    });


    $('form#sireq1').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
                 
                        
        if($("#impactEmotionalMental").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Impact Of Emotional Factors And Mental Aptitude ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#impactEmotionalMental").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Impact Of Emotional Factors And Mental Aptitude");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#impactSocioEconomic").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Impact Of Socio-Economic Factors ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#impactSocioEconomic").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Impact Of Socio-Economic Factors");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#impactAbuseIlltreatment").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Impact Of Abuse, Ill-treatment,Exploitation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#impactAbuseIlltreatment").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in impact Of Abuse, Ill-treatment,Exploitation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#intelligentAssesssment").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Intelligent Assessment And Physical Conditions ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#intelligentAssesssment").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Assessment And Physical Conditions");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#identifiedProblems").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Identified Problems And Its Relationship With Present Behavior");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#identifiedProblems").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Identified Problems And Its Relationship With Present Behavior");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#responseFamilyHelp").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Response Of The Family details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#responseFamilyHelp").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Response Of The Family ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#analysisProblems").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Analysis Of Problems ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#analysisProblems").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Analysis Of Problems");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                              
        else if($("#treatmentPlanPo").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Treatment Plan Of Probation Officer ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#treatmentPlanPo").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Treatment Plan Of Probation Officer");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
                             
        else if($("#conditionProbation").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Conditions Of Probation ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#conditionProbation").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Conditions Of Probation ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                                              
        else if($("#conditionCommunity").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Condition Of Community Service ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#conditionCommunity").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Condition Of Community Service");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#suggestedTreatmentDrugs").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Suggested Treatment Plan For Drug ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        
        else if(!specialchar.test($("#suggestedTreatmentDrugs").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Suggested Treatment Plan For Drug");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                  
        else if($("#treatmentCenter").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Treatment Center ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#treatmentCenter").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Treatment Center");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#restitutionReason").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Restitution details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#restitutionReason").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Restitution details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#instiTreatmentReason").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Recommended For Institutional Treatment Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        
        else if(!specialchar.test($("#instiTreatmentReason").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Recommended For Institutional Treatment");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#noninstiTreatmentReason").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Non-institutional Program Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        
         else if(!specialchar.test($("#noninstiTreatmentReason").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Non-institutional Program");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#parentAttitudeResponsibility").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Parent's Attitude To Take The Responsibility Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        else if(!specialchar.test($("#parentAttitudeResponsibility").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Parent's Attitude To Take The Responsibility");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#suggestedTreatmentInsti").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Suggested Treatment Plan In The Institution Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#suggestedTreatmentInsti").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Suggested Treatment Plan In The Institution");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#others").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Others Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#others").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Others ");
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




