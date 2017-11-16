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
                                          document.chsocial.submit();
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
		   $( "#dialog-form_CHSocialHistory" ).dialog({
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
            
             $('form#chsocial').submit(function(){
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
         
       else if($("#friendshipDetails").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelDetFrdPriAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#friendshipDetails").val()=='Others' && $("#friendshipDetails_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecFSPriAdm"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#friendshipDetails_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNADetFSPriAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#friendsMajority").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelMjrFrAre"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#membershipGroups").val()==1)
        {
            $dialog.html("<s:text name="js.err.PlsSelDetOfMemInGrp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#membershipDetails").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecDetMem"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#membershipDetails").val()))
        {

            $dialog.html("<s:text name="js.err.splNADetOfMem"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#positionGroups").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelPosChiInGrp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#purposeMembership").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelPurpMemGrp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#purposeMembership").val()=='Others' && $("#purposeMembership_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecPurMemGrp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#purposeMembership_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNAPurTakeMemInGrp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        
        else if($("#attitudeGroup").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelAttOfGrp"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#meetingPointGroup").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelLocMtPtGrp"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#reactionSocity").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelReaSocChiOutFam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#reactionPolice").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelReaPolice"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#responsePublic").val().length<1)
        {
            $dialog.html("<s:text name="js.err.PlsEntRespGenPub"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#responsePublic").val()))
        {

            $dialog.html("<s:text name="js.err.splNAResGenPub"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
          
        
        else
        {      
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#friendshipDetails_span").html($("#friendshipDetails").val());
            $("#friendshipDetails_other_span").html($("#friendshipDetails_other").val());
            $("#friendsMajority_span").html($("#friendsMajority").val());
            $("#membershipGroups_span").html($("#membershipGroups").val());
            $("#membershipDetails_span").html($("#membershipDetails").val());
            $("#positionGroups_span").html($("#positionGroups").val());
            $("#purposeMembership_span").html($("#purposeMembership").val());
            $("#purposeMembership_other_span").html($("#purposeMembership_other").val());
            $("#attitudeGroup_span").html($("#attitudeGroup").val());
            $("#meetingPointGroup_span").html($("#meetingPointGroup").val());
            $("#reactionSocity_span").html($("#reactionSocity").val());
            $("#reactionPolice_span").html($("#reactionPolice").val());
            $("#responsePublic_span").html($("#responsePublic").val());
            document.getElementById('dialog-form_CHSocialHistory').style.visibility='visible';
            $('#dialog-form_CHSocialHistory').dialog('open');
            return false;
        }
    });
});

