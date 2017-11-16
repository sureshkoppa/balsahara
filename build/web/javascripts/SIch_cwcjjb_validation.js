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

    $( "#dialog-form_ch_cwcjjb_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.sicd1.submit();
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


    $('form#sicd1').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var specialchar= /^[^<>%$]*$/;
         var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                     
        /* if($("#childProfileId").val()==1)
                        {
                            $dialog.html("select Profile ID");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        } */
                        
        if($("#cwcJjbOrderNo").val().length<1)
        {
            $dialog.html("Sorry! Please Enter CWC or JJB Number");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbOrderNo").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in CWC or JJB Number");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#datepicker1").val().length<1)
        {
            $dialog.html("Sorry! Please Enter ordered date");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!datepattern.test($("#datepicker1").val()))
        {

            $dialog.html("Sorry! Please enter proper order date");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        
        else if($("#undersection").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Undersection ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#undersection").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Undersection data");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#natureOffence").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Nature of Offence");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#natureOffence").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Nature of Offence");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#childName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Child Name ");
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

            $dialog.html("Sorry! Special Characters are not allowed in child surname");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
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

            $dialog.html("Sorry! Special Characters are not allowed in FatherName ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                              
        else if($("#datepicker").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Date of Birth");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
          else if(!datepattern.test($("#datepicker").val()))
        {

            $dialog.html("Sorry! Please enter proper date of birth");
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

            $dialog.html("Sorry! Special Characters are not allowed in Specify the Religion ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }     
            
        else if($("#caste").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Caste");
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
                        
        else if($("#age").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Age");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#age").val())))
        {

            $dialog.html("Sorry! please enter age between 0-99");
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
        else if($("#addrParents").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Permanent Address");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#addrParents").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Permanent Address");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#presentAddress").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Address before taking charge");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#presentAddress").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Address before taking charge");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#previousInstiDetails").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Previous Institutional Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#previousInstiDetails").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Previous Institutional Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                    
        else
        {       
                                                             
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#cwcJjbOrderNo_span").html($("#cwcJjbOrderNo").val());
            $("#orderDate_String_span").html(document.sicd1.orderDate_String.value.toString());
            $("#undersection_span").html($("#undersection").val());
            $("#natureOffence_span").html($("#natureOffence").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#fatherName_span").html($("#fatherName").val());
            $("#dob_String_span").html(document.sicd1.dob_String.value.toString());
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#age_span").html($("#age").val());
            $("#gender_span").html($("#gender").val());
            $("#addrParents_span").html($("#addrParents").val());
            $("#presentAddress_span").html($("#presentAddress").val());
            $("#previousInstiDetails_span").html($("#previousInstiDetails").val());
            document.getElementById('dialog-form_ch_cwcjjb_preview').style.visibility='visible';
            $('#dialog-form_ch_cwcjjb_preview').dialog('open');
            return false;
        }
    });
});




