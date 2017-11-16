<%@taglib prefix="s" uri="/struts-tags"%> 
<%--this file is used to validate and show preview for Add Category Register Form--%>

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="button.pre.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="button.pre.clear"/>").text();
		var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.chfamilycrime.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>      
             
             <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>      
             
            <%--for Preview Code start--%>           
		   $( "#dialog-form_CHFamilyCrime" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                             
				                allFields.val("").removeClass( "ui-state-error" );
			                  }
		    });
            <%--for Preview Code ends--%>    

            <%--for Error Code start--%>    			
            <%--this var $dialog is for displaying the error dialog box--%>
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
            <%--for Error Code ends--%>   
             $('form#chfamilycrime').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="js.err.selProfile"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                   
        else if(document.getElementById('CHFC').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i< document.getElementById('CHFC').rows.length-1;i++)
            {
                if(document.getElementById('CHFC').rows.length==2)
                {
                    if(document.chfamilycrime.name.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntNameOfFM"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.name.value))
                    {

                        $dialog.html("<s:text name="js.err.splNANameOfFM"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chfamilycrime.relationship_crime.value==1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelRelShip"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                                                        
                                        
                    else if(document.chfamilycrime.natureCrime.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelNatOfCri"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.natureCrime.value))
                    {

                        $dialog.html("<s:text name="js.err.splNANatOfCrime"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.arrestMade.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntArrIfAnyMade"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.arrestMade.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAArrIfMade"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.periodConfinement.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntPrdOfConfmnt"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                     else if(!specialchar.test(document.chfamilycrime.periodConfinement.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAPrdOfConfmnt"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.punishment.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntPunAwar"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                    else if(!specialchar.test(document.chfamilycrime.punishment.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAPunAwar"/>");
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
                        $dialog.html("<s:text name="js.err.plsEntNameOfFMi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.name[i].value))
                    {
                        $dialog.html("<s:text name="js.err.splNANameOfFMi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chfamilycrime.relationship_crime[i].value==1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelRelShipi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                                                        
                                        
                    else if(document.chfamilycrime.natureCrime[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntNatCrii+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.natureCrime[i].value))
                    {
                        $dialog.html("<s:text name="js.err.splNANatCrii+1"><s:param>"+(i+1)+"</s:param></s:text>"); 
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.arrestMade[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntArrIfAny"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chfamilycrime.arrestMade[i].value))
                    {
                        $dialog.html("<s:text name="js.err.splNAArrIfAnyi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.periodConfinement[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntPrdOfConfnmti+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                     else if(!specialchar.test(document.chfamilycrime.periodConfinement[i].value))
                    {
                        $dialog.html("<s:text name="js.err.splNAPrdOfConfnmti+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(document.chfamilycrime.punishment[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntPunAwari+1"><s:param>"+(i+1)+"</s:param></s:text>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                    else if(!specialchar.test(document.chfamilycrime.punishment[i].value))
                    {
                        $dialog.html("<s:text name="js.err.splNAPunAwai+1"><s:param>"+(i+1)+"</s:param></s:text>"); 
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





