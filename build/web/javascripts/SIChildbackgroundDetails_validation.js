
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_ch_background_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.sifbg1.submit();
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


    $('form#sifbg1').submit(function(){
        var specialchar= /^[^<>%$]*$/;
                         
                        
        if($("#marriedPerticulars").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Married Particulars ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(!specialchar.test($("#marriedPerticulars").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Married Particulars");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#relativesIntrested").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Relatives Interested ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#relativesIntrested").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Relatives Interested");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#attitudeReligion").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Attitude towards Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#attitudeReligion").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Attitude towards Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#socialStatus").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Social Status Data");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#socialStatus").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Social Status Data");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#delinquencyFamily").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Delinquency Family Data ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#delinquencyFamily").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Delinquency Family");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#presentLivingCondition").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Present Living condition data");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#presentLivingCondition").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Present Living condition");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#relationBwParents").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Relation between Parents ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#relationBwParents").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Relation between Parents");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                              
        else if($("#otherFacts").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Other Facts Data ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#otherFacts").val()))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Other Facts Data");
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




