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
                                          document.icp_preRelease.submit();
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
		   $( "#dialog-form_ICPPre_preview" ).dialog({
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
            $('form#icp_preRelease').submit(function(){
        //var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
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
        else if($("#releaseType").val()=="tr")
        {
        
                if($("#detailsPlaceTrans").val()=="")
                {
                    $dialog.html("<s:text name="js.err.entPlaceTrans"/>");
                    $dialog.parent().addClass( "ui-state-error" );
                    $dialog.dialog('open');
                    return false;
                }
                else if($("#concernAuthority").val()=="")
                {
                    $dialog.html("<s:text name="js.err.entConcAuth"/>");
                    $dialog.parent().addClass( "ui-state-error" );
                    $dialog.dialog('open');
                    return false;
                
                }
        }
        else if($("#detailsPlacement").val()=="")
        {
            $dialog.html("<s:text name="js.err.entDetailsPlacement"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#datepicker").val()=="")
        {
            $dialog.html("<s:text name="js.err.entDateOfRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#datepicker1").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntDateRepat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#requisitionEscort").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntReqEsc"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#identifyEscort").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntIdenEsc"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#rehabilationPlan").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntRehbPlan"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#sponserReqment").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntSponReq"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#identOffPostrel").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsSelIdenPostRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#mouPostrel").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntMouPostrel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       
        else if($("#mouSponser").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntMouSpons"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#detailsSavAcc").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntDetSavAcc"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#detailsEarnBel").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntDetEarnBel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#detailsAwards").val()=="")
        {
            $dialog.html("<s:text name="js.err.entDetAwards"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#optionChild").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntOptChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#anyOtherInfo").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntOthInfo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else
        {
        
               $("#childProfileId_span").html($("#childProfileId").val());
               $("#releaseType_span").html($("#releaseType").val());
             if($("#releaseType").val()=="tr")
             {
               $("#detailPlTrans_span").html($("#detailsPlaceTrans").val());
               $("#concAuthRes_span").html($("#concernAuthority").val());
             }  
               $("#placeEarns_span").html($("#detailsPlacement").val());
               $("#dateRel_span").html($("#datepicker").val());
               $("#dateReptr_span").html($("#datepicker1").val());
               $("#reqEssIfReq_span").html($("#requisitionEscort").val());
               $("#identEss_span").html($("#identifyEscort").val());
               $("#reccRehab_other_span").html($("#rehabilationPlan").val());
               $("#sponReq_span").html($("#sponserReqment").val());
               $("#idenSpl_span").html($("#identOffPostrel").val());
               $("#ngoMou_span").html($("#mouPostrel").val());
               $("#idenOff_span").html($("#identOfSponser").val());
               $("#sponMou_span").html($("#mouSponser").val());
               $("#detSave_span").html($("#detailsSavAcc").val());
               $("#childEarn_span").html($("#detailsEarnBel").val());
               $("#awarRewa_span").html($("#detailsAwards").val());
               $("#optChild_span").html($("#optionChild").val());
               $("#othInfo_span").html($("#anyOtherInfo").val());
               
               
               
               document.getElementById("dialog-form_ICPPre_preview").style.visibility='visible';
               $('#dialog-form_ICPPre_preview').dialog('open');
               return false;
        
        
        }
      
     });
});        
