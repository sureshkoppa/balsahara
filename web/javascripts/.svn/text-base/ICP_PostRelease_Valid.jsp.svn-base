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
                                          document.icp_postRelease.submit();
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
		   $( "#dialog-form_ICPPost_preview" ).dialog({
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
            $('form#icp_postRelease').submit(function(){
        //var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
         var char_only=/^[a-zA-Z]+$/;
         var Digits_only=/^[0-9]{1,3}$/;
         var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
         var specialchar= /^[^<>%$]*$/;
         
         <%-- alert("@@@@@@@@@@");
        alert($("input[name='statusBankAcc']:checked").length+2);
        alert($("input[name='statusBankAcc']:checked").val());  
         --%>
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelProfileId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("input[name='statusBankAcc']:checked").length==0)
        {
            $dialog.html("<s:text name="js.err.plsSelAccStat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
         }
         else if($("input[name='earningsHandedOver']:checked").length==0)
         {
            $dialog.html("<s:text name="js.err.plsSelEarnHOver"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
         }
        
        else if($("#placementChild").val()=="")
        {
            $dialog.html("<s:text name="js.err.entPlacementIfAny"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#familyBehaviour").val()=="")
        {
            $dialog.html("<s:text name="js.err.entFamBehave"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#socialMilieuChild").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntSocMilieu"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#childUsingSkills").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntUseSkill"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("input[name='childAdmitSchool']:checked").val()=="y")
        {
              if($("#datepicker").val()=="")
              {
                    $dialog.html("<s:text name="js.err.plsEntDateAdm"/>");
                    $dialog.parent().addClass( "ui-state-error" );
                    $dialog.dialog('open');
                    return false;
              }
              else if($("#nameSchool").val()=="")
              {
                    $dialog.html("<s:text name="js.err.plsEntNameSchool"/>");
                    $dialog.parent().addClass( "ui-state-error" );
                    $dialog.dialog('open');
                    return false;
               }
        }
        else
        {       
               $("#childProfileId_span").html($("#childProfileId").val());
               $("#statusBankAcc_span").html($("#statusBankAcc").val());
               $("#earningsHandedOver_span").html($("#earningsHandedOver").val());
               $("#placementChild_span").html($("#placementChild").val()); 
               $("#familyBehaviour_span").html($("#familyBehaviour").val());
               $("#socialMilieuChild_span").html($("#socialMilieuChild").val());
               $("#childUsingSkills_span").html($("#childUsingSkills").val());
               $("#childAdmitSchool_span").html($("input[name='childAdmitSchool']:checked").val());
              
         
                            
               document.getElementById("dialog-form_ICPPost_preview").style.visibility='visible';
               $('#dialog-form_ICPPost_preview').dialog('open');
               return false;
        
        
        }
      
     });
});        
