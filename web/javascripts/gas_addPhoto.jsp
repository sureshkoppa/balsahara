<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Category Register Form--%>

$(function() {
		$( "#dialog-form_add_guardprofile" ).dialog( "destroy" );
                
                
                  <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>     
             
             
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
            
            
            
  


                $('form#AddPhotoForm').submit(function(){
                var sel=$("#guardPhotoFile").val();
                var type=sel.substr(sel.length-4, 4).toLowerCase();
                //alert("type------------>"+type);
                
                 if($("#addGuardPhotoId").val()=="select")
                        {
                        $dialog.html("<s:text name="js.err.selGuardForPhoto"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                else if($("#guardPhotoFile").val()=="")
                        {
                        $dialog.html("<s:text name="js.err.selPhotoForGuard"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }       
                
                else if(!(type==".jpg"||type==".png"||type==".gif"||type=="jpeg"))
                        {
                            $dialog.html("<s:text name="js.err.fileInvalid"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                
                
                
            });
            
 });