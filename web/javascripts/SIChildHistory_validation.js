/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_ch_history_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.sich1.submit();
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


    $('form#sich1').submit(function(){
        var specialchar= /^[^<>%$]*$/;
                                       
        if($("#motherHealth").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Mother's Health Condition");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(!specialchar.test($("#motherHealth").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Mother's Health Condition");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
         else if($('input[name="motherTreatmentUndergone"]:checked').length===0)
        {
             $dialog.html("Please Select Undergone Treatment For Jaundice, Typhoid Or Any Other Disease");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($('input[name="accidentPregnancy"]:checked').length===0)
        {
             $dialog.html("Please Select Accident Or Injury, If Any, During Pregnancy");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#otherComplications").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Other serious Complications");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#otherComplications").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Other serious Complications");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#childBirthType").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Child Birth Type");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childBirthType").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child Birth Type");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#immunizationChild").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Immunization Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#immunizationChild").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Immunization Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#treatmentChildPostnatal").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Treatment Given For Any Aliments");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#treatmentChildPostnatal").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Treatment Given For Any Aliments");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#pcDisability").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Disability");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#pcDisability").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in  Disability");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#pcPhysicalStructure").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Description Of Physical Structure");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#pcPhysicalStructure").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Description Of Physical Structure");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#pcColorEye").val()==1)
        {
            $dialog.html("Please select the Color of Eyes");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                              
        else if($("#pcOthers").val().length<1)
        {
            $dialog.html("Sorry! Please Enter others Data ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        
        else if(!specialchar.test($("#pcOthers").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in others Data ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                          
                                          
        else if($("#mcRetardation").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Mentally Ill/Retardation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#mcRetardation").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Mentally Ill/Retardation ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                                              
        else if($("#mcCapacityUnderstand").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Capacity To Understand The Situation ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                               
        else if($("#mcStrongDepression").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Strong Depression Or Emotional Disturbances ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
          else if(!specialchar.test($("#mcStrongDepression").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Strong Depression Or Emotional Disturbances ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                                              
                                           
        else if($("#mcPsycologists").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Report Of Psychologists ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#mcPsycologists").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Report Of Psychologists ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
                        
        else if($("#mcOther").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Mental Condition Other Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#mcOther").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Mental Condition Other Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#physicalAbuse").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Physical Abuse And Its Consequences ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        else if(!specialchar.test($("#physicalAbuse").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Physical Abuse And Its Consequences");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
                        
        else if($("#sexualAbuse").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Sexual Abuse And Its Consequences Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#sexualAbuse").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Sexual Abuse And Its Consequences");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#physicalNeglectConsequences").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Physical Neglect And Maltreatment Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#physicalNeglectConsequences").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed inPhysical Neglect And Maltreatment Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#illTreatment").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Ill-Treatment Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        
         else if(!specialchar.test($("#illTreatment").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Ill-Treatment");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#otherExploitation").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Other Form Of Exploitation Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        
        else if(!specialchar.test($("#otherExploitation").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Other Form Of Exploitation ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#habits").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Habits ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        
         else if(!specialchar.test($("#habits").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Habits  ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#intrests").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Interests Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
         else if(!specialchar.test($("#intrests").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Interests ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        
        else if($("#moralValues").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Moral Values ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
         else if(!specialchar.test($("#moralValues").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Moral Values  ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#recreationActivities").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Recreational Activities Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#recreationActivities").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Recreational Activities ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#outstandingChareristics").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Outstanding Characteristics Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#outstandingChareristics").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Outstanding Characteristics");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#companionsInfluence").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Companion And Their Influence Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#companionsInfluence").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Companion And Their Influence");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#truancyHome").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Truancy From Home Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#truancyHome").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Truancy From Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#schoolDetails").val().length<1)
        {
            $dialog.html("Sorry! Please Enter School Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#schoolDetails").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in School Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#workRecord").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Work Record Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
         else if(!specialchar.test($("#workRecord").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Work Record ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#neighbourhoodReport").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Neighbourhood and Neighbour's Report Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#neighbourhoodReport").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Neighbourhood and Neighbour's Report ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#parentsDisciplane").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Parents Attitude towards discipline Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#parentsDisciplane").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Parents Attitude towards discipline");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#remarks").val().length<1)
        {
            $dialog.html("Sorry! Please Enter remarks ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#remarks").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in remarks");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
                
        else
        {       
                                                             
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#motherHealth_span").html($("#motherHealth").val());
            $("#motherTreatmentUndergone_span").html($("#motherTreatmentUndergone").val());
            $("#accidentPregnancy_span").html($("#accidentPregnancy").val());
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






