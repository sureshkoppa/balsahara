<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Category Register Form--%>

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
                                          document.DietIssueForm.submit();
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
		   $( "#dialog-form_dietissue_reg" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                           <%-- $( "#dietissue_reg_span" ).html("");
                                allFields.val("").removeClass( "ui-state-error" );  --%>
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

                $('form#DietIssueForm').submit(function(){
                 var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,5}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,2})?$/;
                 
                 
                     var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.DietIssueForm.diet_itemNo.length;
                        }  
                     var total=0;
                    // var max=document.DietIssueForm.diet_itemNo.length;
                    if(max!=1)
                      {
                      for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.DietIssueForm.diet_itemNo[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                        }
                      else
                          {
                                    if (document.DietIssueForm.diet_itemNo.checked == true) 
                                        total=1;
                              
                          }      
                     if(document.DietIssueForm.dietIssue_date.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entDietIssDate"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }  
                    else if($('#dietReg_srChilds').val().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entSrchild"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                   else  if(!Digits_only.test($('#dietReg_srChilds').val()))
                    {
                        $dialog.html("<s:text name="js.err.notValidNumSrChild"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    } 
                   else if($('#dietReg_jrChilds').val().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entJrchild"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    } 
                   else  if(!Digits_only.test($('#dietReg_jrChilds').val()))
                    {
                        $dialog.html("<s:text name="js.err.notValidNumJrChild"/>");
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
                            
                            $("#dietissue_date_span").html(document.DietIssueForm.dietIssue_date.value.toString());  
                           $("#dietissue_srchild_span").html(document.DietIssueForm.dietReg_srChilds.value.toString()); 
                           $("#dietissue_jrchild_span").html(document.DietIssueForm.dietReg_jrChilds.value.toString()); 
                           
                            
                           
                            if(max!=1)
                                {
                                $( "#dietissue_reg_span tbody" ).html("");
                            for(var i=0;i< max;i++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.DonationForm.donation_item_qunatity.item(str).value;
                             
                             if (eval("document.DietIssueForm.diet_itemNo[" + i + "].checked") == true) {

                             
                               $( "#dietissue_reg_span tbody" ).append( "<tr>" +
                                                   "<td>" +eval("document.DietIssueForm.dietissue_iname[" + i + "]").value+"</td>" +
                                        
                                           
                                   "</tr>" );
                                        
                             }
                               
                               
                           }
                           
                           
                            }
                               else
                                   {
                                       $( "#dietissue_reg_span tbody" ).html( "<tr>" +
                                                                    
                                                                    "<td>" +document.DietIssueForm.dietissue_iname.value+"</td>" +
                                                                      "</tr>" );
                                       
                                       
                                   }
                           
                   
                                  document.getElementById('dialog-form_dietissue_reg').style.visibility='visible';
                    
                       $('#dialog-form_dietissue_reg').dialog('open');
                                return false;
                    }


            



	        });
	});
