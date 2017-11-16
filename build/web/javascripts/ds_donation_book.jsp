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
				//alert("after submit-----");
                                          
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.DonationForm.submit();
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
		   $( "#dialog-form_donation_reg" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                           <%--        $( "#donate_reg_span tbody" ).html("");
                                       allFields.val("").removeClass( "ui-state-error" ); --%>
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
			
			
                 $('form#DonationForm').submit(function(){
                     var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;
                 var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.DonationForm.donation_item_chk.length;
                        }  
                
                     var total=0;
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                      for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.DonationForm.donation_item_chk[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                          }
                      else
                          {
                                    if (document.DonationForm.donation_item_chk.checked == true) 
                                        total=1;
                              
                          }   
                          //alert("<------>");
                          //alert("::::"+document.DonationForm.donation_from.value.toString());
                    if(document.DonationForm.donation_date.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entDonDate"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.DonationForm.donation_from.value.toString().length<1)
                    {
                        
                        $dialog.html("<s:text name="js.err.entDonFrom"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(document.DonationForm.donation_from.value.toString().length>254)
                    {
                        
                        $dialog.html("<s:text name="js.err.donFromMax255"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#donation_from").val()))
                    {

                        $dialog.html("<s:text name="js.err.donFromNoSpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                     else if(document.DonationForm.donation_remarks.value.toString().length>149)
                    {
                         
                        $dialog.html("<s:text name="js.err.donRemMax150"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    }
                     else if(!specialchar.test($("#donation_remarks").val()))
                    {

                        $dialog.html("<s:text name="js.err.donRemNoSpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(total==0)
                    {
                        $dialog.html("<s:text name="js.err.leastItemDon"/>");
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
                           
                            if (eval("document.DonationForm.donation_item_chk[" + k + "].checked") == true) {
                           //       alert(document.ReceiptForm.receiptitem_qoh[i].value+"--i--"+i);

                                     if(!qoh_only.test(document.DonationForm.donation_item_qunatity[k].value))
                                          {
                                              $dialog.html("<s:text name="js.err.notValidQtyEntr"/> "+document.DonationForm.donation_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.DonationForm.donation_item_remarks[k].value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150"/>"+document.DonationForm.donation_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                     else if(!specialchar.test(document.DonationForm.donation_item_remarks[k].value))
                                    {

                                        $dialog.html("<s:text name="js.err.remNoSpl"/> "+document.DonationForm.donation_iname11[k].value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }           
                                      

                             }
                           }
                   
                    }
                    
                            
                        
                        
                        else
                            {
                                if(!qoh_only.test(document.DonationForm.donation_item_qunatity.value))
                                 {
                                              $dialog.html("<s:text name="js.err.notValidQtyEntr"/> "+document.DonationForm.donation_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.DonationForm.donation_item_remarks.value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150"/>"+document.DonationForm.donation_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                      else if(!specialchar.test(document.DonationForm.donation_item_remarks.value))
                                    {

                                        $dialog.html("<s:text name="js.err.remNoSpl"/>"+document.DonationForm.donation_iname11.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }       
                                
                                
                            }
                    
                        }
                    
               //      if(document.getElementsByName('donation_item_chk').length>1)
               //     {            
                        //alert(document.DonationForm.donation_item_quantity[0].value.toString());
                           $("#donation_date_span").html(document.DonationForm.donation_date.value.toString());  
                           $("#donation_from_span").html(document.DonationForm.donation_from.value.toString()); 
                           $("#donation_remarks_span").html(document.DonationForm.donation_remarks.value.toString()); 
                           
                           
//                           // $("#test_span").html("****len000*****"+document.getElementById('donation_item_chk').value.length);
//                            $("#test_span").html("****len by name*****"+document.getElementsByName('donation_item_chk').length);
//                           $("#test_span").html("****len1*****"+document.getElementById('donation_item_chk').childNodes);
//                           $("#test_span").html("****len2*****"+document.getElementById('donation_item_chk').childNodes);
//                           $("#test_span").html("****len3*****"+document.getElementById('donation_item_chk').ENTITY_NODE);
//                           $("#test_span").html("****len4*****"+document.getElementById('donation_item_chk').CDATA_SECTION_NODE);
//                            $("#test_span").html("****len5*****"+document.getElementsByTagName("s:checkbox"));   
//                             $("#test_span").html("****len6*****"+document.getElementsByTagName("donation_item_chk")); 
//                              $("#test_span").html("****len7*****"+document.getElementsByTagName("donation_item_chk").length); 

                             
                             if(max!=1)
                               {
                           for(var i=0;i< max;i++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.DonationForm.donation_item_qunatity.item(str).value;
                             
                             if (eval("document.DonationForm.donation_item_chk[" + i + "].checked") == true) {

                             
                               $( "#donate_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +eval("document.DonationForm.donation_iname11[" + i + "]").value+"</td>" +
                                                                    "<td>" +eval("document.DonationForm.donation_item_qunatity[" + i + "]").value+ "</td>" +
                                                                    "<td>" +eval("document.DonationForm.donation_item_remarks[" + i + "]").value+ "</td>" +
                                                                    "</tr>" );
                                        
                             }
                               
                               
                           }
                             }
                               else
                                   {
                                       $( "#donate_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.DonationForm.donation_iname11.value+"</td>" +
                                                                    "<td>" +document.DonationForm.donation_item_qunatity.value+ "</td>" +
                                                                    "<td>" +document.DonationForm.donation_item_remarks.value+ "</td>" +
                                                                    "</tr>" );
                                       
                                       
                                   }
                
                        
                
                
                                  document.getElementById('dialog-form_donation_reg').style.visibility='visible';
                    
                       $('#dialog-form_donation_reg').dialog('open');
                                return false;
                  //}


            
                       // }


	        });
	});


