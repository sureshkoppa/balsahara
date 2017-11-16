/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_ch_household" ).dialog({
        autoOpen: false,
        height: 400,
        width: 500,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chhousehold.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( "#ch_household_span tbody" ).html("");
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            $( "#ch_household_span tbody" ).html("");
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
                $( "#ch_household_span tbody" ).html("");
                $dialog.dialog('close');
            }
        }
    });
    $('form#chhousehold').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var specialchar= /^[^<>%$]*$/;
                   
        if($("#childProfileId").val()==1)
        {
            $dialog.html("Please select Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                   
        else if(document.getElementById('CHD').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('CHD').rows.length-1;i++)
            {
                if(document.getElementById('CHD').rows.length==2)
                {
                    if(document.chhousehold.nameRelative.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Name of the relative");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.nameRelative.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Name of the relative");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.relationship.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Relationship");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.relationship.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Relationship");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.age.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Age");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!Digits_only.test(document.chhousehold.age.value))
                    {
                        $dialog.html("Sorry! Please Enter proper Age ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.chhousehold.education.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Education details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.education.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in  Education details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.occupation.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Occupation Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.occupation.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Occupation Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.health.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Health Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chhousehold.health.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Health Details");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.handicap.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Handicap details if exist");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }  
                    else if(!specialchar.test(document.chhousehold.handicap.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Handicap details");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.income.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Income details if exist");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }     
                      else if(!specialchar.test(document.chhousehold.income.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Income details");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }                     
                                        
                    else
                    {
                        $( "#ch_household_span tbody" ).append( "<tr>" +
                            "<td>" + (document.getElementById('CHD').rows.length-1) + "</td>" +
                            "<td>" + document.chhousehold.nameRelative.value.toString() + "</td>" +
                            "<td>" + document.chhousehold.relationship.value.toString() + "</td>" +
                            "<td>" + document.chhousehold.age.value + "</td>" +
                            "<td>" + document.chhousehold.education.value.toString() + "</td>" +
                            "<td>" + document.chhousehold.occupation.value.toString() + "</td>" +
                            "<td>" + document.chhousehold.health.value.toString() + "</td>" +
                            "<td>" + document.chhousehold.handicap.value.toString() + "</td>" +
                            "<td>" + document.chhousehold.income.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                     if(document.chhousehold.nameRelative[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Name of the relative");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.nameRelative[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Name of the relative");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.relationship[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Relationship");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.relationship[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Relationship");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(!Digits_only.test(document.chhousehold.age[i].value))
                    {
                        $dialog.html("Sorry! Please Enter proper Age ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.chhousehold.education[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Education details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.education[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in  Education details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.occupation[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Occupation Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.occupation[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Occupation Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.health[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Health Details");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chhousehold.health[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Health Details");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.handicap[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Handicap details if exist");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }  
                    else if(!specialchar.test(document.chhousehold.handicap[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Handicap details");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.income[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Income details if exist");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }     
                      else if(!specialchar.test(document.chhousehold.income[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Income details");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }                
                                        
                    else
                    {
                        $( "#ch_household_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chhousehold.nameRelative[i].value.toString() + "</td>" +
                            "<td>" + document.chhousehold.relationship[i].value.toString() + "</td>" +
                            "<td>" + document.chhousehold.age[i].value + "</td>" +
                            "<td>" + document.chhousehold.education[i].value.toString() + "</td>" +
                            "<td>" + document.chhousehold.occupation[i].value.toString() + "</td>" +
                            "<td>" + document.chhousehold.health[i].value.toString() + "</td>" +
                            "<td>" + document.chhousehold.handicap[i].value.toString() + "</td>" +
                            "<td>" + document.chhousehold.income[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
            }
            document.getElementById('dialog-form_ch_household').style.visibility='visible';
            $('#dialog-form_ch_household').dialog('open');
            return false;
        }
    });
});


