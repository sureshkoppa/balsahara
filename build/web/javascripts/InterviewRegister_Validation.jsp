<%@taglib prefix="s" uri="/struts-tags"%> 

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
                                          document.InterviewReg.submit();
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
		   $( "#dialog-form_Interview_preview" ).dialog({
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
            $('form#InterviewReg').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
         var specialchar= /^[^<>%$]*$/;
         
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelProfileId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#datepicker").val().length<1)
        {
           
            $dialog.html("<s:text name="js.err.plsDateOfIntr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="js.err.entDateOfIntrNotValid"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           
        }
     /*    else if($("#interviewTime_String").val()=="")
        {
            $dialog.html("please sel time");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       */ 
        else if($("#interviewer").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntIntrvwrName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#interviewer").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNAinIntrvwrName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#relationshipChild").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRelWithChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#relationshipChild").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNAinRelWthChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#addrInterviewer").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntAddrOfIntrvwr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if(!specialchar.test($("#addrInterviewer").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNAinAddrOfIntrvwr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                                         
        else if($("#childBehaviourInt").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntBehaveAndAttAftIntr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childBehaviourInt").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinBehaveAndAttAfterIntr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#suggestedAction").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntSuggFollowUpAction"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            
            else if(!specialchar.test($("#suggestedAction").val()))
        {

            $dialog.html("<s:text  name="js.err.splNAinSuggFLPAction"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#remarksSuper").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRemOfSuper"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#remarksSuper").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinRemOfSuper"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }               
        else
        {      
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#interviewDate_String_span").html(document.InterviewReg.interviewDate_String.value.toString());
            $("#interviewer_span").html($("#interviewer").val());
            $("#relationshipChild_span").html($("#relationshipChild").val());
            $("#addrInterviewer_span").html($("#addrInterviewer").val());
            $("#childBehaviourInt_span").html($("#childBehaviourInt").val());
            $("#childBehaviourAfterInt_span").html($("#childBehaviourAfterInt").val());
            $("#suggestedAction_span").html($("#suggestedAction").val()); 
            $("#remarksSuper_span").html($("#remarksSuper").val());
            document.getElementById('dialog-form_Interview_preview').style.visibility='visible';
            $('#dialog-form_Interview_preview').dialog('open');
            return false;
        }
    });
});