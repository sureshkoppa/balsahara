<%-- 
    Document   : SIChildFamilyMember_validation
    Created on : Mar 5, 2013, 4:40:09 PM
    Author     : sweta
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="global.button.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="global.button.clear"/>").text();
			    var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.sifmd1.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>  
    
    <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>
             
    $( "#dialog-form_ch_familymember_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 500,
        modal: true,
        buttons: preButL10n,
        close: function() {
            $( "#chfm_span tbody" ).html("");
            allFields.val("").removeClass( "ui-state-error" );
        }
    });
    var $dialog = $('<div></div>')
    .html('This dialog will show every time!')
    .dialog({
        autoOpen: false,
        height: 180,
        width: 250,
        modal: true,
        title: 'ALERT'.fontcolor('#FF0000'),
        buttons: errButL10n
    });
    $('form#sifmd1').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var specialchar= /^[^<>%$]*$/;
                    
        if(document.getElementById('FMD').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('child_id').value);
            $( "#chfm_span tbody" ).html("");
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i<document.getElementById('FMD').rows.length-1;i++)
            {
                if(document.getElementById('FMD').rows.length==2)
                {
                    if(document.sifmd1.relation.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntRelation"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.relation.value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemRelationInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.name.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntName"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.name.value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemNameInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.age.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntAge"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                    else if(!Digits_only.test(document.sifmd1.age.value))
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemAgeInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.sifmd1.health.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntHealth"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.health.value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemHealthInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.occupation.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntOccuDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.occupation.value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemOccuDetInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.disability.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntDisaDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.disability.value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemDisaDetInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.habits.value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntHabits"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.sifmd1.habits.value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemHabitsInv"/>");
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
                        $dialog.html("<s:text name="global.error.SIChFamMemEntRelation"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.relation[i].value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemRelationInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.name[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntName"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.name[i].value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemNameInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.age[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntAge"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                    else if(!Digits_only.test(document.sifmd1.age[i].value))
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemAgeInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.sifmd1.health[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntHealth"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.health[i].value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemHealthInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }    
                    else if(document.sifmd1.occupation[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntOccuDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.occupation[i].value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemOccuDetInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.disability[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntDisaDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.sifmd1.disability[i].value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemDisaDetInv"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.sifmd1.habits[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="global.error.SIChFamMemEntHabits"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.sifmd1.habits[i].value))
                    {

                        $dialog.html("<s:text name="global.error.SIChFamMemHabitsInv"/>");
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



