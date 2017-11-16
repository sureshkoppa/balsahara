<%-- 
    Document   : CounselorForm_Validation
    Created on : Feb 11, 2013, 5:31:17 PM
    Author     : sweta
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%--$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { 
                        $(this).dialog('close');
               };
     
                
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: '<s:text name="global.button.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
		});

        <!--the folowing function is called when view OP register form is submitted-->
                $('form#CounselorForm').submit(function(){
                        if($("#").val()=="select")
                        {
                            $dialog.html("<s:text name="global.error.couFormSelProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if($("counsel_followup").val()=="C")
                        {
                            

                                if($("#datepicker").val()=="")
                                {
                                    $dialog.html("<s:text name="global.error.couFormSelCouDate"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                if($("#child_counsel_select").val()=="")
                                {
                                    $dialog.html("<s:text name="global.error.couFormSelCouType"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                 if($("#child_psycho_select").val()=="")
                                {
                                    $dialog.html("<s:text name="global.error.couFormSelPsyDate"/>");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                        }
                        if($("#counsel_listChilds").val()=="select")
                        {
                            $dialog.html("<s:text name="global.error.couFormSelProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       
	        });
	});--%>

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
                
                <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>

		
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
                 $('form#CounselorForm').submit(function(){
                     var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;
                 var max;
                    var con=null;
                    for (var index=0; index < document.CounselorForm.counsel_followup.length; index++) {
				if (document.CounselorForm.counsel_followup[index].checked) {
					con = document.CounselorForm.counsel_followup[index].value;
					break;
				}
			}
                     if($("#counsel_listChilds").val()=="select")
                        {
                            $dialog.html("<s:text name="global.error.couFormSelProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }      
                      
                   else if(con=='C')    
                        {
                       //    alert("counsel"); 
                            if(document.CounselorForm.counsel_date.value.toString().length<1)
                            {
                                 $dialog.html("<s:text name="global.error.couFormSelCouDate"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                            }  
                        if($("#child_counsel_select").val()=="select")
                        {
                            $dialog.html("<s:text name="global.error.couFormSelCouType"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  
                         if($("#child_counsel_select").val()=="O")
                        {
                           if($("#counselTypeOthers").val()=="")
                           {
                            $dialog.html("<s:text name="global.error.couFormSelCouOth"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                           }
                        }  
                   
                        if($("#child_psycho_select").val()=="select")
                        {
                            $dialog.html("<s:text name="global.error.couFormSelPsyType"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  
                         if($("#child_psycho_select").val()=="O")
                        {
                           if($("#psychoTypeOthers").val()=="")
                           {
                            $dialog.html("<s:text name="global.error.couFormSelPsyOth"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                           }
                        }  
                        }
                        else if(con=='F')
                            {
                                
                                if(document.CounselorForm.reportingDate.value.toString().length<1)
                                {
                                $dialog.html("<s:text name="global.error.couFormSelRepoDate"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }  
                            }
                   
                    
                         if($("#childCounsel").val()=="")
                           {
                            $dialog.html("<s:text name="global.error.couFormSelCouChild"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                           }

	        });
	});



