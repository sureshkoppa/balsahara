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
                                          document.ReceiptForm.submit();
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
		   $( "#dialog-form_receipt_reg" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                $( "#dialog-form_receipt_reg" ).html("");
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
           

                $('form#ReceiptForm').submit(function(){
                var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;  
           
                       
                
                var pur=jQuery( 'input[name=ReceiveOrPurchase]:checked' ).val();
                    
                      
                var max=0;
                //    alert("hidden val**"+document.getElementById("itr").value);
                 
                if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.ReceiptForm.receiptitemChecked.length;
                        }  
                
                     var total=0;
               
                      if(max!=1)
                      {
                          for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.ReceiptForm.receiptitemChecked[" + idx + "].checked") == true) {
                                    total += 1;
                                   }
                          } 
                      }
                     else
                     {
                                    if (document.ReceiptForm.receiptitemChecked.checked == true) 
                                        total=1;
                              
                     }   
                  
                     if(document.ReceiptForm.receipt_date.value.toString().length<1)
                     {
                        $dialog.html("<s:text name="js.err.entProcDate"/>");            
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }
                   else if(($("#receipt_from").val()).length<1)
                   {
                         $dialog.html("Please enter Purchase/Receipt From"); 
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                   
                   
                   }
                     else if(!specialchar.test($("#receipt_from").val()))
                    {
                        if(pur=='p')
                            {
                                $dialog.html("<s:text name="js.err.purFromNoSpl"/>");
                            }
                            else if(pur=='r')
                            {
                                $dialog.html("<s:text name="js.err.recFromNoSpl"/>");              
                            }
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
             <%--       else if(document.ReceiptForm.invoice_no.value.toString().length<1)
                    {
                          if(pur=='p')
                            {
                               $dialog.html("<s:text name="js.err.entInvNo"/>");
                            }
                            else if(pur=='r')
                            {
                                $dialog.html("<s:text name="js.err.entLetNo"/>");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                   }
                   
                   else if(document.ReceiptForm.invoice_no.value.toString().length>49)
                    {
                          if(pur=='p')
                            {
                            $dialog.html("<s:text name="js.err.invNoMax50"/>");
                            }
                            if(pur=='r')
                            {
                            $dialog.html("<s:text name="js.err.letNoMax50"/>");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    }
                    else if(document.ReceiptForm.invoice_date.value.toString().length<1)
                    {
                           if(pur=='p')
                            {
                                $dialog.html("<s:text name="js.err.entInvDate"/>");
                            }
                            else if(pur=='r')
                            {
                                $dialog.html("<s:text name="js.err.entLetDate"/>");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                   }
                 --%>
                    else if(document.ReceiptForm.receipt_remarks.value.toString().length>149)
                    {
                        
                        $dialog.html("<s:text name="js.err.recRemMax150"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                    }
                    else if(!specialchar.test($("#receipt_remarks").val()))
                    {
                         
                        $dialog.html("<s:text name="js.err.recRemNoSpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(total==0)
                    {
                        
                        $dialog.html("<s:text name="js.err.leastItemRec"/>");                           
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                        
                    }
                    else if(max!=1)
                      {
                   
                           for(var i=0;i< max;i++)
                           {
                           
                                 if (eval("document.ReceiptForm.receiptitemChecked[" + i + "].checked") == true) {
                                         if(!qoh_only.test(document.ReceiptForm.receiptitem_qoh[i].value))
                                          {
                                              $dialog.html("<s:text name="js.err.notValidQtyRecv"/>"+document.ReceiptForm.receipt_iname[i].value);
                                              
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                           else if(document.ReceiptForm.receiptitem_remarks[i].value.length>149)
                                         {
                                            
                                              $dialog.html("<s:text name="js.err.remMax150"/> "+document.ReceiptForm.receipt_iname[i].value);
                                             
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                         
                                     else if(!specialchar.test(document.ReceiptForm.receiptitem_remarks[i].value))
                                    {
                                        $dialog.html("<s:text name="js.err.remNoSpl"/>"+document.ReceiptForm.receipt_iname[i].value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }       
                                   }
                            }
                      } 
                       else
                            {
                                if(!qoh_only.test(document.ReceiptForm.receiptitem_qoh.value))
                                 {
                                              $dialog.html("<s:text name="js.err.notValidQtyRecv"/>"+document.ReceiptForm.receipt_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.ReceiptForm.receiptitem_remarks.value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150"/>"+document.ReceiptForm.receipt_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                    else if(!specialchar.test(document.ReceiptForm.receiptitem_remarks.value))
                                    {

                                        $dialog.html("<s:text name="js.err.remNoSpl"/>"+document.ReceiptForm.receipt_iname.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }        
                                
                                
                            }
        
                 $("#receipt_date_span").html("<s:text name="label.procureDate"/>:"+document.ReceiptForm.receipt_date.value.toString());  
                        if(pur=='p')
                        {
                            $("#receipt_from_span").html("<s:text name="label.purchaseFrom"/> :"+document.ReceiptForm.receipt_from.value.toString());       
                            $("#invoice_no_span").html("<s:text name="label.invPurNo"/>  :"+document.ReceiptForm.invoice_no.value.toString());
                            $("#invoice_date_span").html("<s:date name="label.invPurDate"/> :"+document.ReceiptForm.invoice_date.value.toString());           
                        }
                        else if(pur=='r')
                        {
                            $("#receipt_from_span").html("<s:text name="label.recvdFrom"/>:"+document.ReceiptForm.receipt_from.value.toString()); 
                            $("#invoice_no_span").html("<s:text name="label.letterNo"/>     :"+document.ReceiptForm.invoice_no.value.toString());
                            $("#invoice_date_span").html("<s:text name="label.letterDate"/> :"+document.ReceiptForm.invoice_date.value.toString());   
                        }
                            $("#receipt_remarks_span").html("<s:text name="label.recvRem"/>:"+document.ReceiptForm.receipt_remarks.value.toString()); 
                         
                         
                          if(max!=1)
                               {
                                   
                               $( "#receipt_reg_span tbody" ).html("");
                               
                                   for(var k=0;k< max;k++)
                                   {

                                        if (document.ReceiptForm.receiptitemChecked[ k ].checked == true) {
                                        $( "#receipt_reg_span tbody" ).append( "<tr>" +

                                                                            "<td>" +document.ReceiptForm.receipt_iname[ k ].value+"</td>" +
                                                                            "<td>" +document.ReceiptForm.receiptitem_qoh[ k ].value+ "</td>" +
                                                                            "<td>" +document.ReceiptForm.receiptitem_remarks[ k ].value+ "</td>" +
                                                                            "</tr>" );
                                         }
                                         else
                                         {
                                         continue;
                                         }
                                   }
                           
                           }
                               else
                                   {
                                     
					  	
                                       $( "#receipt_reg_span tbody" ).html( "<tr>" +
                                                                    
                                                                    "<td>" +document.ReceiptForm.receipt_iname.value+"</td>" +
                                                                    "<td>" +document.ReceiptForm.receiptitem_qoh.value+ "</td>" +
                                                                    "<td>" +document.ReceiptForm.receiptitem_remarks.value+ "</td>" +
                                                                    "</tr>" );
                                       
                                       
                                       
                                        
                                        
                                   }
                         document.getElementById('dialog-form_receipt_reg').style.visibility='visible'; 
                         $('#dialog-form_receipt_reg').dialog('open');
                                         return false;
                
                      
               
                    });
                    
});