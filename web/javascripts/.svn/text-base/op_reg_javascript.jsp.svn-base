<%-- 
    Document   : op_reg_javascript
    Created on : Aug 30, 2012, 9:40:52 AM
    Author     : sweta
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!--this file is used to validate and show preview for OP Register Form-->
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
                                          document.op_reg.submit();
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

		$( "#dialog-form_op_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: preButL10n,
			close: function() {
                            <!--to set the whole preview to null as we are appending the fields in preview-->
                                $( "#op_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

            <!--this var $dialog is for displaying the error dialog box-->
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 180,
			width: 250,
                        modal: true,
                        <!--to add red color to the title-->
			title: 'ALERT'.fontcolor('#FF0000'),
                        buttons: errButL10n
		});

           <!--following function will be called when OP Register form is submitted-->
                $('form#op_reg').submit(function(){
                    <!--validating the fields present in the form-->
                    if($("#op_reg_profile_id").val()==1)
                        {
                            $dialog.html("<s:text name="global.error.refeProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if(document.op_reg.op_reg_date.value.toString().length<1)
                        {
                            $dialog.html("<s:text name="global.error.refeDate"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#op_reg_diagnosis").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.opregDiag"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#op_reg_treatment").val().length<1)
                        {
                            $dialog.html("<s:text name="global.error.opregTreat"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#op_reg_treated_at").val()==1)
                        {
                            $dialog.html("<s:text name="global.error.opregTreatAt"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                            var treatAt=$("#op_reg_treated_at").val();
                            alert(treatAt);
                            <!--making the form details visible in preview-->
                           document.getElementById('dialog-form_op_reg').style.visibility='visible';
                            <!--adding the fields common in the form to the preview-->
                            $( "#op_preview" ).append( "<tr><td align='right'><s:text name='package.label.rrProfId'/>:</td><td>"+$("#op_reg_profile_id").val()+"</td></tr>"+
                                                       "<tr><td align='right'><s:text name="global.label.mgenDate"/>:</td><td>"+document.op_reg.op_reg_date.value.toString()+"</td></tr>"+
                                                       "<tr><td align='right'><s:text name="package.label.opregDiagnosis"/>:</td><td>"+$("#op_reg_diagnosis").val()+"</td></tr>"+
                                                       "<tr><td align='right'><s:text name="package.label.opregTreatment"/>:</td><td>"+$("#op_reg_treatment").val()+"</td></tr>");
                           <!--checking the option selected and validating the dynamic fields that are displayed-->
                           if($("#op_reg_treated_at").val()=="Treated In Home")
                            {
                              if($("#op_reg_specify_treatment").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("<s:text name="global.error.opregSpecTreat"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else
                                {
                                    <!--preview of the treated in home option selected-->
                                    $( "#op_preview" ).append("<tr><td align='right'><s:text name='package.label.opregTreatedAt'/>:</td><td><s:text name='global.select.opregTreatHome'/></td></tr>"+ 
                                                              "<tr><td align='right'><s:text name="package.label.opregTreatSpec"/>:</td><td>"+document.getElementById('op_reg_specify_treatment').value.toString()+"</td></tr>");
                                    $('#dialog-form_op_reg').dialog('open');
	                            return false;
                                }
                            }
                            else if($("#op_reg_treated_at").val()=="Refered To Outside Hospital")
                            {
                               if($("#op_reg_hosp").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("<s:text name="global.error.refeHosp"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else if($("#op_reg_reason").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("<s:text name="global.error.refeReas"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else if($("#op_reg_treated_by").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("<s:text name="global.error.refeTreatBy"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else if($("#op_reg_treatment_given").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("<s:text name="global.error.refeTreatGiven"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else if($("#op_reg_remarks").val().length<1)
                                {
                                    $( "#op_preview" ).html("");
                                    $dialog.html("<s:text name="global.error.refeDiscPres"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                else
                                {
                                    <!--preview of referred to outside hospital option selected-->
                                    $( "#op_preview" ).append("<tr><td align='right'><s:text name='package.label.opregTreatedAt'/>:</td><td><s:text name='global.select.opregTreatOutside'/></td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrRefHospital"/>:</td><td>"+$("#op_reg_hosp").val()+"</td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrRefReason"/>:</td><td>"+$("#op_reg_reason").val()+"</td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrAdmitDate"/>:</td><td>"+$("#datepicker2").val()+"</td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrTreatedBy"/>:</td><td>"+$("#op_reg_treated_by").val()+"</td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrTreatGiven"/>:</td><td>"+$("#op_reg_treatment_given").val()+"</td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrDischargeDate"/>:</td><td>"+$("#datepicker3").val()+"</td></tr>"+
                                                               "<tr><td align='right'><s:text name="package.label.rrDischPrescrip"/>:</td><td>"+document.getElementById('op_reg_remarks').value.toString()+"</td></tr>");
                   
                                    $('#dialog-form_op_reg').dialog('open');
	                            return false;
                                }
                            }
                            
                        }
	        });
	});



