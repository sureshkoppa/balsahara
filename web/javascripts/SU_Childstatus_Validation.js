/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_Childstatus_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.su_childstatus.submit();
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

    $('form#su_childstatus').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
         var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        
       	 var startDate= new Date($("#datepicker1").val());
        var endDate = new Date($("#datepicker2").val());  
         
                    
        // alert($("#childProfileId").val()==1);
        if($("#childProfileId").val()==1)
        {
            $dialog.html("Please select Child Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#type").val()==1)
        {
            $dialog.html("Please select case");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#type").val()=='runaway' && $("#datepicker").val().length<1)
        {
            $dialog.html("please select date on which Child Runaway");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='runaway' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! selected date on which Child Runaway is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
         else if($("#type").val()=='missing' && $("#datepicker").val().length<1)
        {
            $dialog.html("please select date on which Child Missing");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='missing' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! selected date on which Child missing is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#type").val()=='missing' && $("#datepicker3").val().length<1)
        {
            $dialog.html("please select date of FIR filed");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='missing' && !datepattern.test($("#datepicker3").val())))
        {
            $dialog.html("Sorry!Date of FIR is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='runaway' && $("#datepicker3").val().length<1)
        {
            $dialog.html("please select date of FIR filed");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='runaway' && !datepattern.test($("#datepicker3").val())))
        {
            $dialog.html("Sorry!Date of FIR is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }            
        else if(($("#type").val()=='shortleave' && $("#datepicker1").val().length<1))
        {
            $dialog.html("please select from date on which Child went to short leave");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            else if(($("#type").val()=='shortleave' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("Sorry! selected from date on which Child Child went to short leave is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(($("#type").val()=='shortleave' && $("#datepicker2").val().length<1))
        {
            $dialog.html("please select to date on which Child expected to return from short leave");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(($("#type").val()=='shortleave' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("Sorry! selected To date on which Child expected to return from short leave is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
               
      else if(startDate > endDate)
       {
            $dialog.html("To Date must be greater than (or) equal to From Date");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
                         
       }          
        
         else if($("#type").val()=='residential' && $("#datepicker1").val().length<1)
        {
            $dialog.html("please select from date on which Child went to resedential school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(($("#type").val()=='residential' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("Sorry! selected From date on which Child went to resedential school is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='residential' && $("#datepicker2").val().length<1 )
        {
            $dialog.html("please select to date on which Child expected to return from resedential school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(($("#type").val()=='residential' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("Sorry! selected To date on which Child expected to return from resedential school is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#type").val()=='runawaycameback' && $("#datepicker").val().length<1 )
        {
            $dialog.html("please select date on which Child cameback after runaway");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       else if(($("#type").val()=='runawaycameback' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! selected date on which Child cameback after runaway is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#type").val()=='missingfound' && $("#datepicker").val().length<1 )
        {
            $dialog.html("please select date on which missing Child found");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='missingfound' && !datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! selected date on which missing Child found is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#type").val()=='shortleavereturn' && $("#datepicker1").val().length<1 )
        {
            $dialog.html("please select date on which Child went to short leave");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='shortleavereturn' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("Sorry! selected date on which Child went to short leave is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#type").val()=='shortleavereturn' && $("#datepicker2").val().length<1 )
        {
            $dialog.html("please select date on which Child returned from short leave");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='shortleavereturn' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("Sorry! selected date on which Child returned from short leave is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        
         else if($("#type").val()=='residentialreturned' && $("#datepicker1").val().length<1 )
        {
            $dialog.html("please select date on which Child went to residential school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='residentialreturned' && !datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("Sorry! selected date on which Child went to residential school is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#type").val()=='residentialreturned' && $("#datepicker2").val().length<1 )
        {
            $dialog.html("please select date on which Child returned from residential school");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(($("#type").val()=='residentialreturned' && !datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("Sorry! selected date on which Child returned from residential school is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                                 
        else if($("#reason").val().length<1)
        {
            $dialog.html(" Sorry! Please Enter reason (or) FIR Details ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#reason").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in reason");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        
        else if($("#address").val().length<1)
        {
            $dialog.html("please Enter Residential Address ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#address").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Residential Address");
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
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#type_span").html($("#type").val());
            $("#missingdate_string_span").html(document.su_childstatus.missingdate_string.value.toString());
            $("#firdate_string_span").html(document.su_childstatus.date_fir.value.toString());
            $("#fromdate_string_span").html(document.su_childstatus.fromdate_string.value.toString());
            $("#todate_string_span").html(document.su_childstatus.todate_string.value.toString());
            $("#reason_span").html($("#reason").val());
            $("#address_span").html($("#address").val());
            $("#remarks_span").html($("#remarks").val());
            document.getElementById('dialog-form_Childstatus_preview').style.visibility='visible';
            $('#dialog-form_Childstatus_preview').dialog('open');
            return false;
        }
    });
});







