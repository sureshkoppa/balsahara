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
                                          document.chfamily.submit();
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
		   $( "#dialog-form_CHFamily" ).dialog({
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
             $('form#chfamily').submit(function(){
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
         
       else if($("#familyType").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelTypeOfFam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#fmRelation").val()==1)
        {
        $dialog.html("<s:text name="js.err.plsSelRelAmongFatMat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       else if($("#fcRelation").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRelAgFatChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#mcRelation").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRelAgMotChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#fsRelation").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRelAgFatSib"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#msRelation").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRelAgMatSib"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if($("#jsRelation").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRelAgJuvSib"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            
     else if($("#propertyFamilyLanded").val().length<1)
        {
           
            $dialog.html("<s:text name="js.err.plsEntLandedProp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#propertyFamilyLanded").val()))
        {

            $dialog.html("<s:text name="js.err.splNALandedProp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
          else if($("#propertyFamilyHousehold").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelHouArticles"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#propertyFamilyVehicals").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelVehicles"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#propertyFamilyVehicals").val()=='four_wheeler'&& $("#propertyFamilyVehicals_other").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSel4Wheelers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#propertyFamilyOthers").val().length<1)
        {           
            $dialog.html("<s:text name="js.err.plsEntOthProp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#propertyFamilyOthers").val()))
        {

            $dialog.html("<s:text name="js.err.splNAOthProp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
         else if($("#marriageDetailsParents").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelParMarrDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#marriageDetailsBrothers").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelBroMarrDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#marriageDetailsSisters").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelSisMarrDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if($("#socialActivityFamily").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelSocActFamMem"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#parentalCareJuvnileBeforeAdmission").val()==1)
        {
            $dialog.html("<s:text name="js.err.selSocCareJuvBAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                     
        else
        {      
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#familyType_span").html($("#familyType").val());
            $("#fmRelation_span").html($("#fmRelation").val());
            $("#fcRelation_span").html($("#fcRelation").val());
            $("#mcRelation_span").html($("#mcRelation").val());
            $("#fsRelation_span").html($("#fsRelation").val());
            $("#msRelation_span").html($("#msRelation").val());
            
            $("#jsRelation_span").html($("#jsRelation").val());
            $("#propertyFamilyLanded_span").html($("#propertyFamilyLanded").val());
            $("#propertyFamilyHousehold_span").html($("#propertyFamilyHousehold").val());
            $("#propertyFamilyVehicals_span").html($("#propertyFamilyVehicals").val());
            $("#propertyFamilyVehicals_other_span").html($("#propertyFamilyVehicals_other").val());
            $("#propertyFamilyOthers_span").html($("#propertyFamilyOthers").val());
             
            $("#marriageDetailsParents_span").html($("#marriageDetailsParents").val());
            $("#marriageDetailsBrothers_span").html($("#marriageDetailsBrothers").val());
            $("#marriageDetailsSisters_span").html($("#marriageDetailsSisters").val());
            $("#socialActivityFamily_span").html($("#socialActivityFamily").val());
            $("#parentalCareJuvnileBeforeAdmission_span").html($("#parentalCareJuvnileBeforeAdmission").val());
                 
            document.getElementById('dialog-form_CHFamily').style.visibility='visible';
            $('#dialog-form_CHFamily').dialog('open');
            return false;
        }
    });
});


