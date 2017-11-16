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
                                          document.chemployee.submit();
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
		   $( "#dialog-form_CHEmployment" ).dialog({
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
            $('form#chemployee').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
                    
        if($("#childProfileId").val()==1)
        {
        $dialog.html("<s:text name="js.err.plsSelChiProfID"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                   
        else if(document.getElementById('CHE').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i< document.getElementById('CHE').rows.length-1;i++)
            {
                if(document.getElementById('CHE').rows.length==2)
                {
                    if(document.chemployee.detailsEmployment.value==1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelDetOfEmpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.chemployee.duration.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntDur"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chemployee.duration.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinDur"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }                                  
                                        
                    else if(document.chemployee.wagesEarned.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntWagesEarn"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chemployee.wagesEarned.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAWagesEarn"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }      
                    else if(document.chemployee.experienceatwork.value==1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelDetOfExp"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }                                                                              
                    else
                    {
                        $( "#ch_Employment_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chemployee.detailsEmployment.value.toString() + "</td>" +
                            "<td>" + document.chemployee.duration.value.toString() + "</td>" +
                            "<td>" + document.chemployee.wagesEarned.value.toString() + "</td>" +
                            "<td>" + document.chemployee.experienceatwork.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                    if(document.chemployee.detailsEmployment[i].value==1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelDetOfEmpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.chemployee.duration[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntDur"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                      else if(!specialchar.test(document.chemployee.duration[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinDur"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }                                                       
                                        
                    else if(document.chemployee.wagesEarned[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntWagesEarn"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chemployee.wagesEarned[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAWagesEarn"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }   
                    else if(document.chemployee.experienceatwork[i].value==1)
                    {
                        $dialog.html("<s:text name="js.err.plsSelDetOfExp"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }                                                                              
                    else
                    {
                        $( "#ch_Employment_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.chemployee.detailsEmployment[i].value.toString() + "</td>" +
                            "<td>" + document.chemployee.duration[i].value.toString() + "</td>" +
                            "<td>" + document.chemployee.wagesEarned[i].value.toString() + "</td>" +
                            "<td>" + document.chemployee.experienceatwork[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
            }
            document.getElementById('dialog-form_CHEmployment').style.visibility='visible';
            $('#dialog-form_CHEmployment').dialog('open');
            return false;
        }
    });
});


             