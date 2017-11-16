/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_RHOH_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    //anupam added this on 17-04-2012 START
                    progressCircleShow2();
                    //anupam added this on 17-04-2012 END
                    document.RHAdmission.submit(); 
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

    $('form#RHAdmission').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        var specialchar= /^[^<>%$]*$/;
        
        if($("#childName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Child Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in childname");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
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

            $dialog.html("Sorry! Special Characters are not allowed in child surname ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
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

            $dialog.html("Sorry! enter proper Age having digits of max length three");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        
         else if($('input[name="gender"]:checked').length===0)
        {
             $dialog.html("Please Select Gender");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          
          
        else if($("#identificationMarks").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Identification Marks ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#identificationMarks").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Identification Marks");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#childNature").val()==1)
        {
            $dialog.html("Please select the Child Nature");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
                        
        else if($("#childNature").val()=='Others'&& $("#childNatureOthers").val().length<1)
        {
            $dialog.html("Please Enter child Nature Others data");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#childNatureOthers").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in child Nature Others");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        
         else if($('input[name="disabled"]:checked').val()==='Y' && $("#natureDisability").val().length<1 )
        {
           
             $dialog.html("Please Enter Nature of Disability");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if(!specialchar.test($("#natureDisability").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Nature of Disability");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        
        else if($("#datepicker").val().length<1)
        {
           //  alert($('input[name="disabled"]:checked').val());
            $dialog.html("Sorry! Please Enter Date of Admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
           $dialog.html("Sorry! Entered Date of Admission is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        
        else if($("#admThrough").val()==1)
        {
            $dialog.html("Sorry! Please select Admitted by");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#admThrough").val()=='AuthorizedPerson' && $("#nameAuthPer").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Name of the Authorized Person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#nameAuthPer").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Name of the Authorized Person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
       /* 
        else if($("#placeOfCharge").val().length<1)
        {
            $dialog.html("Sorry! Please Enter place Of Charge");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#placeOfCharge").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in place Of Charge");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        */
        else if($("#cwcJjbOrderNo").val().length<1)
        {
            $dialog.html("Sorry! Please Enter CWC/JJB Order Number");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbOrderNo").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in CWC/JJB Order Number");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#datepicker1").val().length<1)
        {
            $dialog.html("Sorry! Please Enter CWC/JJB Order Date");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if((!datepattern.test($("#datepicker1").val())))
        {
           $dialog.html("Sorry! Entered CWC/JJB Order Date is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        
        
        else if($("#datepicker2").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Date on which the child was produced before JJB/CWC");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker2").val())))
        {
           $dialog.html("Sorry! Entered Date on which the child was produced before JJB/CWC is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
                        
                        
        else if($("#producedBy").val().length<1)
        {
            $dialog.html("Sorry! Please Enter By Whom the Child was produced before CWC/JJB");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#producedBy").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in produced before CWC/JJB");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
                        
        else if($("#propertyPossessed").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Details of property");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#propertyPossessed").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Details of Property ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#reasonAdm").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Reason for admission (incase of conflict with law)");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonAdm").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Reason for admission ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        /*
        else if($("#periodStay").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Period of Stay");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#periodStay").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Period of Stay ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        */
        else if($("#datepicker4").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Probable Date of discharge");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!datepattern.test($("#datepicker4").val())))
        {
           $dialog.html("Sorry! Entered Probable Date of discharge is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#recommCaseworker").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Recommendations of CaseWorker");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#recommCaseworker").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Recommendations of CaseWorker ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#recommCwc").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Recommendations of CWC");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#recommCwc").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Recommendations of CWC ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
                                              
        else
        {   
             var gender;
                            
                            if(document.RHAdmission.gender[0].checked == true )
                              {
                                 gender = document.RHAdmission.gender[0].value;
                              }
                            else
                              {
                                  gender = document.RHAdmission.gender[1].value;
                              }
            
            var disability;
                            
                            if(document.RHAdmission.disabled[0].checked == true )
                              {
                                 disability = document.RHAdmission.disabled[0].value;
                              }
                            else
                              {
                                  disability = document.RHAdmission.disabled[1].value;
                              }
            
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#age_span").html($("#age").val());
            $("#gender_span").html(gender);
            $("#identificationMarks_span").html($("#identificationMarks").val());
            $("#childNature_span").html($("#childNature").val());
            $("#disabled_span").html(disability);
            $("#natureDisability_span").html($("#natureDisability").val());
            $("#dateTimeAdm_String_span").html(document.RHAdmission.dateTimeAdm_String.value.toString());
            $("#admThrough_span").html($("#admThrough").val());
            $("#nameAuthPer_span").html($("#nameAuthPer").val());
            $("#placeOfCharge_span").html($("#placeOfCharge").val());
            $("#cwcJjbOrderNo_span").html($("#cwcJjbOrderNo").val());
            $("#orderDate_String_span").html(document.RHAdmission.orderDate_String.value.toString());
            $("#intCwcJjbDate_String_span").html(document.RHAdmission.intCwcJjbDate_String.value.toString());
            $("#producedBy_span").html($("#producedBy").val());
            $("#propertyPossessed_span").html($("#propertyPossessed").val());
            $("#reasonAdm_span").html($("#reasonAdm").val());
            $("#periodStay_span").html($("#periodStay").val());
            $("#probableDischargeDate_String_span").html(document.RHAdmission.probableDischargeDate_String.value.toString());
            $("#recommCaseworker_span").html($("#recommCaseworker").val());
            $("#recommCwc_span").html($("#recommCwc").val());
            document.getElementById('dialog-form_RHOH_preview').style.visibility='visible';
            $('#dialog-form_RHOH_preview').dialog('open');
            return false;
        }
    });
});




