/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_Interview_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.InterviewReg.submit();
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

    $('form#InterviewReg').submit(function(){
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
                        
        else if($("#datepicker").val().length<1)
        {
           
            $dialog.html("Sorry! Please Enter Date of Interview");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! Entered Date of Interview is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           
        }
        else if($("#interviewer").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Interviewer Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#interviewer").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Interviewer Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#relationshipChild").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Relationship With Child ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#relationshipChild").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Relationship With Child");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#addrInterviewer").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Address Of Interviewer");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#addrInterviewer").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Address Of Interviewer");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                                         
        else if($("#childBehaviourInt").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Behavior & Attitude Of Child After Interview");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childBehaviourInt").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Behavior & Attitude Of Child After Interview");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#suggestedAction").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Suggested Follow-Up Action");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            
            else if(!specialchar.test($("#suggestedAction").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Suggested Follow-Up Action");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#remarksSuper").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Remarks Of Superintendent");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#remarksSuper").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Remarks Of Superintendent");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }               
        else
        {      
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#interviewDate_String_span").html(document.InterviewReg.interviewDate_String.value.toString());
            $("#interviewer_span").html($("#interviewer").val());
            $("#relationshipChild_span").html($("#relationshipChild").val());
            $("#addrInterviewer_span").html($("#addrInterviewer").val());
            $("#childBehaviourInt_span").html($("#childBehaviourInt").val());
            $("#childBehaviourAfterInt_span").html($("#childBehaviourAfterInt").val());
            $("#suggestedAction_span").html($("#suggestedAction").val()); 
            $("#remarksSuper_span").html($("#remarksSuper").val());
            document.getElementById('dialog-form_Interview_preview').style.visibility='visible';
            $('#dialog-form_Interview_preview').dialog('open');
            return false;
        }
    });
});






