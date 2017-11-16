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
                                          document.RHAdmission.submit();
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
		   $( "#dialog-form_RHOH_preview" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_RHOH_preview" ).html("");
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
                
                
                 $( "#provisionLaw" ).autocomplete({
                                     source:'CW-Get-Distinct-Values-Start-Pattern-JSON?distinctParm=provisionLaw',
                                     minLength: 1
                                     })
                                     .focus(function(){                                     
                                     $(this).autocomplete("search", "");
                                     });
            <%--for Error Code ends--%> 
            $('form#RHAdmission').submit(function(){
                    // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    var char_only=/^[a-zA-Z]+$/;
                    var Digits_only=/^[0-9]{1,2}$/;
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var specialchar= /^[^<>%$]*$/;

                    //alert("------------->"+$("#childNature").val());
                    
                    if($("#childName").val().length<1)
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
                    else if($("#age").val().length<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntAge"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                     else if(!Digits_only.test($("#age").val()))
                    {
                        $dialog.html("<s:text name="js.err.plsEntAgeDigitsMax3"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                     else if($("input[name='gender']:checked").length<=0)
                    {
                        $dialog.html("<s:text name="js.err.plsSelGen"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if($("#identificationMarks").val().length<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntIdMarks"/> ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                   else if(!specialchar.test($("#identificationMarks").val()))
                    {

                        $dialog.html("<s:text name="js.err.splNAinIdMarks"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    
                     else if($("#childNature").val()==="1")
                    {
                        $dialog.html("Please enter child nature");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    
                        else if($("#childNature").val()=="Others" && $("#childNatureOthers").val().length<1)
                    {
                        $dialog.html("<s:text name="js.err.plsEntChiNatOthers"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    <%-- else if(!specialchar.test($("#childNatureOthers").val()))
                    {

                        $dialog.html("<s:text name="js.err.splNAChiNatOthers"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }--%>
                    else if($('input[name="disabled"]:checked').val()==='Y' && $("#natureDisability").val().length<1 )
                    {

                    $dialog.html("<s:text name="js.err.plsEntNatDis"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }

                     else if(!specialchar.test($("#natureDisability").val()))
                    {

                    $dialog.html("<s:text name="js.err.splNANatOfDis"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }

                    else if($("#datepicker").val().length<1)
                    {
                       //  alert($('input[name="disabled"]:checked').val());
                       $dialog.html("<s:text name="js.err.plsEntDateOfAdm"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }

                    else if((!datepattern.test($("#datepicker").val())))
                    {
                    $dialog.html("<s:text name="js.err.entDtAdmNotVaild"/>");
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
                       // alert($("#gender:checked").val());
                    }

                    <%--
                    else if($("#placeOfCharge").val().length<1)
                    {
                    $dialog.html("<s:text name="js.err.plsEntPlaceofCharge"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(!specialchar.test($("#placeOfCharge").val()))
                    {

                    $dialog.html("<s:text name="js.err.splCharNotAllowInPlaOfCharge"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                       // alert($("#gender:checked").val());
                    }
                    --%>
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
                       // alert($("#gender:checked").val());
                    }
                    else if($("#datepicker1").val().length<1)
                    {
                    $dialog.html("<s:text name="js.err.plsEntCWCJJBOrdDt"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }

                   else if($("#datepicker2").val().length<1)
        {
        $dialog.html("<s:text name="js.err.plsEntDateChildProduced"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker2").val())))
        {
        $dialog.html("<s:text name="js.err.cwcJjbDateIsNotValid"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
                        
                        
        else if($("#producedBy").val().length<1)
        {
            $dialog.html("<s:text name="js.err.PlsSelJuvBrtBfrBy"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#producedBy").val()))
        {

        $dialog.html("<s:text name="js.err.splCharNotAllowInProdBefore"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
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

            $dialog.html("<s:text name="js.err.splNAinDetOfProp"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
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

            $dialog.html("<s:text name="js.err.splNAReaAdmConfWthlaw"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
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

            $dialog.html("<s:text name="js.err.splNAPrdOfSta"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#datepicker4").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntProbDtDisCharge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!datepattern.test($("#datepicker4").val())))
        {
            $dialog.html("<s:text name="js.err.entProbDateOfDischarge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
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

            $dialog.html("<s:text name="js.err.splNARecomCW"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        else if($("#recommCwc").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntRecomCWC"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#recommCwc").val()))
        {

            $dialog.html("<s:text name="js.err.splNARecomCWC"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
           // alert($("#gender:checked").val());
        }
        
                     
                   
                  

    });
    
       
});




    