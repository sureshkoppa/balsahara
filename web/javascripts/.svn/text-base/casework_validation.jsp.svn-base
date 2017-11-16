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
                                          document.casework.submit();
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
		   $( "#dialog-form_casework_preview" ).dialog({
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
            $('form#casework').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z0-9]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
        var specialchar= /^[^<>%$]*$/;
                      
        if($("#childProfileId").val()==1)
        {
        
            $dialog.html("<s:text name="js.err.plsSelProfileId"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#childName").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntFirstName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNAinFirstName"/>");
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
        else if(!specialchar.test($("#childSurname").val()))
        {

            $dialog.html("<s:text name="js.err.splNASurname"/>");
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
                                                      
        else if((!Digits_only.test($("#age").val())))
        {

            $dialog.html("<s:text name="js.err.ageBetZeroTo99"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if($("#religion").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelReligion"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
                         
        else if($("#religion").val()=='Other' && $("#religion_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecRelig"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#religion").val()=='Other' && !specialchar.test($("#religion_other").val()))
        {
            $dialog.html("<s:text name="js.err.splNAinSpecReligion"/>");
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

            $dialog.html("<s:text name="js.err.splCharNotAllowdInCaste"/>");
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
            //alert ($("#subcaste:checked").val());
            $dialog.html("<s:text name="js.err.splCharNotAllowInSubCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                             
       /* else if($("#datepicker").val().length<1)
        {
            //  alert($('input[name="disabled"]:checked').val());
            $dialog.html("<s:text name="js.err.plsEntDateOfBirth"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("<s:text name="js.err.entDateNotValidFormat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }*/
                        
                        
        else if($("#fatherName").val().length<1)
        {
      
            
            $dialog.html("<s:text name="js.err.plsEntFatherName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherName").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNotAllowInFatName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#fatherOccup").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntFatherOccupation"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherOccup").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNotAllowinFatOccup"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
                        
        else if($("#motherName").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntMotherName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherName").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNotAlloweInMatName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        /*else if((!char_only.test($("#motherName").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Mother Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#motherOccup").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntMotherOccu"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherOccup").val()))
        {

            $dialog.html("<s:text name="js.err.splCharNotAllowInMotOccup"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        /*else if((!char_only.test($("#motherOccup").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Mother's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#noBrothers").val().length<1)
        {
            $dialog.html("im here1");
            $dialog.html("<s:text name="js.err.plsEntNoOfBro"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noBrothers").val())))
        {
            $dialog.html("im here2");
            $dialog.html("<s:text name="js.err.splNAinNumOfBroField"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#noSister").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntNoOfSis"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noSister").val())))
        {

            $dialog.html("<s:text name="js.err.splNAinNumOfSisField"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#languagesKnown").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelAtLeastOneLang"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#addrParents").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsEntAddrOfParents"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#addrParents").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinAddrOfParents"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if(!specialchar.test($("#intrRelatives").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinInIntrRel"/>");
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

            $dialog.html("<s:text name="js.err.splCharNotAllowInEduDetails"/>");
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

            $dialog.html("<s:text name="js.err.splCharNotAllowInIdenProb"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
              
        else
        {                          
            var languagesknown="";
            var lkcheck=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i< document.casework.languagesKnown.length;i++ )
            {
                if(document.casework.languagesKnown[i].selected){
                    if(lkcheck==0){
                        languagesknown =document.casework.languagesKnown[i].value;
                        lkcheck=1;
                    }
                    else{
                        languagesknown =languagesknown+','+document.casework.languagesKnown[i].value;
                    }
                                 
                }
                              
            }                     
                          
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#subcaste_span").html($("#subcaste").val());
            $("#age_span").html($("#age").val());
            $("#childDetails_dob_span").html(document.casework.childDetails_dob.value.toString());
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
            document.getElementById('dialog-form_casework_preview').style.visibility='visible';
            $('#dialog-form_casework_preview').dialog('open');
            return false;
        }
    });
});

