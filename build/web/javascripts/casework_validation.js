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

    $( "#dialog-form_casework_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.casework.submit();
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

    $('form#casework').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z0-9]+$/;
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
            $dialog.html("Sorry! Please Enter Child First Name ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child First Name");
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
        else if($("#age").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Age");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#age").val())))
        {

            $dialog.html("Sorry! only enter Age between 0-99");
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
        
                         
        else if($("#religion").val()=='Other' && $("#religion_other").val().length<1)
        {
            $dialog.html("Please Specify the Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#religion").val()=='Other' && !specialchar.test($("#religion_other").val()))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Specify Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#caste").val().length<1)
        {
            $dialog.html("Sorry! Please Enter caste");
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
                             
        else if($("#datepicker").val().length<1)
        {
            //  alert($('input[name="disabled"]:checked').val());
            $dialog.html("Sorry! Please Enter Date of Birth");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! Entered Date of Birth is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
                        
                        
        else if($("#fatherName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter FatherName");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in FatherName");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        /*else if((!char_only.test($("#fatherName").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Father's Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#fatherOccup").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Father's Occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherOccup").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Father's Occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        /*else if((!char_only.test($("#fatherOccup").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Father's Occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
                        
        else if($("#motherName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Mother Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Mother Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        /*else if((!char_only.test($("#motherName").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Mother Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#motherOccup").val().length<1)
        {
            $dialog.html("Sorry! please  Enter Mother's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherOccup").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Mother's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        /*else if((!char_only.test($("#motherOccup").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Mother's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#noBrothers").val().length<1)
        {
            $dialog.html("Sorry! Please Enter No of Brothers");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noBrothers").val())))
        {

            $dialog.html("Sorry! special characters are not allowed or entered data is worng in No of Brothers field");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#noSister").val().length<1)
        {
            $dialog.html("Sorry! Please Enter No of Sisters");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noSister").val())))
        {

            $dialog.html("Sorry! special characters are not allowed or entered data is worng in No of Sisters field");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#languagesKnown").val()==1)
        {
            $dialog.html("please select at least one language");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#addrParents").val().length<1)
        {
            $dialog.html("please please Enter the Address of parents");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#addrParents").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Address of parents");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if(!specialchar.test($("#intrRelatives").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Interested relatives");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#eduStatus").val().length<1)
        {
            $dialog.html("please Enter the Education Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#eduStatus").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Education Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#identifiedProblemsChild").val().length<1)
        {
            $dialog.html("please Enter the Child's Identified Problems");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#identifiedProblemsChild").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Identified Problems");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
              
        else
        {                          
            var languagesknown="";
            var lkcheck=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i<document.casework.languagesKnown.length;i++ )
            {
                if(document.casework.languagesKnown[i].selected){
                    if(lkcheck==0){
                        languagesknown =document.casework.languagesKnown[i].value;
                        lkcheck=1;
                    }
                    else{
                        languagesknown =languagesknown+','+document.casework.languagesKnown[i].value;
                    }
                                 
                }
                              
            }                     
                          
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#subcaste_span").html($("#subcaste").val());
            $("#age_span").html($("#age").val());
            $("#childDetails_dob_span").html(document.casework.childDetails_dob.value.toString());
            $("#fatherName_span").html($("#fatherName").val());
            $("#fatherOccup_span").html($("#fatherOccup").val());
            $("#motherName_span").html($("#motherName").val());
            $("#motherOccup_span").html($("#motherOccup").val());
            $("#noBrothers_span").html($("#noBrothers").val());
            $("#noSister_span").html($("#noSister").val());
            $("#languagesKnown_span").html(languagesknown);
            $("#addrParents_span").html($("#addrParents").val());
            $("#intrRelatives_span").html($("#intrRelatives").val());
            $("#eduStatus_span").html($("#eduStatus").val());
            $("#identifiedProblemsChild_span").html($("#identifiedProblemsChild").val());
            document.getElementById('dialog-form_casework_preview').style.visibility='visible';
            $('#dialog-form_casework_preview').dialog('open');
            return false;
        }
    });
});




