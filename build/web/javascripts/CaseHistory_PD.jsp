<%@taglib prefix="s" uri="/struts-tags"%>
<%--This file is used to validate and show preview for Add Category Register Form--%>

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
                                          //document.ch_personal.submit();                                          
                                          
                                           $.post( "CW-CH-Personal-Save", $('form#ch_personal').serialize() , function(data) {
                                             //alert(data.messageValue);
                                             $successDialouge.html(data.messageValue);
                                             $successDialouge.parent().addClass( "ui-state-error" );
                                             $successDialouge.dialog('open');
                                             
                                             $("form#ch_personal")[0].reset();
                                            });
                                            
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
             
             <%--Anupam added this test START--%>
            var $successDialouge = $('<div></div>').html("Successful Operation")
                            .dialog({
                        modal: true,
                        draggable: false,
                        resizable: false,
                        autoOpen:false,
                        position: ['center', 'top'],
                        show: 'blind',
                        hide: 'blind',
                        width: 400,
                        title: 'SUCCESS',
                        dialogClass: 'no-close success-dialog',
                        buttons: {
                            "OK": function() {
                                $(this).dialog("close");
                            }
                        }
                    });
            <%--Anupam added this test END--%>
             
             
             <%--for Preview Code start--%>           
		   $( "#dialog-form_CHPD_preview" ).dialog({
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
             $('form#ch_personal').submit(function(event){
                          
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        var specialchar= /^[^<>%$]*$/;
             
            
        event.preventDefault();
        
        if($("#childProfileId").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelChiProfID"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#childName").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntChiName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("<s:text name="js.err.splNAChiName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#childSurname").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntChiSurName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#childSurname").val()))
        {

            $dialog.html("<s:text name="js.err.splNAChiSurName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($('input[name="gender"]:checked').length===0)
        {
            $dialog.html("<s:text name="js.err.plsSelGen"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#religion").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                         
                         
        else if($("#religion").val()=='Other' && $("religion_other").length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#religion_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#caste").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#caste").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#subcaste").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntSubCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#subcaste").val()))
        {

            $dialog.html("<s:text name="js.err.splNASubCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#ageAdmission").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntAgeAtAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#ageAdmission").val())))
        {

            $dialog.html("<s:text name="js.err.EntAgeAdm0to99"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#agePresent").val().length<1)
        {
            $dialog.html("<s:text name="js.err.pslEntPresentAge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#agePresent").val())))
        {

            $dialog.html("<s:text name="js.err.EntAgeBet0to99"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#localResidence").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelLocOfRes"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
                            
        }
                        
        else if($("#localResidence").val()=='Others' && $("#localResidence_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecLocOfRes"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#localResidence_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecLocRes"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                
        else if($("#nativeDistrict").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNatDistrict"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#nativeDistrict").val()))
        {

            $dialog.html("<s:text name="js.err.splNAEntNatDis"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
        else if($("#nativeState").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNatState"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#nativeState").val()))
        {

            $dialog.html("<s:text name="js.err.splNAEntNatSta"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                   
        else if($("#housingType").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelHouType"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        //  else if($("#localResidence").val()=='Others' && $("#localResidence_other").val().length<1)
        else if($("#housingType").val()=='Others' && $("#housingType_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecHouType"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#housingType_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecHouType"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }              
        else if($("#housingSpace").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSpecHouSpace"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#houseOwnership").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelHouOwnship"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#broughtbeforeCwc").val()==1)
        {
            $dialog.html("<s:text name="js.err.PlsSelJuvBrtBfrBy"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#broughtbeforeCwc").val()=='Guardians' && $("#parentRelation").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecRela"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#parentRelation").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinSpecRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
                        
        else if($("#reasonLeavingFamily").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelReaLeaFam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonLeavingFamily").val()=='Others' && $("#reasonLeavingFamily_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecReaLeaFam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonLeavingFamily_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNAReaLeaFam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                  
        else if($("#verbalAbuse").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelVerbAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#verbalAbuse").val()=='Others' && $("#verbalAbuse_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecVerbAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
           else if(!specialchar.test($("#verbalAbuse_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecVerbAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }                
                        
        else if($("#physicalAbuse").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelPhyAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#sexualAbuse").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelSexAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#sexualAbuse").val()=='Others' && $("#sexualAbuse_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecSexAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
          else if(!specialchar.test($("#sexualAbuse_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecSexAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }    
                        
        else if($("#otherAbuse").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecOthAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          
          else if(!specialchar.test($("#otherAbuse").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecOthAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#illtreatDenialFood").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelDenOfFood"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#illtreatDenialFood").val()=='Others' && $("#illtreatDenialFood_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecDenOfFood"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            else if(!specialchar.test($("#illtreatDenialFood_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecDenFood"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }               
                        
        else if($("#illtreatBeatenMercilessly").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelBeatMercLessly"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#illtreatBeatenMercilessly").val()=='Others' && $("#illtreatBeatenMercilessly_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecBeatMercLessly"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
         else if(!specialchar.test($("#illtreatBeatenMercilessly_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecBeatMercLessly"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }    
                        
        else if($("#illtreatCauseInjury").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelCauInj"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#illtreatCauseInjury").val()=='Others' && $("#illtreatCauseInjury_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecCauInj"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#illtreatCauseInjury_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecInj"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
                                              
        else if($("#exploitationChild").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelExplotFaced"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#exploitationChild").val()=='Others' && $("#exploitationChild_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecExploitFace"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#exploitationChild_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecExploitFace"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#hsbaRespiratory").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelRespDisOrd"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#hsbaHearing").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelHearImpair"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#hsbaEye").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelEyeDisea"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaDental").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelDentDisea"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaCordiac").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelCardDisea"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaSkin").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelSkinDisea"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaSexualDiseases").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelSexTransDisea"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaNeurological").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelNeuroDisea"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaMentalHandicap").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelMentalHC"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaPhysicalHandicap").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelPhyHC"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#hsbaOthers").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecOthHC"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          
        else if(!specialchar.test($("#hsbaOthers").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecOthHC"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }    
        else if($("#childStayPriorAdmission").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelStayChildPrToAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#childStayPriorAdmission").val()=='Others' && $("#childStayPriorAdmission_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecStayChildPriAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#childStayPriorAdmission_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecStayPrAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#vpmcPriorInsti").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelVisitOfParPrInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($("#vpmcAfterInsti").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelVisitOfParAftInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
                        
        else if($("#vchfPriorInsti").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelVisChildToFamPrInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($("#vchfAfterInsti").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelVisChildFamAftInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
                        
                        
        else if($("#cwpPriorInsti").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelCorrParPriInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if($("#cwpAfterInsti").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelCorrParAftInst"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else
        {  
            var gender;
                            
            if(document.ch_personal.gender[0].checked == true )
            {
                gender = document.ch_personal.gender[0].value;
            }
            else
            {
                gender = document.ch_personal.gender[1].value;
            }
                            
                            
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#gender_span").html(gender);
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#subcaste_span").html($("#subcaste").val());
            $("#ageAdmission_span").html($("#ageAdmission").val());
            $("#agePresent_span").html($("#agePresent").val());
            $("#localResidence_span").html($("#localResidence").val());
            $("#localResidence_other_span").html($("#localResidence_other").val());
            $("#nativeDistrict_span").html($("#nativeDistrict").val());
            $("#nativeState_span").html($("#nativeState").val());
            $("#housingType_span").html($("#housingType").val());
            $("#housingType_other_span").html($("#housingType_other").val());
            $("#housingSpace_span").html($("#housingSpace").val());
            $("#houseOwnership_span").html($("#houseOwnership").val());
            $("#broughtbeforeCwc_span").html($("#broughtbeforeCwc").val());
            $("#parentRelation_span").html($("#parentRelation").val());
            $("#reasonLeavingFamily_span").html($("#reasonLeavingFamily").val());
            $("#reasonLeavingFamily_other_span").html($("#reasonLeavingFamily_other").val());
            $("#verbalAbuse_span").html($("#verbalAbuse").val());
            $("#verbalAbuse_other_span").html($("#verbalAbuse_other").val());
            $("#physicalAbuse_span").html($("#physicalAbuse").val());
            $("#sexualAbuse_span").html($("#sexualAbuse").val());
            $("#sexualAbuse_other_span").html($("#sexualAbuse_other").val());
            $("#otherAbuse_span").html($("#otherAbuse").val());
            $("#illtreatDenialFood_span").html($("#illtreatDenialFood").val());
            $("#illtreatDenialFood_other_span").html($("#illtreatDenialFood_other").val());
            $("#illtreatBeatenMercilessly_span").html($("#illtreatBeatenMercilessly").val());
            $("#illtreatBeatenMercilessly_other_span").html($("#illtreatBeatenMercilessly_other").val());
            $("#illtreatCauseInjury_span").html($("#illtreatCauseInjury").val());
            $("#illtreatCauseInjury_other_span").html($("#illtreatCauseInjury_other").val());
            $("#illtreatOthers_span").html($("#illtreatOthers").val());
            $("#exploitationChild_span").html($("#exploitationChild").val());
            $("#exploitationChild_other_span").html($("#exploitationChild_other").val());
            $("#hsbaRespiratory_span").html($("#hsbaRespiratory").val());
            $("#hsbaHearing_span").html($("#hsbaHearing").val());
            $("#hsbaEye_span").html($("#hsbaEye").val());
            $("#hsbaDental_span").html($("#hsbaDental").val());
            $("#hsbaCordiac_span").html($("#hsbaCordiac").val());
            $("#hsbaSkin_span").html($("#hsbaSkin").val());
            $("#hsbaSexualDiseases_span").html($("#hsbaSexualDiseases").val());
            $("#hsbaNeurological_span").html($("#hsbaNeurological").val());
            $("#hsbaMentalHandicap_span").html($("#hsbaMentalHandicap").val());
            $("#hsbaPhysicalHandicap_span").html($("#hsbaPhysicalHandicap").val());
            $("#hsbaOthers_span").html($("#hsbaOthers").val());
            $("#childStayPriorAdmission_span").html($("#childStayPriorAdmission").val());
            $("#childStayPriorAdmission_other_span").html($("#childStayPriorAdmission_other").val());
            $("#vpmcPriorInsti_span").html($("#vpmcPriorInsti").val());
            $("#vpmcAfterInsti_span").html($("#vpmcAfterInsti").val());
            $("#vchfPriorInsti_span").html($("#vchfPriorInsti").val());
            $("#vchfAfterInsti_span").html($("#vchfAfterInsti").val());
            $("#cwpPriorInsti_span").html($("#cwpPriorInsti").val());
            $("#cwpAfterInsti_span").html($("#cwpAfterInsti").val());
           
            document.getElementById('dialog-form_CHPD_preview').style.visibility='visible';
            $('#dialog-form_CHPD_preview').dialog('open');
            return false;
                      
            
           
                 
        }
        
        
    });
});


