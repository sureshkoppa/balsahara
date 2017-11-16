/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_ch_familymember_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 500,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.sifmd1.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( "#chfm_span tbody" ).html("");
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            $( "#chfm_span tbody" ).html("");
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
                $( "#chfm_span tbody" ).html("");
                $dialog.dialog('close');
            }
        }
    });
    $('form#sifmd1').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var specialchar= /^[^<>%$]*$/;
                    
        if(document.getElementById('FMD').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('child_id').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('FMD').rows.length-1;i++)
            {
                if(document.getElementById('FMD').rows.length==2)
                {
                    if(document.sifmd1.relation.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Relation");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.relation.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Relation");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.name.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Name");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.name.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Name");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.age.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Age");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                    else if(!Digits_only.test(document.sifmd1.age.value))
                    {
                        $dialog.html("Sorry! Please Enter proper Age ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.sifmd1.health.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Health");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.health.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Health");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.occupation.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Occupation Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.occupation.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Occupation");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.disability.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Disability Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.disability.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Disability Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.habits.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Habits");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.sifmd1.habits.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Habits");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                                        
                                        
                    else
                    {
                        $( "#chfm_span tbody" ).append( "<tr>" +
                            "<td>" + (document.getElementById('FMD').rows.length-1) + "</td>" +
                            "<td>" + document.sifmd1.relation.value.toString() + "</td>" +
                            "<td>" + document.sifmd1.name.value.toString() + "</td>" +
                            "<td>" + document.sifmd1.age.value + "</td>" +
                            "<td>" + document.sifmd1.health.value.toString() + "</td>" +
                            "<td>" + document.sifmd1.occupation.value.toString() + "</td>" +
                            "<td>" + document.sifmd1.disability.value.toString() + "</td>" +
                            "<td>" + document.sifmd1.habits.value.toString() + "</td>" +
                            "<td>" + document.sifmd1.wages.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                    if(document.sifmd1.relation[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Relation in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.relation[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Relation in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.name[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Name in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.name[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Name in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.age[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Age in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                    else if(!Digits_only.test(document.sifmd1.age[i].value))
                    {
                        $dialog.html("Sorry! Please Enter proper Age in "+(i+1)+ " row ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.sifmd1.health[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Health in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.health[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Health in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.occupation[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Occupation Details in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.occupation[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Occupation in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.disability[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Disability Details in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.disability[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Disability Details in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.habits[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Habits in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.sifmd1.habits[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Habits in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }   
                    else
                    {
                        $( "#chfm_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.sifmd1.relation[i].value.toString() + "</td>" +
                            "<td>" + document.sifmd1.name[i].value.toString() + "</td>" +
                            "<td>" + document.sifmd1.age[i].value + "</td>" +
                            "<td>" + document.sifmd1.health[i].value.toString() + "</td>" +
                            "<td>" + document.sifmd1.occupation[i].value.toString() + "</td>" +
                            "<td>" + document.sifmd1.disability[i].value.toString() + "</td>" +
                            "<td>" + document.sifmd1.habits[i].value.toString() + "</td>" +
                            "<td>" + document.sifmd1.wages[i].value.toString() + "</td>" +
                            "</tr>" );
                    }
                }
            }
            document.getElementById('dialog-form_ch_familymember_preview').style.visibility='visible';
            $('#dialog-form_ch_familymember_preview').dialog('open');
            return false;
        }
    });
});


