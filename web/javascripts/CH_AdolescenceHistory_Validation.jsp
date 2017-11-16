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
                                          document.chadol.submit();
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
		   $( "#dialog-form_CHAdolescence" ).dialog({
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
            
             <%--following function will be called when form is submitted--%>
        $('form#chadol').submit(function(){
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
        else if($("#puberty").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelPuberty"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#deliquentBehaviour").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelDetOfDelBehave"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#deliquentBehaviour").val()=='Others' && $("#deliquentBehaviour_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecDetDelBehave"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(!specialchar.test($("#deliquentBehaviour_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNADetDelBehave"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#reasonDeliquentBehaviour").val()==1)
        {
            $dialog.html("<s:text name="js.err.selReaDelBehave"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#reasonDeliquentBehaviour").val()=='Others' && $("#reasonDeliquentBehaviour_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.specReaDelBehave"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#reasonDeliquentBehaviour_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNAReaDelBehave"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#habits").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelAtLOneHab"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#drugAbuse").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecDrugAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
        
         else if(!specialchar.test($("#drugAbuse").val()))
        {

            $dialog.html("<s:text name="js.err.splNAinDrugAbuse"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
                        
        else if($("#hobbies").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelAtlOneHobby"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#incomeUtilization").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelDetincomeUtil"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#savingDetails").val()==1)
        {
            $dialog.html("<s:text name="js.err.plsSelDetOfSavings"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#savingDetails").val()=='Others' && $("#savingDetails_other").val().length<1)
        {
            $dialog.html("<s:text name="js.err.plsSpecDetOfSave"/> ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#savingDetails_other").val()))
        {

            $dialog.html("<s:text name="js.err.splNADetOfSave"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#workingHours").val()==1)
        {
            $dialog.html("<s:text name="js.err.selDurWorkHours"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                                            
                        
        else
        {                          
            var habits="";
            var lkcheck=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i< document.chadol.habits.length;i++ )
            {
                if(document.chadol.habits[i].selected){
                    if(lkcheck==0){
                        habits =document.chadol.habits[i].value;
                        lkcheck=1;
                    }
                    else{
                        habits =habits+','+document.chadol.habits[i].value;
                    }
                                 
                }
                              
            }   
                          
                          
            var hobbies="";
            var lkcheck1=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i< document.chadol.hobbies.length;i++ )
            {
                if(document.chadol.hobbies[i].selected){
                    if(lkcheck1==0){
                        hobbies =document.chadol.hobbies[i].value;
                        lkcheck1=1;
                    }
                    else{
                        hobbies =hobbies+','+document.chadol.hobbies[i].value;
                    }
                                 
                }
                              
            }   
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#puberty_span").html($("#puberty").val());
            $("#deliquentBehaviour_span").html($("#deliquentBehaviour").val());
            $("#deliquentBehaviour_other_span").html($("#deliquentBehaviour_other").val());
            $("#reasonDeliquentBehaviour_span").html($("#reasonDeliquentBehaviour").val());
            $("#reasonDeliquentBehaviour_other_span").html($("#reasonDeliquentBehaviour_other").val());
            $("#habits_span").html(habits);
            $("#drugAbuse_span").html($("#drugAbuse").val());
            $("#hobbies_span").html(hobbies);
            $("#incomeUtilization_span").html($("#incomeUtilization").val());
            $("#savingDetails_span").html($("#savingDetails").val());
            $("#savingDetails_other_span").html($("#savingDetails_other").val());
            $("#workingHours_span").html($("#workingHours").val());
            document.getElementById('dialog-form_CHAdolescence').style.visibility='visible';
            $('#dialog-form_CHAdolescence').dialog('open');
            return false;
       }
    });
});
     
         