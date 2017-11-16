/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CWCMeetingsminutes" ).dialog({
        autoOpen: false,
        height: 400,
        width: 600,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.cwcmeets.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( "#cwcmeetings_span tbody" ).html("");
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            $( "#cwcmeetings_span tbody" ).html("");
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
                $( "#cwcmeetings_span tbody" ).html("");
                $dialog.dialog('close');
            }
        }
    });
    $('form#cwcmeets').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    
        if($("#datepicker").val().length<1)
        {
            $dialog.html("Please select Date of Meeting");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!datepattern.test($("#datepicker").val()))
        {
            $dialog.html("Sorry! please Enter proper  Date of meeting");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#venue").val().length<1)
        {
            $dialog.html("Please enter Venue of Meeting");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#venue").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Venue of Meeting");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#noOfMembers").val().length<1)
        {
            $dialog.html("Please Specify Number of Members");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if((!Digits_only.test($("#noOfMembers").val())))
        {

            $dialog.html("Sorry! only enter Digits");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(document.getElementById('CWCMeet').rows.length>1)
        {
            $("#dateofcwcmeeting_span").html(document.getElementById('datepicker').value)+"<br/>"
            $("#venue_span").html(document.getElementById('venue').value)+"<br/>"
            $("#noOfMembers_span").html(document.getElementById('noOfMembers').value)+"<br/>"
            $("#designation_span").html(document.getElementById('designation').value)+"<br/>"
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('CWCMeet').rows.length-1;i++)
            {
                if(document.getElementById('CWCMeet').rows.length==2)
                {
                    if(document.cwcmeets.childProfileId_cwc.value==1)
                    {
                        $dialog.html("Please Select Child ProfileId");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.cwcmeets.observations.value.toString().length<1)
                    {
                        $dialog.html("Please Enter Observations");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                       
                    else if(!specialchar.test(document.cwcmeets.observations.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Observations");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                                        
                    else if(document.cwcmeets.actiontobeTaken.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Action to be taken");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.cwcmeets.actiontobeTaken.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Action to be taken");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.followUp.value.toString()<1)
                    {
                        $dialog.html("Please Enter Follow up details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.followUp.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Follow up details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.orderIssued.value==1)
                    {
                        $dialog.html("Please Select Order Issued");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(document.cwcmeets.cwcJjbOrderNo.value.toString()<1)
                    {
                        $dialog.html("Please Enter CWC/JJB Order Number");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.cwcJjbOrderNo.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in  CWC/JJB Order Number");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.remarks.value.toString()<1)
                    {
                        $dialog.html("Please Enter Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                     else if(!specialchar.test(document.cwcmeets.remarks.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else
                    {
                        $( "#cwcmeetings_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.cwcmeets.childProfileId_cwc.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.observations.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.actiontobeTaken.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.followUp.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.orderIssued.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.cwcJjbOrderNo.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.remarks.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                   // alert('i am here')
                     if(document.cwcmeets.childProfileId_cwc[i].value==1)
                    {
                        $dialog.html("Please Select Child ProfileId");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.cwcmeets.observations[i].value.toString().length<1)
                    {
                        $dialog.html("Please Enter Observations");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                       
                    else if(!specialchar.test(document.cwcmeets.observations[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Observations");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                                        
                    else if(document.cwcmeets.actiontobeTaken[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Action to be taken");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.cwcmeets.actiontobeTaken[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Action to be taken");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.followUp[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter Follow up details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.followUp[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Follow up details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.orderIssued[i].value==1)
                    {
                        $dialog.html("Please Select Order Issued");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(document.cwcmeets.cwcJjbOrderNo[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter CWC/JJB Order Number");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.cwcJjbOrderNo[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in  CWC/JJB Order Number");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.remarks[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                     else if(!specialchar.test(document.cwcmeets.remarks[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }   
                    else
                    {
                        $( "#cwcmeetings_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.cwcmeets.childProfileId_cwc[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.observations[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.actiontobeTaken[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.followUp[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.orderIssued[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.cwcJjbOrderNo[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.remarks[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
           
                }
            }
            document.getElementById('dialog-form_CWCMeetingsminutes').style.visibility='visible';
            $('#dialog-form_CWCMeetingsminutes').dialog('open');
            return false;
        }
    });
});





