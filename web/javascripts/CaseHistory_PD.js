/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHPD_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.ch_personal.submit();
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

    $('form#ch_personal').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        var specialchar= /^[^<>%$]*$/;
                      
        if($("#childProfileId").val()==1)
        {
            $dialog.html("Please select Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                               
        else if($("#childName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Child Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#childSurname").val().length<1)
        {
            $dialog.html("Sorry! Please Enter child surname");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#childSurname").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child Surname");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                
        else if($('input[name="gender"]:checked').length===0)
        {
            $dialog.html("Please Select Gender");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#religion").val()==1)
        {
            $dialog.html("Please select Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                         
                         
        else if($("#religion").val()=='Other' && $("religion_other").length<1)
        {
            $dialog.html("Please Specify the Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#religion_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Specify the Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#caste").val().length<1)
        {
            $dialog.html("Sorry! Please Enter caste ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#caste").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in caste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#subcaste").val().length<1)
        {
            $dialog.html("Sorry! Please Enter subcaste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#subcaste").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in subcaste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#ageAdmission").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Age at admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#ageAdmission").val())))
        {

            $dialog.html("Sorry! only enter Age at admission between 0-99");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#agePresent").val().length<1)
        {
            $dialog.html("Sorry! Please Enter PresentAge ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#agePresent").val())))
        {

            $dialog.html("Sorry! only enter PresentAge between 0-99");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#localResidence").val()==1)
        {
            $dialog.html("Please select Location Of Residence");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
                            
        }
                        
        else if($("#localResidence").val()=='Others' && $("#localResidence_other").val().length<1)
        {
            $dialog.html("please specify Location Of Residence");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#localResidence_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Location Of Residence");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                
        else if($("#nativeDistrict").val().length<1)
        {
            $dialog.html("please Enter Native District");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#nativeDistrict").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Native District");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
        else if($("#nativeState").val().length<1)
        {
            $dialog.html("please Enter Native State");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#nativeState").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Native State");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                   
        else if($("#housingType").val()==1)
        {
            $dialog.html("Please select Housing Type");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        //  else if($("#localResidence").val()=='Others' && $("#localResidence_other").val().length<1)
        else if($("#housingType").val()=='Others' && $("#housingType_other").val().length<1)
        {
            $dialog.html("please specify Housing Type");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#housingType_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Housing Type");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }              
        else if($("#housingSpace").val()==1)
        {
            $dialog.html("Please select Housing Space");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#houseOwnership").val()==1)
        {
            $dialog.html("Please select House Ownership");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#broughtbeforeCwc").val()==1)
        {
            $dialog.html("Please select Juvenile Was Brought Before CWC/JJB By");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#broughtbeforeCwc").val()=='Guardians' && $("#parentRelation").val().length<1)
        {
            $dialog.html("please specify Relation ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#parentRelation").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Relation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
                        
        else if($("#reasonLeavingFamily").val()==1)
        {
            $dialog.html("Please select Reasons for Leaving Family");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonLeavingFamily").val()=='Others' && $("#reasonLeavingFamily_other").val().length<1)
        {
            $dialog.html("please specify Reasons for Leaving Family");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonLeavingFamily_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Reasons for Leaving Family");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                  
        else if($("#verbalAbuse").val()==1)
        {
            $dialog.html("Please select Verbal Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#verbalAbuse").val()=='Others' && $("#verbalAbuse_other").val().length<1)
        {
            $dialog.html("please specify Verbal Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
           else if(!specialchar.test($("#verbalAbuse_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Verbal Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                
                        
        else if($("#physicalAbuse").val()==1)
        {
            $dialog.html("Please select Physical Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#sexualAbuse").val()==1)
        {
            $dialog.html("Please select Sexual Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#sexualAbuse").val()=='Others' && $("#sexualAbuse_other").val().length<1)
        {
            $dialog.html("please specify Sexual Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
          else if(!specialchar.test($("#sexualAbuse_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Sexual Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }    
                        
        else if($("#otherAbuse").val().length<1)
        {
            $dialog.html("Please specify Other Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          
          else if(!specialchar.test($("#otherAbuse").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Other Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
        else if($("#illtreatDenialFood").val()==1)
        {
            $dialog.html("Please select Denial Of Food");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#illtreatDenialFood").val()=='Others' && $("#illtreatDenialFood_other").val().length<1)
        {
            $dialog.html("please specify Denial Of Food");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            else if(!specialchar.test($("#illtreatDenialFood_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Denial Of Food");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }               
                        
        else if($("#illtreatBeatenMercilessly").val()==1)
        {
            $dialog.html("Please select Beaten Mercilessly");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#illtreatBeatenMercilessly").val()=='Others' && $("#illtreatBeatenMercilessly_other").val().length<1)
        {
            $dialog.html("please specify Beaten Mercilessly");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if(!specialchar.test($("#illtreatBeatenMercilessly_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in  specify Beaten Mercilessly");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }    
                        
        else if($("#illtreatCauseInjury").val()==1)
        {
            $dialog.html("Please select Causing Injury");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#illtreatCauseInjury").val()=='Others' && $("#illtreatCauseInjury_other").val().length<1)
        {
            $dialog.html("please specify Causing Injury");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#illtreatCauseInjury_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in  specify Causing Injury");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#illtreatOthers").val().length<1)
        {
            $dialog.html("Please Specify illtreatment Others");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#illtreatOthers").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Specify illtreatment Others");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                                         
        else if($("#exploitationChild").val()==1)
        {
            $dialog.html("Please select Exploitation Faced");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#exploitationChild").val()=='Others' && $("#exploitationChild_other").val().length<1)
        {
            $dialog.html("please specify Exploitation Faced");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#exploitationChild_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Exploitation Faced");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                     
        else if($("#hsbaRespiratory").val()==1)
        {
            $dialog.html("Please select Respiratory Disorders");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#hsbaHearing").val()==1)
        {
            $dialog.html("Please select Hearing Impairment");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#hsbaEye").val()==1)
        {
            $dialog.html("Please select Eye Diseases");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaDental").val()==1)
        {
            $dialog.html("Please select Dental Diseases");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaCordiac").val()==1)
        {
            $dialog.html("Please select Cardiac Diseases");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaSkin").val()==1)
        {
            $dialog.html("Please select Skin Diseases");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaSexualDiseases").val()==1)
        {
            $dialog.html("Please select Sexually Transmitted Diseases");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaNeurological").val()==1)
        {
            $dialog.html("Please select Neurological Disorders");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaMentalHandicap").val()==1)
        {
            $dialog.html("Please select Mental Handicap");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaPhysicalHandicap").val()==1)
        {
            $dialog.html("Please select Physical Handicap");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaOthers").val().length<1)
        {
            $dialog.html("Please Specify Others Handicap");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          
        else if(!specialchar.test($("#hsbaOthers").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Specify Others Handicap");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }    
        else if($("#childStayPriorAdmission").val()==1)
        {
            $dialog.html("Please select Stay Of Child Prior To Admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#childStayPriorAdmission").val()=='Others' && $("#childStayPriorAdmission_other").val().length<1)
        {
            $dialog.html("please specify Stay Of Child Prior To Admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#childStayPriorAdmission_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in specify Stay Of Child Prior To Admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#vpmcPriorInsti").val()==1)
        {
            $dialog.html("Please select Visit of Parents To Child Prior To Institutionalization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($("#vpmcAfterInsti").val()==1)
        {
            $dialog.html("Please select Visit of Parents To Child After Institutionalization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
                        
        else if($("#vchfPriorInsti").val()==1)
        {
            $dialog.html("Please select Visit Of Child To His Family Prior To Institutionalization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($("#vchfAfterInsti").val()==1)
        {
            $dialog.html("Please select Visit Of Child To His Family After Institutionalization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
                        
                        
        else if($("#cwpPriorInsti").val()==1)
        {
            $dialog.html("Please select Correspondence With Parents Prior To Institutionalization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($("#cwpAfterInsti").val()==1)
        {
            $dialog.html("Please select Correspondence With Parents After Institutionalization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        // work to be done from here********************************************
        else
        {  
            var gender;
                            
            if(document.ch_personal.gender[0].checked == true )
            {
                gender = document.ch_personal.gender[0].value;
            }
            else
            {
                gender = document.ch_personal.gender[1].value;
            }
                            
                            
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#gender_span").html(gender);
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#subcaste_span").html($("#subcaste").val());
            $("#ageAdmission_span").html($("#ageAdmission").val());
            $("#agePresent_span").html($("#agePresent").val());
            $("#localResidence_span").html($("#localResidence").val());
            $("#localResidence_other_span").html($("#localResidence_other").val());
            $("#nativeDistrict_span").html($("#nativeDistrict").val());
            $("#nativeState_span").html($("#nativeState").val());
            $("#housingType_span").html($("#housingType").val());
            $("#housingType_other_span").html($("#housingType_other").val());
            $("#housingSpace_span").html($("#housingSpace").val());
            $("#houseOwnership_span").html($("#houseOwnership").val());
            $("#broughtbeforeCwc_span").html($("#broughtbeforeCwc").val());
            $("#parentRelation_span").html($("#parentRelation").val());
            $("#reasonLeavingFamily_span").html($("#reasonLeavingFamily").val());
            $("#reasonLeavingFamily_other_span").html($("#reasonLeavingFamily_other").val());
            $("#verbalAbuse_span").html($("#verbalAbuse").val());
            $("#verbalAbuse_other_span").html($("#verbalAbuse_other").val());
            $("#physicalAbuse_span").html($("#physicalAbuse").val());
            $("#sexualAbuse_span").html($("#sexualAbuse").val());
            $("#sexualAbuse_other_span").html($("#sexualAbuse_other").val());
            $("#otherAbuse_span").html($("#otherAbuse").val());
            $("#illtreatDenialFood_span").html($("#illtreatDenialFood").val());
            $("#illtreatDenialFood_other_span").html($("#illtreatDenialFood_other").val());
            $("#illtreatBeatenMercilessly_span").html($("#illtreatBeatenMercilessly").val());
            $("#illtreatBeatenMercilessly_other_span").html($("#illtreatBeatenMercilessly_other").val());
            $("#illtreatCauseInjury_span").html($("#illtreatCauseInjury").val());
            $("#illtreatCauseInjury_other_span").html($("#illtreatCauseInjury_other").val());
            $("#illtreatOthers_span").html($("#illtreatOthers").val());
            $("#exploitationChild_span").html($("#exploitationChild").val());
            $("#exploitationChild_other_span").html($("#exploitationChild_other").val());
            $("#hsbaRespiratory_span").html($("#hsbaRespiratory").val());
            $("#hsbaHearing_span").html($("#hsbaHearing").val());
            $("#hsbaEye_span").html($("#hsbaEye").val());
            $("#hsbaDental_span").html($("#hsbaDental").val());
            $("#hsbaCordiac_span").html($("#hsbaCordiac").val());
            $("#hsbaSkin_span").html($("#hsbaSkin").val());
            $("#hsbaSexualDiseases_span").html($("#hsbaSexualDiseases").val());
            $("#hsbaNeurological_span").html($("#hsbaNeurological").val());
            $("#hsbaMentalHandicap_span").html($("#hsbaMentalHandicap").val());
            $("#hsbaPhysicalHandicap_span").html($("#hsbaPhysicalHandicap").val());
            $("#hsbaOthers_span").html($("#hsbaOthers").val());
            $("#childStayPriorAdmission_span").html($("#childStayPriorAdmission").val());
            $("#childStayPriorAdmission_other_span").html($("#childStayPriorAdmission_other").val());
            $("#vpmcPriorInsti_span").html($("#vpmcPriorInsti").val());
            $("#vpmcAfterInsti_span").html($("#vpmcAfterInsti").val());
            $("#vchfPriorInsti_span").html($("#vchfPriorInsti").val());
            $("#vchfAfterInsti_span").html($("#vchfAfterInsti").val());
            $("#cwpPriorInsti_span").html($("#cwpPriorInsti").val());
            $("#cwpAfterInsti_span").html($("#cwpAfterInsti").val());
            // else{
            document.getElementById('dialog-form_CHPD_preview').style.visibility='visible';
            $('#dialog-form_CHPD_preview').dialog('open');
            return false;
        }
    });
});


