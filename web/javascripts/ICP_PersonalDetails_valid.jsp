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
                                          document.icp_personal.submit();
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
		   $( "#dialog-form_ICPPD_preview" ).dialog({
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
            $('form#icp_personal').submit(function(){
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
        else if($("#firstName").val()=="")
        {
            $dialog.html("<s:text name="js.err.entFirstName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#lastName").val()=="")
        {
            $dialog.html("<s:text name="js.err.entLastName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#age").val()=="")
        {
            $dialog.html("<s:text name="js.err.entAge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#fatherName").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntFatName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#motherName").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntMotName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#nationality").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntNatlity"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#caste").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#subcaste").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntSubCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#educationAttainment").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntEduDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#healthNeeds").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntHeaNeeds"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#emoTrainNeeds").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntEmoTrNeeds"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#leaCreatePlay").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntLeaCrePlay"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#attachRelation").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntAttAndRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#religBeliefs").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntRelBeliefs"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#protectNeglMalt").val()=="")
        {
            $dialog.html("<s:text name="js.err.entAge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#socialMainStream").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntSocMainStr"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#followupPostRel").val()=="")
        {
            $dialog.html("<s:text name="js.err.plsEntFollowPtRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else
        {
        
               $("#childProfileId_span").html($("#childProfileId").val());
               $("#childfName_span").html($("#firstName").val());
               $("#childlName_span").html($("#lastName").val());
               $("#ageAdmission_span").html($("#age").val());
               $("#gender_span").html($("#sex").val());
               $("#fatName_span").html($("#fatherName").val());
               $("#matName_span").html($("#motherName").val());
               $("#natlty_span").html($("#nationality").val());
               $("#religion_span").html($("#religion").val());
               $("#religion_other_span").html($("#religion_other").val());
               $("#caste_span").html($("#caste").val());
               $("#subcaste_span").html($("#subcaste").val());
               $("#eduAttain_span").html($("#educationAttainment").val());
               $("#heaNees_span").html($("#healthNeeds").val());
               $("#emoTrain_span").html($("#emoTrainNeeds").val());
               $("#leaCrePlay_span").html($("#leaCreatePlay").val());
               $("#attachAndRel_span").html($("#attachRelation").val());
               $("#relBelf_span").html($("#religBeliefs").val());
               $("#protAll_span").html($("#protectNeglMalt").val());
               $("#socMainStr_span").html($("#socialMainStream").val());
               $("#followPostRetr_span").html($("#followupPostRel").val());
               
               
               document.getElementById("dialog-form_ICPPD_preview").style.visibility='visible';
               $('#dialog-form_ICPPD_preview').dialog('open');
               return false;
        
        
        }
      
     });
});        
