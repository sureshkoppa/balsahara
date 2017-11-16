

<%@taglib prefix="s" uri="/struts-tags"%> 

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                
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
                        height: 130,
			width: 250,
                        modal: true,
                        title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
	     	});
            <%--for Error Code ends--%> 
            
             $('form#PhotoUploadForm').submit(function(){
       
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
        var phonenumber_only=/^[0-9]*$/;
                    
        if($("#photoId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelChiProfId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#photoFile").val()=='')
        {
            $dialog.html("<s:text name="js.err.plsSelPhoto"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        });
        
        //CODE for Ajax image upload START
        $('#PhotoUploadForm').submit(function(event){
                             console.log("submission blocked");
                             
                            try{                                
                                var data = new FormData(document.forms.namedItem("PhotoUploadForm"));                                
                            
                                $.ajax({
                                    type: "POST",
                                    url: "Child-AddPhoto-Save",
                                    data: data, //$('#PhotoUploadForm').serialize(),
                                    cache: false,
                                    contentType: false,
                                    processData: false,
                                    dataType:'json',
                                    success:function(result){                                    
                                    alert(result.messageValue);                           
                                                   },
                                    error:function(result){                                        
                                    alert(result.messageValue);
                                    }               
                                    }); 
                                
                            } 
                            
                            catch(error)
                            {
                                alert(error);
                            }
                              
                             event.preventDefault();
                         });
        
       //CODE for Ajax image upload END 
   });
     