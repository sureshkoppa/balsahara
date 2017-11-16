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

    $( "#dialog-form_CHAdolescence" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chadol.submit();
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

    $('form#chadol').submit(function(){
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
                       
        else if($("#puberty").val()==1)
        {
            $dialog.html("Please select Puberty");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#deliquentBehaviour").val()==1)
        {
            $dialog.html("Please select Details of delinquent behaviour");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#deliquentBehaviour").val()=='Others' && $("#deliquentBehaviour_other").val().length<1)
        {
            $dialog.html("Please specify Details of delinquent behaviour ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(!specialchar.test($("#deliquentBehaviour_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Details of delinquent behaviour");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#reasonDeliquentBehaviour").val()==1)
        {
            $dialog.html("Please select Reason for delinquent behaviour");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonDeliquentBehaviour").val()=='Others' && $("#reasonDeliquentBehaviour_other").val().length<1)
        {
            $dialog.html("Please specify Reason for delinquent behaviour ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#reasonDeliquentBehaviour_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Reason for delinquent behaviour");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#habits").val()==1)
        {
            $dialog.html("please select at least one Habit");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#drugAbuse").val().length<1)
        {
            $dialog.html("please specify Drug Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
        
         else if(!specialchar.test($("#drugAbuse").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Drug Abuse");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
                        
        else if($("#hobbies").val()==1)
        {
            $dialog.html("please select at least one Hobby");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#incomeUtilization").val()==1)
        {
            $dialog.html("please select Details of Income Utilization");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#savingDetails").val()==1)
        {
            $dialog.html("please select Details of Savings");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#savingDetails").val()=='Others' && $("#savingDetails_other").val().length<1)
        {
            $dialog.html("Please specify Details of Savings ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#savingDetails_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Details of Savings");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#workingHours").val()==1)
        {
            $dialog.html("please select Duration of working hours");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                            
                        
        else
        {                          
            var habits="";
            var lkcheck=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i<document.chadol.habits.length;i++ )
            {
                if(document.chadol.habits[i].selected){
                    if(lkcheck==0){
                        habits =document.chadol.habits[i].value;
                        lkcheck=1;
                    }
                    else{
                        habits =habits+','+document.chadol.habits[i].value;
                    }
                                 
                }
                              
            }   
                          
                          
            var hobbies="";
            var lkcheck1=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i<document.chadol.hobbies.length;i++ )
            {
                if(document.chadol.hobbies[i].selected){
                    if(lkcheck1==0){
                        hobbies =document.chadol.hobbies[i].value;
                        lkcheck1=1;
                    }
                    else{
                        hobbies =hobbies+','+document.chadol.hobbies[i].value;
                    }
                                 
                }
                              
            }   
                          
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#puberty_span").html($("#puberty").val());
            $("#deliquentBehaviour_span").html($("#deliquentBehaviour").val());
            $("#deliquentBehaviour_other_span").html($("#deliquentBehaviour_other").val());
            $("#reasonDeliquentBehaviour_span").html($("#reasonDeliquentBehaviour").val());
            $("#reasonDeliquentBehaviour_other_span").html($("#reasonDeliquentBehaviour_other").val());
            $("#habits_span").html(habits);
            $("#drugAbuse_span").html($("#drugAbuse").val());
            $("#hobbies_span").html(hobbies);
            $("#incomeUtilization_span").html($("#incomeUtilization").val());
            $("#savingDetails_span").html($("#savingDetails").val());
            $("#savingDetails_other_span").html($("#savingDetails_other").val());
            $("#workingHours_span").html($("#workingHours").val());
            document.getElementById('dialog-form_CHAdolescence').style.visibility='visible';
            $('#dialog-form_CHAdolescence').dialog('open');
            return false;
        }
    });
});





