<%@taglib prefix="s" uri="/struts-tags"%>
//alert("************"); 
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
                                          document.IssueForm.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>      
             
                <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok};               
               var errButL10n = {};
               errButL10n[okvar.close] = function() { 
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>      
             <%--for Preview Code start--%>           
		   $( "#dialog-form_issue_reg" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_issue_reg" ).html("");
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
           
  
          
            <%--for Error Code ends--%>  
		$('form#IssueForm').submit(function(){
                var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;    
                
           var max=0;
                  //  alert("hidden val**"+document.getElementById("itr").value);
                    
                    
                    if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.IssueForm.issue_item_chk.length;
                        }  
                  
                var total=0;
              //  alert(total+"<----total");
                     
                
                 if(max!=1)
                      {
                               
                               
                               for (var idx = 0; idx < max; idx++) {  
                      //    alert("in loop"+idx)
                                    if (eval("document.IssueForm.issue_item_chk[" + idx + "].checked") == true) {
                                    total += 1;
                                   }
                          } 
                           
                      }
                     else
                     {  
                                
                              
                     }   
                     //        alert("total-->"+total);
                
                
                
                 var issueto=null;
                    for (index=0; index < document.IssueForm.issue_to_radio.length; index++) {
				if (document.IssueForm.issue_to_radio[index].checked) {
					issueto = document.IssueForm.issue_to_radio[index].value;
					break;
				}
			}   
                 
                       //     alert("issueto------------->"+issueto);   
                
                 var maxc,totalc=0;
                    if(issueto=='in')
                      {
                   
                         maxc=document.getElementById("itrc").value;
                         if(maxc!=1)
                         {
                          for (var idxc = 0; idxc < maxc; idxc++) 
                             {
                                    if (eval("document.IssueForm.select_childs_ids[" + idxc + "].checked") == true) 
                                    {
                                       totalc += 1;
                                    }
                             } 
                         }
                         else
                         {
                                    if (document.IssueForm.select_childs_ids.checked == true) 
                                        totalc=1;
                         }   
                              
                     }
                     
                     
                     //  alert("maxc----->"+maxc+"totalc------>"+totalc);      
                
                 if(document.IssueForm.issue_date.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entIssDate"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                
                  
               else
                        {
                         if(max!=1)
                                {   
                             for(var k=0;k< max;k++)
                             {
                                 if (eval("document.IssueForm.issue_item_chk[" + k + "].checked") == true)
                                 {
                                     if(!qoh_only.test(document.IssueForm.issue_item_quantity[k].value))
                                          {
                                              $dialog.html("<s:text name="js.err.notValidQtyIss"/>"+document.IssueForm.issue_iname[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.IssueForm.issue_item_remarks[k].value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150 "/>"+document.IssueForm.issue_iname[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                     else if(!specialchar.test(document.IssueForm.issue_item_remarks[k].value))
                                    {

                                        $dialog.html("<s:text name="js.err.remNoSpl "/>"+document.IssueForm.issue_iname[k].value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }  

                                }
                           }
                     }
                        
                        else
                            {
                                       if(!qoh_only.test(document.IssueForm.issue_item_quantity.value))
                                           {
                                              $dialog.html("<s:text name="js.err.notValidQtyIss "/>"+document.IssueForm.issue_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.IssueForm.issue_item_remarks.value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150"/>"+document.IssueForm.issue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                      else if(!specialchar.test(document.IssueForm.issue_item_remarks.value))
                                    {

                                    $dialog.html("<s:text name="js.err.remNoSpl"/>"+document.IssueForm.issue_iname11.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }     
                                
                                
                            }
                            }
                    
                            
                            
                      
                 
               
})
});