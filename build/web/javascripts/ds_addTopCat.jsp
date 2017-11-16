<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Top Category Register Form--%>

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
                                          document.AddTopCatForm.submit();
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
		   $( "#dialog-form_add_topcat" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#addtopcat_preview" ).html("");
				                allFields.val("").removeClass( "ui-state-error" );
			                  }
		    });
            <%--for Preview Code ends--%>    
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
            
            $('form#AddTopCatForm').submit(function(){
            
              
                   var specialchar= /^[^<>%$]*$/;
                       
                       if($("#newtopcat_name").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.entCatName"/>");                             
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#newtopcat_name").val().length>49)
                        {
                            $dialog.html("<s:text name="js.err.subCatNameMax50"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                                
                        }
                        else if(!specialchar.test($("#newtopcat_name").val()))
                        {
                            $dialog.html("<s:text name="js.err.subCatNameNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       else if($("#newtopcat_type").val().length!=0&&$("#newtopcat_type").val().length>49)
                                {
                                   $dialog.html("<s:text name="js.err.catTypeMax50"/>");
                                   $dialog.parent().addClass( "ui-state-error" );
                                   $dialog.dialog('open');
                                   return false;  
                            
                                }
                       else if(!specialchar.test($("#newtopcat_type").val()))
                        {
                            $dialog.html("<s:text name="js.err.catTypeNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                            {
                            <%--making the form details visible in preview--%>
                          
                            document.getElementById('dialog-form_add_topcat').style.visibility='visible';
                            $( "#addtopcat_preview" ).append("<tr><td align='right'><s:text name="label.enterTopCat"/>:</td><td>"+$("#newtopcat_name").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.remarks"/>:</td><td>"+$("#newtopcat_type").val()+"</td></tr>"
                                                               );
                   
                                    $('#dialog-form_add_topcat').dialog('open');
	                            return false;
                            }
                       
         });               
          
});
                  