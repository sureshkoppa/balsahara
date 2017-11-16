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
				alert("after submit-----");
                                          
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.ModifyItemForm1.submit();
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
		   $( "#dialog-form_add_cat" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#addcat_preview" ).html("");
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

            <%--following function will be called when form is submitted--%>

           $('form#ModifyItemForm1').submit(function(){
                   
                    var char_only=/^[a-zA-Z]+$/;
                    //var qoh_only=/^\d*.\d\d$/;                 //allows digits only
                    var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                    
                    var float_only=/^\d{1,10}(\.\d{0,2})?$/;
                     var Digits_only=/^[0-9]{1,10}.\d\d$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    var specialchar= /^[^<>%$]*$/;         
                 
                  
                  var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                             max=document.ModifyItemForm1.modifyItem_itemNo.length;
                        }  
              //  alert("------>"+max);
                     var total=0;
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                      for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.ModifyItemForm1.modifyItem_itemNo[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                          }
                      else
                          {
                                    if (document.ModifyItemForm1.modifyItem_itemNo.checked == true) 
                                        total=1;                              
                          }
             
             if(total==0)
                    {
                    $dialog.html("<s:text name="js.err.selAtlesOneItemEntQuan"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
             else
              {
                   
                   
                   
                   if(max!=1)
                    {
                     for(var i=0;i< max;i++)
                           {
                             
                             
                             if (document.ModifyItemForm1.modifyItem_itemNo[i].checked== true) {
                           

                                     if(!qoh_only.test(document.ModifyItemForm1.modifyItem_qoh[i].value))
                                          {
                                              $dialog.html("<s:text name="js.err.notValidQty"/>"+document.ModifyItemForm1.modifyitem_iname[i].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                
                                      

                             }
                           }
                    }
                    else
                        {
                               if(!qoh_only.test(document.ModifyItemForm1.modifyItem_qoh.value))
                                 {
                                              $dialog.html("<s:text name='js.err.notValidQty'/>"+document.ModifyItemForm1.modifyitem_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                        }
              }
                           
                           if(max!=1)
                               {
                           for(var j=0;j< max;j++)
                           {
                               if (document.ModifyItemForm1.modifyItem_itemNo[j].checked== true) {
                               $( "#enter_qoh_preview tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>"+document.ModifyItemForm1.modifyitem_iname[j].value+ "</td>" +
                                                                    "<td>" +document.ModifyItemForm1.modifyItem_qoh[j].value+ "</td>" +
                                                                    "<td>" +document.ModifyItemForm1.modifyItem_remarks[j].value+ "</td>" +
                                                                    "</tr>" );
                                        
                             }
                           }
                 }
                   else
                       {
                            $( "#enter_qoh_preview tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.ModifyItemForm1.modifyitem_iname.value+"</td>" +
                                                                    "<td>" +document.ModifyItemForm1.modifyItem_qoh.value+ "</td>" +
                                                                    "<td>" +document.ModifyItemForm1.modifyItem_remarks.value+ "</td>" +
                                                                    "</tr>" );
                           
                       }
                               document.getElementById('dialog-form_enter_qoh').style.visibility='visible';
                                    $('#dialog-form_enter_qoh').dialog('open');
	                            return false;
              
                           
          });
});
      

                      