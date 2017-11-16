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

    $( "#dialog-form_CHPriorAdmEdu" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chpreeducation.submit();
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

    $('form#chpreeducation').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        var specialchar= /^[^<>%$]*$/;
                      
        if($("#childProfileId").val()==1)
        {
            $dialog.html("Please select Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                       
        else if($("#educationPriorAdmission").val()==1)
        {
            $dialog.html("Please select Education Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonLeavingSchool").val()==1)
        {
            $dialog.html("Please select Reason for leaving the school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonLeavingSchool").val()=='Others' && $("#reasonLeavingSchool_other").val().length<1)
        {
            $dialog.html("Please Specify Reason for leaving the school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonLeavingSchool_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Reason for leaving the school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#detailsSchoolStudied").val()==1)
        {
            $dialog.html("Please select School studied last");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#mediumInstruction").val()==1)
        {
            $dialog.html("Please select Medium of instruction");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#mediumInstruction").val()=='Others' && $("#mediumInstruction_other").val().length<1)
        {
            $dialog.html("Please Specify Medium of instruction");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#mediumInstruction_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Medium of instruction");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else
        {     
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#educationPriorAdmission_span").html($("#educationPriorAdmission").val());
            $("#reasonLeavingSchool_span").html($("#reasonLeavingSchool").val());
            $("#reasonLeavingSchool_other_span").html($("#reasonLeavingSchool_other").val());
            $("#detailsSchoolStudied_span").html($("#detailsSchoolStudied").val());
            $("#mediumInstruction_span").html($("#mediumInstruction").val());
            $("#mediumInstruction_other_span").html($("#mediumInstruction_other").val());
            document.getElementById('dialog-form_CHPriorAdmEdu').style.visibility='visible';
            $('#dialog-form_CHPriorAdmEdu').dialog('open');
            return false;
        }
    });
});







