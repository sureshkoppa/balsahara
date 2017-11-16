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
                                          document.chaftereducation.submit();
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
		   $( "#dialog-form_CHAfterAdmEdu" ).dialog({
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
        $('form#chaftereducation').submit(function(){
             
                var Digits_only=/^[0-9]{1,3}$/;
                var Digits_year=/^[0-9]{4}$/
                var specialchar= /^[^<>%$]*$/;
                
                if($("#childProfileId").val()==1)
                {
                    $dialog.html("<s:text name="js.err.plsSelChiProfID"/>");
                    $dialog.parent().addClass( "ui-state-error" );
                    $dialog.dialog('open');
                    return false;
                }
  
                else if(document.getElementById('CHAE').rows.length>1)
                {
                       $("#childProfileId_span").html(document.getElementById('childProfileId').value)
                       for(i=0;i< document.getElementById('CHAE').rows.length-1;i++)
                       {
                            if(document.getElementById('CHAE').rows.length==2)
                            {
                                    if(document.chaftereducation.yearAdmission.value.toString()<1)
                                    {
                                        $dialog.html("<s:text name="js.err.plsEntYrAdm"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                    }
                                    else  if(!Digits_year.test(document.chaftereducation.yearAdmission.value))
                                    {
                                        $dialog.html("<s:text name="js.err.plsEntPropYrAdm"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                    }
                                    else if(document.chaftereducation.typeAdmission.value==1)
                                    {
                                        $dialog.html("<s:text name="js.err.plsSelTypeOfAdm"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                    }
                                     else if(document.chaftereducation.nameAdmission.value.toString()<1)
                                    {
                                        $dialog.html("<s:text name="js.err.plsEntNameClsOfTrade"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                    }
                                     else if(!specialchar.test(document.chaftereducation.nameAdmission.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAClsNameOfTrd"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                   else if(!specialchar.test(document.chaftereducation.detailsAdmission.value))
                    {

                        $dialog.html("<s:text name="js.err.splNADetIfReq"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                     else if(!specialchar.test(document.chaftereducation.proficiency.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAProfOrRes"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    } 
                    else if(!Digits_year.test(document.chaftereducation.yearCompletion.value))
                    {
                        $dialog.html("<s:text name="js.err.plsEntPropYrCompl"/> ");
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
                                        $dialog.html("<s:text name="js.err.plsEntYrAdmi+1"><s:param>"+(i+1)+"</s:param></s:text>"); 
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                     }
                                     else  if(!Digits_year.test(document.chaftereducation.yearAdmission[i].value))
                                     {
                                        $dialog.html("<s:text name="js.err.plsEntPropYrAdmi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                     }
                                     else if(document.chaftereducation.typeAdmission[i].value==1)
                                     {
                                        $dialog.html("<s:text name="js.err.plsEntYrAdmi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                                        $dialog.html("<s:text name="js.err.plsSelTypeOfAdmi+1"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                     }
                                     else if(document.chaftereducation.nameAdmission[i].value.toString()<1)
                                     {
                                        $dialog.html("<s:text name="js.err.plsEntClsNmTri+1"><s:param>"+(i+1)+"</s:param></s:text>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;
                                        break;
                                     }
                                      else if(!specialchar.test(document.chaftereducation.nameAdmission[i].value))
                                      {
                                            $dialog.html("<s:text name="js.err.splNAClsNmTri+1"><s:param>"+(i+1)+"</s:param></s:text>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;

                                     }
                                      else if(!specialchar.test(document.chaftereducation.detailsAdmission[i].value))
                                    {
                                        $dialog.html("<s:text name="js.err.splNADetIfReqi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }  
                                     else if(!specialchar.test(document.chaftereducation.proficiency[i].value))
                                    {
                                        $dialog.html("<s:text name="js.err.splNAProfOrResi+1"><s:param>"+(i+1)+"</s:param></s:text>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }
                                    else if(!Digits_year.test(document.chaftereducation.yearCompletion[i].value))
                                    {
                                        $dialog.html("<s:text name="js.err.plsEntPropYrComi+1"><s:param>"+(i+1)+"</s:param></s:text>");
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




