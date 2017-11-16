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
                                          document.chpreeducation.submit();
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
		   $( "#dialog-form_CHPriorAdmEdu" ).dialog({
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
            
              $('form#chpreeducation').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        var specialchar= /^[^<>%$]*$/;
                      
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelChiProfID"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                       
        else if($("#educationPriorAdmission").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelEduDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonLeavingSchool").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelReaForLeaSchool"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonLeavingSchool").val()=='Others' && $("#reasonLeavingSchool_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecReaLeaSchool"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonLeavingSchool_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNAReaLeaSchool"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#detailsSchoolStudied").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelSchoolStdLast"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#mediumInstruction").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelMedOfIns"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#mediumInstruction").val()=='Others' && $("#mediumInstruction_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecMedOfIns"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#mediumInstruction_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNAMedOfInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else
        {     
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#educationPriorAdmission_span").html($("#educationPriorAdmission").val());
            $("#reasonLeavingSchool_span").html($("#reasonLeavingSchool").val());
            $("#reasonLeavingSchool_other_span").html($("#reasonLeavingSchool_other").val());
            $("#detailsSchoolStudied_span").html($("#detailsSchoolStudied").val());
            $("#mediumInstruction_span").html($("#mediumInstruction").val());
            $("#mediumInstruction_other_span").html($("#mediumInstruction_other").val());
            document.getElementById('dialog-form_CHPriorAdmEdu').style.visibility='visible';
            $('#dialog-form_CHPriorAdmEdu').dialog('open');
            return false;
        }
    });
});

