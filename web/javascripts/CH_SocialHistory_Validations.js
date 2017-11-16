/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHSocialHistory" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chsocial.submit();
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
        width: 250,
        modal: true,
        title: 'ERROR'.fontcolor('#FF0000'),
        buttons: {
            Ok: function() {
                $dialog.dialog('close');
            }
        }
    });

    $('form#chsocial').submit(function(){
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
         
       else if($("#friendshipDetails").val()==1)
        {
            $dialog.html("Please select Details of Friendship prior Admission ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#friendshipDetails").val()=='Others' && $("#friendshipDetails_other").val().length<1)
        {
            $dialog.html("Please Specify Details of Friendship prior Admission ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#friendshipDetails_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Details of  Friendship prior Admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#friendsMajority").val()==1)
        {
            $dialog.html("Please select Majority of the friends are ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#membershipGroups").val()==1)
        {
            $dialog.html("Please select Details of membership in group ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#membershipDetails").val().length<1)
        {
            $dialog.html("Please Specify Details of membership ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#membershipDetails").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Details of membership");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#positionGroups").val()==1)
        {
            $dialog.html("Please select The position of the child in the group ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#purposeMembership").val()==1)
        {
            $dialog.html("Please select Purpose of taking membership in the group");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#purposeMembership").val()=='Others' && $("#purposeMembership_other").val().length<1)
        {
            $dialog.html("Please specify Purpose of taking membership in the group");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#purposeMembership_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Purpose of taking membership in the group");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        
        else if($("#attitudeGroup").val()==1)
        {
            $dialog.html("Please select Attitude of the group ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#meetingPointGroup").val()==1)
        {
            $dialog.html("Please select The location/meeting point of the groups ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#reactionSocity").val()==1)
        {
            $dialog.html("Please select Reaction of the society when the child first come out of the family");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#reactionPolice").val()==1)
        {
            $dialog.html("Please select Reaction of the police towards children whenever they were dealt with");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#responsePublic").val().length<1)
        {
            $dialog.html("Please Enter The response of the general public towards the child ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#responsePublic").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in response of the general public towards the child");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
          
        
        else
        {      
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#friendshipDetails_span").html($("#friendshipDetails").val());
            $("#friendshipDetails_other_span").html($("#friendshipDetails_other").val());
            $("#friendsMajority_span").html($("#friendsMajority").val());
            $("#membershipGroups_span").html($("#membershipGroups").val());
            $("#membershipDetails_span").html($("#membershipDetails").val());
            $("#positionGroups_span").html($("#positionGroups").val());
            $("#purposeMembership_span").html($("#purposeMembership").val());
            $("#purposeMembership_other_span").html($("#purposeMembership_other").val());
            $("#attitudeGroup_span").html($("#attitudeGroup").val());
            $("#meetingPointGroup_span").html($("#meetingPointGroup").val());
            $("#reactionSocity_span").html($("#reactionSocity").val());
            $("#reactionPolice_span").html($("#reactionPolice").val());
            $("#responsePublic_span").html($("#responsePublic").val());
            document.getElementById('dialog-form_CHSocialHistory').style.visibility='visible';
            $('#dialog-form_CHSocialHistory').dialog('open');
            return false;
        }
    });
});












