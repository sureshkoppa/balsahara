<%-- 
    Document   : wh_reg_javascript
    Created on : Sep 3, 2012, 11:15:34 AM
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
                                          document.wh_reg.submit();
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

		$( "#dialog-form_wh_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: preButL10n,
			close: function() {
                                $( "#wh_reg_span tbody" ).html("");
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
                $('form#wh_reg').submit(function(){
                    var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    if(document.wh_reg.wh_reg_date.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="global.error.refeDate"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.getElementById('WHT').rows.length>1)
                    {
                         $("#wh_reg_date_span").html(document.wh_reg.wh_reg_date.value.toString());
                         $( "#wh_reg_span tbody" ).html("");
                            for(i=0;i<document.getElementById('WHT').rows.length-1;i++)
                                {
                                    if(document.getElementById('WHT').rows.length==2)
                                    {
                                        if(document.wh_reg.wh_reg_profile_id.value.toString()==1)
                                        {
                                            $dialog.html("<s:text name="global.error.refeProfId"/>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.htChild.value.toString()))
                                        {
                                            $dialog.html("<s:text name="global.error.whregHeight"/>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.wtChild.value.toString()))
                                        {
                                            $dialog.html("<s:text name="global.error.whregWeight"/>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else
                                        {
                                        $( "#wh_reg_span tbody" ).append( "<tr>" +
                                                                    "<td>" + document.wh_reg.wh_reg_profile_id.value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.htChild.value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.wtChild.value.toString() + "</td>" +
                                                                    
                                                                    "<td>" +document.wh_reg.childComplaints.value.toString()+ "</td>" +
                                                                    "<td>" + document.wh_reg.remarks.value.toString() + "</td>" +
                                                            "</tr>" );

                                        }
                                    }
                                    else
                                    {
                                        alert(document.getElementById('WHT').rows.length+"val of i"+i);
                                        if(document.wh_reg.wh_reg_profile_id[i].value.toString()==1)
                                        {
                                            $dialog.html("<s:text name="global.error.refeProfId"/>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.htChild[i].value.toString()))
                                        {
                                            $dialog.html("<s:text name="global.error.whregHeight"/>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else if(!float_re.test(document.wh_reg.wtChild[i].value.toString()))
                                        {
                                            $dialog.html("<s:text name="global.error.whregWeight"/>");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;
                                            break;
                                        }
                                        else
                                        {
                                        alert("in else"+document.getElementById('WHT').rows.length);
                                        $( "#wh_reg_span tbody" ).append( "<tr>" +
                                                                    "<td>" + document.wh_reg.wh_reg_profile_id[i].value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.htChild[i].value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.wtChild[i].value.toString() + "</td>" +
                                                                   
                                                                     "<td>" + document.wh_reg.childComplaints[i].value.toString() + "</td>" +
                                                                    "<td>" + document.wh_reg.remarks[i].value.toString() + "</td>" +
                                                            "</tr>" );
                                        }
                                    }
                                }
                                document.getElementById('dialog-form_wh_reg').style.visibility='visible';
                                $('#dialog-form_wh_reg').dialog('open');
                                return false;
                    }
	        });
	});
