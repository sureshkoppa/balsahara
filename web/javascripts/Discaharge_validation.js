/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_Discharge_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.dischargeForm.submit();
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

    $('form#dischargeForm').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
        var phonenumber_only=/^[0-9]*$/;
                    
        if($("#childIdToBeTransDis").val()==1)
        {
            $dialog.html("Please select Child Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#actionTaken").val()=='non')
        {
            $dialog.html("Sorry! Please select Action Taken");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='transfer' && $("#userDistrictId").val()=='non')
        {
            $dialog.html("Sorry! Please select District Name ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='transfer' && $("#transHomeId").val()==1)
        {
            $dialog.html("Please select Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                         
                         
        else if($("#actionTaken").val()=='handover' && $("#handoverPersonName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Name of the person ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && (!specialchar.test($("#handoverPersonName").val())))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Name of the person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                    
        else if($("#actionTaken").val()=='handover' && $("#personRelation").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Relation with child");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if($("#actionTaken").val()=='handover' && (!specialchar.test($("#personRelation").val())))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Relation with child");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                                      
        else if($("#actionTaken").val()=='handover' && $("#personContact").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Contact Number of person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && (!phonenumber_only.test($("#personContact").val())))
        {
            $dialog.html("Sorry! only digits are allowed in Contact Number of person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && $("#handoverPersonaddress").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Address of the person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && (!specialchar.test($("#handoverPersonaddress").val())))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Address of the person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                              
        else if($("#actionTaken").val()=='otherstate' && $("#state").val()==1)
        {
            $dialog.html("Sorry! Selected State is not valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && $("#officerHome").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Designation of the Officer in other State Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && (!specialchar.test($("#officerHome").val())))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Designation of the Officer in other State Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                       
        else if($("#actionTaken").val()=='otherstate' && $("#homenameOtherstate").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Name of the Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && (!specialchar.test($("#homenameOtherstate").val())))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Name of the Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && $("#addressOtherstate").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Address of the Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#actionTaken").val()=='otherstate' && (!specialchar.test($("#addressOtherstate").val())))
        {
            $dialog.html("Sorry! Special Characters are not Address of the Home");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                             
        else if($("#cwcJjbNo").val().length<1)
        {
            $dialog.html(" Sorry! Please Enter CWC/JJB order no ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbNo").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in CWC/JJB order no");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#datepicker").val().length<1)
        {
            $dialog.html("please Enter the CWC/JJB order Date");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#datepicker1").val().length<1)
        {
            $dialog.html("please Enter the Date of Discharge ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
              
        else if($("#remarks").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Remarks data");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#remarks").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Remarks");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }      
                
              
        else
        {     
            $("#childIdToBeTransDis_span").html($("#childIdToBeTransDis").val());
            $("#actionTaken_span").html($("#actionTaken").val());
            $("#userDistrictId_span").html($("#userDistrictId").val());
            $("#transHomeId_span").html($("#transHomeId").val());
            $("#handoverPersonName_span").html($("#handoverPersonName").val());
            $("#personRelation_span").html($("#personRelation").val());
            $("#personContact_span").html($("#personContact").val());
            $("#handoverPersonaddress_span").html($("#handoverPersonaddress").val());
            $("#state_span").html($("#state").val());
            $("#officerHome_span").html($("#officerHome").val());
            $("#homenameOtherstate_span").html($("#homenameOtherstate").val());
            $("#addressOtherstate_span").html($("#addressOtherstate").val());
            $("#cwcJjbNo_span").html($("#cwcJjbNo").val());
            $("#cwcJjbOrderDate_span").html(document.dischargeForm.cwcJjbOrderDate.value.toString());
            $("#dateOfDischarge_span").html(document.dischargeForm.dateOfDischarge.value.toString());
            $("#remarks_span").html($("#remarks").val());
            // $("#_span").html($("#").val());
                          
            document.getElementById('dialog-form_Discharge_preview').style.visibility='visible';
            $('#dialog-form_Discharge_preview').dialog('open');
            return false;
        }
    });
});






