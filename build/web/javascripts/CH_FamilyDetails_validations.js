/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHFamily" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chfamily.submit();
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

    $('form#chfamily').submit(function(){
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
         
       else if($("#familyType").val()==1)
        {
            $dialog.html("Please select Type of Family");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#fmRelation").val()==1)
        {
            $dialog.html("Please select Relationship among Father and Mother");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       else if($("#fcRelation").val()==1)
        {
            $dialog.html("Please select Relationship among Father and Child");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#mcRelation").val()==1)
        {
            $dialog.html("Please select Relationship among Mother and Child");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#fsRelation").val()==1)
        {
            $dialog.html("Please select Relationship among Father and siblings");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#msRelation").val()==1)
        {
            $dialog.html("Please select Relationship among Mother and siblings");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#jsRelation").val()==1)
        {
            $dialog.html("Please select Relationship among Juvenile and siblings");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            
     else if($("#propertyFamilyLanded").val().length<1)
        {
           
            $dialog.html("Sorry! please  Enter Landed properties");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#propertyFamilyLanded").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Landed properties");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
          else if($("#propertyFamilyHousehold").val()==1)
        {
            $dialog.html("Please select Household articles");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#propertyFamilyVehicals").val()==1)
        {
            $dialog.html("Please select Vehicles");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#propertyFamilyVehicals").val()=='four_wheeler'&& $("#propertyFamilyVehicals_other").val()==1)
        {
            $dialog.html("Please Select Four wheeler");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#propertyFamilyOthers").val().length<1)
        {           
            $dialog.html("Sorry! Please Enter Others properties");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#propertyFamilyOthers").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Others properties");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
         else if($("#marriageDetailsParents").val()==1)
        {
            $dialog.html("Please select Parents Marriage Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#marriageDetailsBrothers").val()==1)
        {
            $dialog.html("Please select Brothers Marriage Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#marriageDetailsSisters").val()==1)
        {
            $dialog.html("Please select Sisters Marriage Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#socialActivityFamily").val()==1)
        {
            $dialog.html("Please select Social activities of family members");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#parentalCareJuvnileBeforeAdmission").val()==1)
        {
            $dialog.html("Please select Social care towards juvenile before admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                     
        else
        {      
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#familyType_span").html($("#familyType").val());
            $("#fmRelation_span").html($("#fmRelation").val());
            $("#fcRelation_span").html($("#fcRelation").val());
            $("#mcRelation_span").html($("#mcRelation").val());
            $("#fsRelation_span").html($("#fsRelation").val());
            $("#msRelation_span").html($("#msRelation").val());
            
            $("#jsRelation_span").html($("#jsRelation").val());
            $("#propertyFamilyLanded_span").html($("#propertyFamilyLanded").val());
            $("#propertyFamilyHousehold_span").html($("#propertyFamilyHousehold").val());
            $("#propertyFamilyVehicals_span").html($("#propertyFamilyVehicals").val());
            $("#propertyFamilyVehicals_other_span").html($("#propertyFamilyVehicals_other").val());
            $("#propertyFamilyOthers_span").html($("#propertyFamilyOthers").val());
             
            $("#marriageDetailsParents_span").html($("#marriageDetailsParents").val());
            $("#marriageDetailsBrothers_span").html($("#marriageDetailsBrothers").val());
            $("#marriageDetailsSisters_span").html($("#marriageDetailsSisters").val());
            $("#socialActivityFamily_span").html($("#socialActivityFamily").val());
            $("#parentalCareJuvnileBeforeAdmission_span").html($("#parentalCareJuvnileBeforeAdmission").val());
                 
            document.getElementById('dialog-form_CHFamily').style.visibility='visible';
            $('#dialog-form_CHFamily').dialog('open');
            return false;
        }
    });
});









