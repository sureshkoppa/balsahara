<%-- 
    Document   : mgen_reg_javascript
    Created on : Aug 23, 2012, 4:40:56 PM
    Author     : sweta
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Medical General Register Form--%>
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
                                          document.mgen_reg.submit();
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
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>      
             

		$( "#dialog-form_mgen_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: preButL10n,
			close: function() {
				allFields.val("").removeClass( "ui-state-error" );
			}
		});
                <%--this variable sets display of dialog box for error message--%>
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

            <%--the folowing function is called when
             medical general register form is submitted--%>
                $('form#mgen_reg').submit(function(){
                    var res_state=0;
                    var kitc_clean=0;
                    var diet=0;
                    var prem_clean=0
                    <%--these for loops are for checking which radio button is clicked--%>
                    for( i = 0; i < document.mgen_reg.stateResidents.length; i++ )
                    {
                      if(document.mgen_reg.stateResidents[i].checked == true )
                      {
                         res_state = document.mgen_reg.stateResidents[i].value;
                      }
                    }
                    for( i = 0; i < document.mgen_reg.cleanlinessCookKitchen.length; i++ )
                    {
                      if(document.mgen_reg.cleanlinessCookKitchen[i].checked == true )
                      {
                         kitc_clean = document.mgen_reg.cleanlinessCookKitchen[i].value;
                      }
                    }
                    for( i = 0; i < document.mgen_reg.diet.length; i++ )
                    {
                      if(document.mgen_reg.diet[i].checked == true )
                      {
                         diet = document.mgen_reg.diet[i].value;
                      }
                    }
                    for( i = 0; i < document.mgen_reg.statusPremises.length; i++ )
                    {
                      if(document.mgen_reg.statusPremises[i].checked == true )
                      {
                         prem_clean = document.mgen_reg.statusPremises[i].value;
                      }
                    }
                    <%--validating the fields in the form--%>
                    if(document.mgen_reg.date.value.toString().length<1)
                        {
                            $dialog.html("<s:text name="global.error.mgenDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(res_state==0)
                        {
                            $dialog.html("<s:text name="global.error.mgenOverHealthStatus"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(kitc_clean==0)
                        {
                            $dialog.html("<s:text name="global.error.mgenCleanKitchen"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(diet==0)
                        {
                            $dialog.html("<s:text name="global.error.mgenDiet"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(prem_clean==0)
                        {
                            $dialog.html("<s:text name="global.error.mgenPreCleanStat"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                 <%--setting the entered fields into span tags to
                  display the values in the preview--%>
                            $("#mgen_reg_date_span").html(document.mgen_reg.date.value.toString());
                            $("#mgen_reg_res_state_span").html(res_state);
                            $("#mgen_reg_kitc_clean_span").html(kitc_clean);
                            $("#mgen_reg_diet_span").html(diet);
                            $("#mgen_reg_prem_clean_span").html(prem_clean);
                            $( "#mgen_reg_medoff_sugg_span" ).html( document.getElementById('mgen_reg_medoff_sugg').value.toString());
                            <%--setting the div tag's visibility to make it visible in preview--%>
                            document.getElementById('dialog-form_mgen_reg').style.visibility='visible';
                            <%--opening the dialog box with values in div dialog-form--%>
                            $('#dialog-form_mgen_reg').dialog('open');
	            return false;
                        }
	        });
	});

