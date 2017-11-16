/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_receipt_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.ReceiptForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#receipt_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#receipt_reg_span tbody" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                               // $( this ).dialog( "close" );
			}
		});
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 160,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
                                        $( "#receipt_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                $('form#ReceiptForm').submit(function(){
                var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;  
                 /*for checking either it is purchase or receive*/
                    var pur=null;
                    for (var index=0; index < document.ReceiptForm.ReceiveOrPurchase.length; index++) {
				if (document.ReceiptForm.ReceiveOrPurchase[index].checked) {
					pur = document.ReceiptForm.ReceiveOrPurchase[index].value;
					break;
				}
			}
                      
                  var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.ReceiptForm.receiptitemChecked.length;
                        }  
                
                     var total=0;
                //     var max=document.DonationForm.donation_item_chk.length;
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
                     //     alert(max+"::::"+total);
                    //alert("print");    
                   // alert("pur::"+pur+"total check::"+total+"all max::"+max);
                     if(document.ReceiptForm.receipt_date.value.toString().length<1)
                     {
                        $dialog.html("Sorry! Please Enter Procurement Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }
                    else if(document.ReceiptForm.receipt_from.value.toString().length<1)
                    {
                        if(pur=='p')
                            {
                        $dialog.html("Sorry! Please Enter Purchse From");
                            }
                            if(pur=='r')
                            {
                        $dialog.html("Sorry! Please Enter Receipt From");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(document.ReceiptForm.receipt_from.value.toString().length>254)
                    {
                        if(pur=='p')
                            {
                        $dialog.html("Sorry! Purchse From can not exceed 255 chars");
                            }
                            if(pur=='r')
                            {
                        $dialog.html("Sorry! Receipt From can not exceed 255 chars");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#receipt_from").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Received From");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                  /*  else if(document.ReceiptForm.invoice_no.value.toString().length<1)
                    {
                          if(pur=='p')
                            {
                        $dialog.html("Sorry! Please Enter Invoice No");
                            }
                            if(pur=='r')
                            {
                        $dialog.html("Sorry! Please Enter Letter No");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    else if(document.ReceiptForm.invoice_no.value.toString().length>49)
                    {
                          if(pur=='p')
                            {
                        $dialog.html("Sorry! Please Enter Invoice No can not exceed 50");
                            }
                            if(pur=='r')
                            {
                        $dialog.html("Sorry! Please Enter Letter No can not exceed 50");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                     else if(document.ReceiptForm.invoice_date.value.toString().length<1)
                    {
                          if(pur=='p')
                            {
                        $dialog.html("Sorry! Please Enter Invoice Date");
                            }
                            if(pur=='r')
                            {
                        $dialog.html("Sorry! Please Enter Letter Date");
                            }    
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    }                    }*/

                     else if(document.ReceiptForm.receipt_remarks.value.toString().length>149)
                    {
                         
                        $dialog.html("Sorry! remarks cant exceeed 150");
                              
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    }
                     else if(!specialchar.test($("#receipt_remarks").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Receipt Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                   
                     else if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for receipt/purchase");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                        
                    }
                   else
                        {
                            if(max!=1)
                                {
                   
                   for(var i=0;i<max;i++)
                           {
                           
                            if (eval("document.ReceiptForm.receiptitemChecked[" + i + "].checked") == true) {
                           //       alert(document.ReceiptForm.receiptitem_qoh[i].value+"--i--"+i);
                           //alert("i==="+i);

                                     if(!qoh_only.test(document.ReceiptForm.receiptitem_qoh[i].value))
                                          {
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.ReceiptForm.receipt_iname[i].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.ReceiptForm.receiptitem_remarks[i].value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.ReceiptForm.receipt_iname[i].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                         
                                     else if(!specialchar.test(document.ReceiptForm.receiptitem_remarks[i].value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.ReceiptForm.receipt_iname[i].value);
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
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.ReceiptForm.receipt_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.ReceiptForm.receiptitem_remarks.value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for"+document.ReceiptForm.receipt_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                    else if(!specialchar.test(document.ReceiptForm.receiptitem_remarks.value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.ReceiptForm.receipt_iname.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }        
                                
                                
                            }
                    
                        }
              
                   //alert("preview");
                        //alert(document.DonationForm.donation_item_quantity[0].value.toString());
                        $("#receipt_date_span").html(document.ReceiptForm.receipt_date.value.toString());  
                       // $("#receipt_from_span").html(document.ReceiptForm.donation_from.value.toString()); 
                         if(pur=='p')
                        {
                            $("#receipt_from_span").html("Purchase From  :"+document.ReceiptForm.receipt_from.value.toString()); 
                            $("#invoice_no_span").html("Invoice No     :"+document.ReceiptForm.invoice_no.value.toString());
                            $("#invoice_date_span").html("Invoice Date   :"+document.ReceiptForm.invoice_date.value.toString());
                        }
                        else if(pur=='r')
                        {
                            $("#receipt_from_span").html("Received From:"+document.ReceiptForm.receipt_from.value.toString()); 
                            $("#invoice_no_span").html("Letter No     :"+document.ReceiptForm.invoice_no.value.toString());
                            $("#invoice_date_span").html("Letter Date  :"+document.ReceiptForm.invoice_date.value.toString());              
                        }
                           $("#receipt_remarks_span").html(document.ReceiptForm.receipt_remarks.value.toString()); 
                         
                         
                          if(max!=1)
                               {
                         for(var k=0;k<max;k++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.DonationForm.donation_item_qunatity.item(str).value;
                             
                             
                             
                             if (document.ReceiptForm.receiptitemChecked[ k ].checked == true) {

                             
                               $( "#receipt_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.ReceiptForm.receipt_iname[ k ].value+"</td>" +
                                                                    "<td>" +document.ReceiptForm.receiptitem_qoh[ k ].value+ "</td>" +
                                                                    "<td>" +document.ReceiptForm.receiptitem_remarks[ k ].value+ "</td>" +
                                                                    "</tr>" );
                                        
                             }
                               
                               
                           }
                           
                           }
                               else
                                   {
                                       $( "#receipt_reg_span tbody" ).append( "<tr>" +
                                                                    
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
               