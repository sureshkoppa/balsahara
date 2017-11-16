<%@taglib prefix="s" uri="/struts-tags"%> 
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                var textsubmit=$("<div/>").html("<s:text name="button.pre.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="button.pre.clear"/>").text();
			    var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.dischargeForm.submit();
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
		   $( "#dialog-form_Discharge_preview" ).dialog({
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
            $('form#dischargeForm').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
        var phonenumber_only=/^[0-9]*$/;
                    
        if($("#childIdToBeTransDis").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelChiProfId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='non')
        {
            $dialog.html("<s:text name="js.err.plsSelActTaken"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='transfer' && $("#userDistrictId").val()=='non')
        {
            $dialog.html("<s:text name="js.err.plsSelDistName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='transfer' && $("#transHomeId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                         
                         
        else if($("#actionTaken").val()=='handover' && $("#handoverPersonName").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNamePers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && (!specialchar.test($("#handoverPersonName").val())))
        {
            $dialog.html("<s:text name="js.err.splNAinNamePers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                    
        else if($("#actionTaken").val()=='handover' && $("#personRelation").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRelChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        } 
        else if($("#actionTaken").val()=='handover' && (!specialchar.test($("#personRelation").val())))
        {
            $dialog.html("<s:text name="js.err.splNARelWthChild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                                      
        else if($("#actionTaken").val()=='handover' && $("#personContact").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntContNumPer"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && (!phonenumber_only.test($("#personContact").val())))
        {
            $dialog.html("<s:text name="js.err.OnlyDigAllowCNPers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && $("#handoverPersonaddress").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntAddrPers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='handover' && (!specialchar.test($("#handoverPersonaddress").val())))
        {
            $dialog.html("<s:text name="js.err.splNAAddrOfPers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                              
        else if($("#actionTaken").val()=='otherstate' && $("#state").val()==1)
        {
            $dialog.html("<s:text name="js.err.selStateNotVal"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && $("#officerHome").val().length<1)
        {
            $dialog.html("<s:text name="js.err.entDesigOffOthStHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && (!specialchar.test($("#officerHome").val())))
        {
            $dialog.html("<s:text name="js.err.splNADisigOffOthStHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                       
        else if($("#actionTaken").val()=='otherstate' && $("#homenameOtherstate").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNameOfHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && (!specialchar.test($("#homenameOtherstate").val())))
        {
            $dialog.html("<s:text name="js.err.splNAinNameOfHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='otherstate' && $("#addressOtherstate").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntAddrHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#actionTaken").val()=='otherstate' && (!specialchar.test($("#addressOtherstate").val())))
        {
            $dialog.html("<s:text name="js.err.splNAinAddrHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#actionTaken").val()=='ngo' && (!specialchar.test($("#homenameOtherstate").val())))
        {
            $dialog.html("<s:text name="js.err.plsEntNGO"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                                     
        else if($("#actionTaken").val()=='After Care Home' && (!specialchar.test($("#homenameOtherstate").val())))
        {
            $dialog.html("<s:text name="js.err.plsEntAftCHome"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#actionTaken").val()=='Islamic Centre' && (!specialchar.test($("#homenameOtherstate").val())))
        {
            $dialog.html("<s:text name="js.err.plsEntIsmCare"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#cwcJjbNo").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntCWCJJBOrdNo"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbNo").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinCWCJJBOrdNo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntCWCJJBOrdDt"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#datepicker1").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntDtOfDisCharge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if($("#remarks").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRemData"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#remarks").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinRem"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }    
        else
        {     
            $("#childIdToBeTransDis_span").html($("#childIdToBeTransDis").val());
            $("#actionTaken_span").html($("#actionTaken").val());
            $("#userDistrictId_span").html($("#userDistrictId").val());
            $("#transHomeId_span").html($("#transHomeId").val());
            $("#handoverPersonName_span").html($("#handoverPersonName").val());
            $("#personRelation_span").html($("#personRelation").val());
            $("#personContact_span").html($("#personContact").val());
            $("#handoverPersonaddress_span").html($("#handoverPersonaddress").val());
            $("#state_span").html($("#state").val());
            $("#officerHome_span").html($("#officerHome").val());
            $("#homenameOtherstate_span").html($("#homenameOtherstate").val());
            $("#addressOtherstate_span").html($("#addressOtherstate").val());
            $("#cwcJjbNo_span").html($("#cwcJjbNo").val());
            $("#cwcJjbOrderDate_span").html(document.dischargeForm.cwcJjbOrderDate.value.toString());
            $("#dateOfDischarge_span").html(document.dischargeForm.dateOfDischarge.value.toString());
            $("#remarks_span").html($("#remarks").val());
            // $("#_span").html($("#").val());
            document.getElementById('dialog-form_Discharge_preview').style.visibility='visible';
            $('#dialog-form_Discharge_preview').dialog('open');
            return false;
        }   
       
    });
});

