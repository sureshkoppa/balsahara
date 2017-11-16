/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHEmployment" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chemployee.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( "#ch_Employment_span tbody" ).html("");
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            $( "#ch_Employment_span tbody" ).html("");
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
                $( "#ch_Employment_span tbody" ).html("");
                $dialog.dialog('close');
            }
        }
    });
    $('form#chemployee').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
                    
        if($("#childProfileId").val()==1)
        {
            $dialog.html("Please select Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                   
        else if(document.getElementById('CHE').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('CHE').rows.length-1;i++)
            {
                if(document.getElementById('CHE').rows.length==2)
                {
                    if(document.chemployee.detailsEmployment.value==1)
                    {
                        $dialog.html("Please Select Details of employment");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.chemployee.duration.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Duration");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chemployee.duration.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Duration");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }                                  
                                        
                    else if(document.chemployee.wagesEarned.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Wages earned");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chemployee.wagesEarned.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Wages earned");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }      
                    else if(document.chemployee.experienceatwork.value==1)
                    {
                        $dialog.html("Please Select Details of Experience at work");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }                                                                              
                    else
                    {
                        $( "#ch_Employment_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chemployee.detailsEmployment.value.toString() + "</td>" +
                            "<td>" + document.chemployee.duration.value.toString() + "</td>" +
                            "<td>" + document.chemployee.wagesEarned.value.toString() + "</td>" +
                            "<td>" + document.chemployee.experienceatwork.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                    if(document.chemployee.detailsEmployment[i].value==1)
                    {
                        $dialog.html("Please Select Details of employment");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.chemployee.duration[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Duration");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                      else if(!specialchar.test(document.chemployee.duration[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Duration");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }                                                       
                                        
                    else if(document.chemployee.wagesEarned[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Wages earned");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chemployee.wagesEarned[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Wages earned");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }   
                    else if(document.chemployee.experienceatwork[i].value==1)
                    {
                        $dialog.html("Please Select Details of Experience at work");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }                                                                              
                    else
                    {
                        $( "#ch_Employment_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chemployee.detailsEmployment[i].value.toString() + "</td>" +
                            "<td>" + document.chemployee.duration[i].value.toString() + "</td>" +
                            "<td>" + document.chemployee.wagesEarned[i].value.toString() + "</td>" +
                            "<td>" + document.chemployee.experienceatwork[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
            }
            document.getElementById('dialog-form_CHEmployment').style.visibility='visible';
            $('#dialog-form_CHEmployment').dialog('open');
            return false;
        }
    });
});



