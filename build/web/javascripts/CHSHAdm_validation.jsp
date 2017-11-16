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
                                           progressCircleShow2();
                                           document.CHSHAdmission.submit();
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
		   $( "#dialog-form_CHSHAdmission_preview" ).dialog({
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
             $('form#CHSHAdmission').submit(function(){
             
               //alert("---chadm validatin--");
                        var char_only=/^[a-zA-Z]+$/;
                        var Digits_only=/^[0-9]{1,2}$/;
                        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                        var specialchar= /^[^<>%$]*$/;
                        
                        
                        if($("#transChildId").val()==1)
                        {
                            $dialog.html("<s:text name="js.err.plsSelTransChildProId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#childName").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.plsEntName"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                          
                        else if($("#childSurname").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.plsEntSurName"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       

                        else if($("input[name='gender']:checked").length<=0)
                        {
                            $dialog.html("<s:text name="js.err.plsSelGender"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        
                               
                        else if($("#age").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.plsEntAge"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        <%--
                        else if((!Digits_only.test($("#age").val())))
                        {

                            $dialog.html("<s:text name="js.err.plsEntAge0to99"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }--%>
                        else if($("#childNature").val()==1)
                        {
                            $dialog.html("<s:text name="js.err.plsSelChildNat"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }                    

                        else if($("#childNature").val()=='Others'&& $("#childNatureOthers").val().length<1)
                        {
                            $dialog.html("<s:text name="js.err.plsEntChiNatOthers"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        <%--
                         else if(!specialchar.test($("#childNatureOthers").val()))
                        {

                            $dialog.html("<s:text name="js.err.splNAChiNatOthers"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        } 
                        --%>
                        else if($('input[name="disabled"]:checked').val()==='Y' && $("#natureDisability").val().length<1 )
                        {

                            $dialog.html("<s:text name="js.err.plsEntNatDis"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
     <%--
      else if(!specialchar.test($("#natureDisability").val()))
        {

            $dialog.html("<s:text name="js.err.splNANatOfDis"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
     --%>
      else if($("#religion").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelReligion"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
                         
        else if($("#religion").val()=='Other' && $("religion_other").length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecRelig"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
      <%--   else if(!specialchar.test($("#religion_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNASpecRelig"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  --%>
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
        <%-- (commentting the line to solbe validation problem in multilingual 2-1-2014)
        else if($("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntDOB"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="js.err.dobFmtNotValid"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        
        }
        --%>                
                        
        else if($("#fatherName").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntFatName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherName").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinFatName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
         else if($("#fatherOccup").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntFatOccup"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherOccup").val()))
        {

            $dialog.html("<s:text name="js.err.splNAFatOccup"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }

         else if($("#motherName").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntMotName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherName").val()))
        {

            $dialog.html("<s:text name="js.err.splNAMotName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
        else if($("#motherOccup").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntMotOccup"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }   
        else if(!specialchar.test($("#motherOccup").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinMotOccup"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
        else if($("#noBrothers").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNoBro"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noBrothers").val())))
        {

            $dialog.html("<s:text name="js.err.splNAEntDataWrgNumOfBro"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#noSister").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNoSis"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noSister").val())))
        {

            $dialog.html("<s:text name="js.err.splNAEntDataWrgNumOfSis"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
       else if($("#languagesKnown").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelAtlOneLang"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#addrParents").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntAddr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#addrParents").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinAddr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
         else if(!specialchar.test($("#intrRelatives").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinIntrRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }   
        else if($("#eduStatus").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntEduDetails"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#eduStatus").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinEduDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#identifiedProblemsChild").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntChildIdenProb"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#identifiedProblemsChild").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinIdenProb"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
        
        else if($("#admThrough").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelAdmBy"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#admThrough").val()=='AuthorizedPerson' && $("#nameAuthPer").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNameOfAuthPers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#nameAuthPer").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinNameOfAuthPers"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
        else if($("#cwcJjbOrderNo").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntCWCJJBOrdNo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbOrderNo").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinCWCJJBOrdNo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#datepicker1").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntCWCJJBOrdDt"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if((!datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("<s:text name="js.err.entCWCJJBOrdDtNval"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#datepicker2").val().length<1)
        {
          
            $dialog.html("<s:text name="js.err.plsEntDateOfAdm"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("<s:text name="js.err.entDtAdmNotVaild"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
       
        }
        else if($("#propertyPossessed").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntDetOfProp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#propertyPossessed").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinDetOfProp"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
         else if($("#provisionLaw").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntProvLaw"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#provisionLaw").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinProvLaw"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#reasonAdm").val().length<1)
        {
            $dialog.html("<s:text name="js.err.entReaAdmConfWthLaw"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonAdm").val()))
        {

            $dialog.html("<s:text name="js.err.splNAReaAdmConfWthlaw"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
        else if($("#periodStay").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntPrdOfStay"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#periodStay").val()))
        {

            $dialog.html("<s:text name="js.err.splNAPrdOfStay"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#datepicker3").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntProbDtDisCharge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if((!datepattern.test($("#datepicker3").val())))
        {
            $dialog.html("<s:text name="js.err.entDtOfDisChargeNV"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
     
        }
        else if($("#recommCwc").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRecomCWC"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
           
           else if(!specialchar.test($("#recommCwc").val()))
        {

            $dialog.html("<s:text name="js.err.splNARecomCWC"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
        else if($("#recommCaseworker").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRecomCW"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#recommCaseworker").val()))
        {

            $dialog.html("<s:text name="js.err.splNARecomCW"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
          else
          {    
            var languagesknown="";
            var lkcheck=0;
                          
            for(var i=0;i< document.CHSHAdmission.languagesKnown.length;i++ )
            {
                    if(document.CHSHAdmission.languagesKnown[i].selected)
                    {
                                        if(lkcheck==0){
                                            languagesknown =document.CHSHAdmission.languagesKnown[i].value;
                                            lkcheck=1;
                                        }
                                        else{
                                            languagesknown =languagesknown+','+document.CHSHAdmission.languagesKnown[i].value;
                                        }
                      }
                              
              }   
            
                  var gender="";
                            
                            if(document.CHSHAdmission.gender[0].checked == true )
                              {
                                 gender = document.CHSHAdmission.gender[0].value;
                              }
                            else
                              {
                                  gender = document.CHSHAdmission.gender[1].value;
                              }
                              
                 var disability="";             
                               if(document.CHSHAdmission.disabled[0].checked == true )
                              {
                                 disability = document.CHSHAdmission.disabled[0].value;
                              }
                            else
                              {
                                  disability = document.CHSHAdmission.disabled[1].value;
                              }
                              
            $("#transChildId_span").html($("#transChildId").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#gender_span").html(gender);
            $("#identificationMarks_span").html($("#identificationMarks").val());
            $("#age_span").html($("#age").val());
            $("#childNature_span").html($("#childNature").val());
            $("#disabled_span").html(disability);
            $("#natureDisability_span").html($("#natureDisability").val());
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#subcaste_span").html($("#subcaste").val());
            <%--$("#childDetails_dob_span").html(document.CHSHAdmission.childDetails_dob.value.toString());--%>
            $("#fatherName_span").html($("#fatherName").val());
            $("#fatherOccup_span").html($("#fatherOccup").val());
            $("#motherName_span").html($("#motherName").val());
            $("#motherOccup_span").html($("#motherOccup").val());
            $("#noBrothers_span").html($("#noBrothers").val());
            $("#noSister_span").html($("#noSister").val());
            $("#languagesKnown_span").html(languagesknown);
            $("#addrParents_span").html($("#addrParents").val());
            $("#intrRelatives_span").html($("#intrRelatives").val());
            $("#eduStatus_span").html($("#eduStatus").val());
            $("#identifiedProblemsChild_span").html($("#identifiedProblemsChild").val());
            $("#admThrough_span").html($("#admThrough").val());
            $("#nameAuthPer_span").html($("#nameAuthPer").val());
            $("#cwcJjbOrderNo_span").html($("#cwcJjbOrderNo").val());
            $("#orderDate_String_span").html(document.CHSHAdmission.orderDate_String.value.toString());
            $("#dateTimeAdm_String_span").html(document.CHSHAdmission.dateTimeAdm.value.toString());
            $("#propertyPossessed_span").html($("#propertyPossessed").val());
            $("#provisionLaw_span").html($("#provisionLaw").val());
            $("#reasonAdm_span").html($("#reasonAdm").val());
            $("#periodStay_span").html($("#periodStay").val());
            $("#probableDischargeDate_String_span").html(document.CHSHAdmission.probableDischargeDate_String.value.toString());
            $("#recommCaseworker_span").html($("#recommCaseworker").val());
            $("#recommCwc_span").html($("#recommCwc").val());
           
            document.getElementById('dialog-form_CHSHAdmission_preview').style.visibility='visible';
            $('#dialog-form_CHSHAdmission_preview').dialog('open');
            return false;
          }
        
        });
 });