/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHFamilyCrime" ).dialog({
        autoOpen: false,
        height: 400,
        width: 700,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chfamilycrime.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( "#ch_FamilyCrime_span tbody" ).html("");
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            $( "#ch_FamilyCrime_span tbody" ).html("");
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
                $( "#ch_FamilyCrime_span tbody" ).html("");
                $dialog.dialog('close');
            }
        }
    });
    $('form#chfamilycrime').submit(function(){
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
                   
        else if(document.getElementById('CHFC').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('CHFC').rows.length-1;i++)
            {
                if(document.getElementById('CHFC').rows.length==2)
                {
                    if(document.chfamilycrime.name.value.toString()<1)
                    {
                        $dialog.html("Please Enter name of family member");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.name.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in name of family member");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chfamilycrime.relationship_crime.value==1)
                    {
                        $dialog.html("Please Select Relationship");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                                                        
                                        
                    else if(document.chfamilycrime.natureCrime.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Nature of crime");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.natureCrime.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Nature of crime");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.arrestMade.value.toString()<1)
                    {
                        $dialog.html("Please Enter Arrest if any made");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.arrestMade.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Arrest if any made");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.periodConfinement.value.toString()<1)
                    {
                        $dialog.html("Please Enter Period of confinement");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                     else if(!specialchar.test(document.chfamilycrime.periodConfinement.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Period of confinement");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.punishment.value.toString()<1)
                    {
                        $dialog.html("Please Enter Punishment awarded");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                    else if(!specialchar.test(document.chfamilycrime.punishment.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Punishment awarded");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else
                    {
                        $( "#ch_FamilyCrime_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chfamilycrime.name.value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.relationship_crime.value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.natureCrime.value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.arrestMade.value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.periodConfinement.value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.punishment.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                    if(document.chfamilycrime.name[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter name of family member in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.name[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in name of family member in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chfamilycrime.relationship_crime[i].value==1)
                    {
                        $dialog.html("Please Select Relationship in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                                                        
                                        
                    else if(document.chfamilycrime.natureCrime[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Nature of crime in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.natureCrime[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Nature of crime in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.arrestMade[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter Arrest if any made in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.arrestMade[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Arrest if any made in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.periodConfinement[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter Period of confinement in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                     else if(!specialchar.test(document.chfamilycrime.periodConfinement[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Period of confinement in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.punishment[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter Punishment awarded in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                    else if(!specialchar.test(document.chfamilycrime.punishment[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Punishment awarded in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else
                    {
                        $( "#ch_FamilyCrime_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chfamilycrime.name[i].value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.relationship_crime[i].value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.natureCrime[i].value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.arrestMade[i].value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.periodConfinement[i].value.toString() + "</td>" +
                            "<td>" + document.chfamilycrime.punishment[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
            }
            document.getElementById('dialog-form_CHFamilyCrime').style.visibility='visible';
            $('#dialog-form_CHFamilyCrime').dialog('open');
            return false;
        }
    });
});





