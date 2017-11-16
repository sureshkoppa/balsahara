/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Category Register Form--%>

$(function() {
		$("#dialog:ui-dialog" ).dialog( "destroy" );
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
                                          document.TailorIssueForm.submit();
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
		   $( "#dialog-form_tailor_issue_reg" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_tailor_issue_reg" ).html("");
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

            
        
           
	     $('form#TailorIssueForm').submit(function(){
                var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;
                var max;
                       
                    
                      
                      
                    if(document.TailorIssueForm.tailor_issue_date.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entIssDate"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.TailorIssueForm.tailor_issue_letterno.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entTailLetNo"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                    else if(document.TailorIssueForm.tailor_issue_letterno.value.toString().length>49)
                    {
                        
                        $dialog.html("<s:text name="js.err.letNoMax50"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                   }
                     else if(document.TailorIssueForm.tailor_issue_address.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entTailAddr"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#tailor_issue_address").val()))
                    {
                        $dialog.html("<s:text name="js.err.tailAddrNoSpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(document.TailorIssueForm.tailor_issue_address.value.toString().length>254)
                    {
                        $dialog.html("<s:text name="js.err.tailAddrMax255"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(total==0)
                    {
                        $dialog.html("<s:text name="js.err.leastItemIss"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                   }
                   else 
                   {
                                   if(document.getElementById("itr").value==1 )
                                   {
                                       max=1;
                                   }    
                                   else    
                                   {   
                                       max=document.TailorIssueForm.tail_item_checked.length;
                                   }  


                                 var total=0;
                                 if(max!=1)
                                  {
                                          for (var idx = 0; idx < max; idx++)
                                          {
                                                if (eval("document.TailorIssueForm.tail_item_checked[" + idx + "].checked") == true)
                                                {
                                                      total += 1;
                                                }
                                         }
                                  }
                                  else
                                  {
                                                  if (document.TailorIssueForm.tail_item_checked.checked == true) 
                                                  total=1;                              
                                  }   
                                  
                       if(max!=1)
                       {
                            for(var k=0;k < max;k++)
                            {
                                 if (eval("document.TailorIssueForm.tail_item_checked[" + k + "].checked") == true)
			  	 {
                          
                                     if(!qoh_only.test(document.TailorIssueForm.tail_rawcloth_quan[k].value))
                                          {
                                              $dialog.html("<s:text name="js.err.notValidQtyIss"/> "+document.TailorIssueForm.tailissue_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorIssueForm.tail_rawcloth_remarks[k].value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150"/> "+document.TailorIssueForm.tailissue_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                    else if(!specialchar.test(document.TailorIssueForm.tail_rawcloth_remarks[k].value))
                                    {

                                        $dialog.html("<s:text name="js.err.remNoSpl"/> "+document.TailorIssueForm.tailissue_iname11[k].value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }         
                                }
                           }
                   
                      }
                       else
                            {
                                     if(!qoh_only.test(document.TailorIssueForm.tail_rawcloth_quan.value))
                                     {
                                              $dialog.html("<s:text name="js.err.notValidQtyIss"/> "+document.TailorIssueForm.tailissue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                     }
                                     else if(document.TailorIssueForm.tail_rawcloth_remarks.value.length>149)
                                     {
                                              $dialog.html("<s:text name="js.err.remMax150"/> "+document.TailorIssueForm.tailissue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                    }
                                    else if(!specialchar.test(document.TailorIssueForm.tail_rawcloth_remarks.value))
                                     {

                                             $dialog.html("<s:text name="js.err.remNoSpl"/>"+document.TailorIssueForm.tailissue_iname11.value);
                                             $dialog.parent().addClass( "ui-state-error" );
                                             $dialog.dialog('open');
                                             return false;

                                     }    
                                
                                
                            }
                      
                   }  
              
                   
                    });
    
	});
