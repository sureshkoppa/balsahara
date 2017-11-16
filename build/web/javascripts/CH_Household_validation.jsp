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
                                          document.chhousehold.submit();
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
		   $( "#dialog-form_ch_household" ).dialog({
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
            
            
            $('form#chhousehold').submit(function(){
        //  var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var specialchar= /^[^<>%$]*$/;
                   
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelChiProfID"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                   
        else if(document.getElementById('CHD').rows.length>1)
        {
            $("#childProfileId_span").html(document.getElementById('childProfileId').value)
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            for(i=0;i< document.getElementById('CHD').rows.length-1;i++)
            {
                if(document.getElementById('CHD').rows.length==2)
                {
                    if(document.chhousehold.nameRelative.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntNameOfRel"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.nameRelative.value))
                    {

                        $dialog.html("<s:text name="js.err.splNANameOfRel"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.relationship.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntRelship"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.relationship.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinRelship"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.age.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntAge"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!Digits_only.test(document.chhousehold.age.value))
                    {
                        $dialog.html("<s:text name="js.err.plsEntPropAge"/> ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.chhousehold.education.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntEduDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.education.value))
                    {

                       $dialog.html("<s:text name="js.err.splNAinEduDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.occupation.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntOccuDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.occupation.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinOccuDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.health.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntHeaDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chhousehold.health.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAHeaDet"/>");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.handicap.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntHCDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }  
                    else if(!specialchar.test(document.chhousehold.handicap.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinHCDet"/>");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.income.value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntIncomeDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }     
                      else if(!specialchar.test(document.chhousehold.income.value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinIncomeDet"/>");
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
                        $dialog.html("<s:text name="js.err.plsEntNameOfRel"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.nameRelative[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNANameOfRel"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.relationship[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntRelship"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.relationship[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinRelship"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(!Digits_only.test(document.chhousehold.age[i].value))
                    {
                        $dialog.html("<s:text name="js.err.plsEntPropAge"/> ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                                        
                                        
                                        
                    else if(document.chhousehold.education[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntEduDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.education[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinEduDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.occupation[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntOccuDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.chhousehold.occupation[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinOccuDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.health[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntHeaDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                     else if(!specialchar.test(document.chhousehold.health[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAHeaDet"/>");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.handicap[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntHCDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }  
                    else if(!specialchar.test(document.chhousehold.handicap[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinHCDet"/>");
                        $dialog.parent().addClass("ui-state-error");
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.chhousehold.income[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntIncomeDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }     
                      else if(!specialchar.test(document.chhousehold.income[i].value))
                    {

                        $dialog.html("<s:text name="js.err.splNAinIncomeDet"/>");
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
