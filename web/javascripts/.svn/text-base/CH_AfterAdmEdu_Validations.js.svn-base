/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHAfterAdmEdu" ).dialog({
        autoOpen: false,
        height: 400,
        width: 750,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.chaftereducation.submit();
                    $( this ).dialog( "close" );
                }
            },
            Cancel: function() {
                $( "#ch_AfterAdmEdu_span tbody" ).html("");
                $( this ).dialog( "close" );
            }
        },
        close: function() {
            $( "#ch_AfterAdmEdu_span tbody" ).html("");
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
                $( "#ch_AfterAdmEdu_span tbody" ).html("");
                $dialog.dialog('close');
            }
        }
    });
    $('form#chaftereducation').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var Digits_year=/^[0-9]{4}$/
        var specialchar= /^[^<>%$]*$/;
                    
        if($("#childProfileId").val()==1)
        {
            $dialog.html("Please select Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                   
        else if(document.getElementById('CHAE').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('CHAE').rows.length-1;i++)
            {
                if(document.getElementById('CHAE').rows.length==2)
                {
                    if(document.chaftereducation.yearAdmission.value.toString()<1)
                    {
                        $dialog.html("Please Enter year of Admission");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else  if(!Digits_year.test(document.chaftereducation.yearAdmission.value))
                    {
                        $dialog.html("Please Enter Proper year of Admission");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                    
                    else if(document.chaftereducation.typeAdmission.value==1)
                    {
                        $dialog.html("Please select Type of Admission");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                                                        
                                        
                    else if(document.chaftereducation.nameAdmission.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Class / Name of Trade");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chaftereducation.nameAdmission.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Class / Name of Trade");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chaftereducation.detailsAdmission.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Details(if required) ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.chaftereducation.detailsAdmission.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Details(if required)");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chaftereducation.proficiency.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Proficiency or Result");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.chaftereducation.proficiency.value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Proficiency or Result)");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chaftereducation.yearCompletion.value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Year of Completion");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!Digits_year.test(document.chaftereducation.yearCompletion.value))
                    {
                        $dialog.html("Sorry! Please Enter proper Year of Completion");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                    else
                    {
                        $( "#ch_AfterAdmEdu_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chaftereducation.yearAdmission.value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.typeAdmission.value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.nameAdmission.value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.detailsAdmission.value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.proficiency.value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.yearCompletion.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                     if(document.chaftereducation.yearAdmission[i].value.toString()<1)
                    {
                        $dialog.html("Please Enter year of Admission in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else  if(!Digits_year.test(document.chaftereducation.yearAdmission[i].value))
                    {
                        $dialog.html("Please Enter Proper year of Admission in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                    
                    else if(document.chaftereducation.typeAdmission[i].value==1)
                    {
                        $dialog.html("Please select Type of Admission in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                                                        
                                        
                    else if(document.chaftereducation.nameAdmission[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Class / Name of Trade in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chaftereducation.nameAdmission[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Class / Name of Trade in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chaftereducation.detailsAdmission[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Details(if required) in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.chaftereducation.detailsAdmission[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Details(if required) in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chaftereducation.proficiency[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Proficiency or Result in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.chaftereducation.proficiency[i].value))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Proficiency or Result) in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chaftereducation.yearCompletion[i].value.toString()<1)
                    {
                        $dialog.html("Sorry! Please Enter Year of Completion in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!Digits_year.test(document.chaftereducation.yearCompletion[i].value))
                    {
                        $dialog.html("Sorry! Please Enter proper Year of Completion in "+(i+1)+ " row");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else
                    {
                        $( "#ch_AfterAdmEdu_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chaftereducation.yearAdmission[i].value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.typeAdmission[i].value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.nameAdmission[i].value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.detailsAdmission[i].value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.proficiency[i].value.toString() + "</td>" +
                            "<td>" + document.chaftereducation.yearCompletion[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
            }
            document.getElementById('dialog-form_CHAfterAdmEdu').style.visibility='visible';
            $('#dialog-form_CHAfterAdmEdu').dialog('open');
            return false;
        }
    });
});




