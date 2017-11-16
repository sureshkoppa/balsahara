/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_loan_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.LoanForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#loan_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#loan_reg_span tbody" ).html("");
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
                                        $( "#loan_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                
                
                
                 $('form#LoanForm').submit(function(){
                 
                var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;  
                var max;
                 var pur=null;
                    for (var index=0; index < document.LoanForm.LoanGiveOrTake.length; index++) {
				if (document.LoanForm.LoanGiveOrTake[index].checked) {
					pur = document.LoanForm.LoanGiveOrTake[index].value;
					break;
				}
			}
                        
                        if(pur=='g')
                            {
                                pur="Loan Given";
                            }
                        else if(pur=='t')
                            {
                                pur="Loan Taken";
                            }
                            
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.LoanForm.receiptitemChecked.length;
                        }  
                
                     var total=0;
                //     var max=document.LoanForm.donation_item_chk.length;
                  if(max!=1)
                      {
                      for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.LoanForm.receiptitemChecked[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                          }
                      else
                          {
                                    if (document.LoanForm.receiptitemChecked.checked == true) 
                                        total=1;
                              
                          }   
                 /*for checking either it is purchase or receive
                    var pur=null;
                    for (var index=0; index < document.LoanForm.ReceiveOrPurchase.length; index++) {
				if (document.LoanForm.ReceiveOrPurchase[index].checked) {
					pur = document.LoanForm.ReceiveOrPurchase[index].value;
					break;
				}
			}
                      */
                  if(document.LoanForm.loan_date.value.toString().length<1)
                     {
                        // alert("uioasduf");
                        $dialog.html("Sorry! Please Enter Loan Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }
                      else if(document.LoanForm.loan_remarks.value.toString().length>149)
                    {
                         
                        $dialog.html("Sorry! remarks cant exceeed 150");
                              
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    }
                     else if(!specialchar.test($("#loan_remarks").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in loan Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                     
                     
                     
                      else if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for Loan");
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
                           
                            if (eval("document.LoanForm.receiptitemChecked[" + i + "].checked") == true) {
                           //       alert(document.LoanForm.loanitem_qoh[i].value+"--i--"+i);
                           //alert("i==="+i);

                                     if(!qoh_only.test(document.LoanForm.receiptitem_qoh[i].value))
                                          {
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.LoanForm.receipt_iname[i].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.LoanForm.receiptitem_remarks[i].value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.LoanForm.receipt_iname[i].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                         
                                     else if(!specialchar.test(document.LoanForm.receiptitem_remarks[i].value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.LoanForm.receipt_iname[i].value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }       
                                      

                             }
                           }
                   
                    }
                    
                       else
                            {
                                if(!qoh_only.test(document.LoanForm.receiptitem_qoh.value))
                                 {
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.LoanForm.receipt_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.LoanForm.receiptitem_remarks.value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for"+document.LoanForm.receipt_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                    else if(!specialchar.test(document.LoanForm.receiptitem_remarks.value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.LoanForm.receipt_iname.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }        
                                
                                
                            }
                    
                        }
                      //  alert("test--");
                $("#loan_date_span").html(document.LoanForm.loan_date.value.toString());
                $("#loan_type_span").html(pur);
                $("#loan_homeId_span").html(document.LoanForm.loan_homeId.value.toString());
                $("#loan_remarks_span").html(document.LoanForm.loan_remarks.value.toString());
               
                    
                          if(max!=1)
                               {
                         for(var k=0;k<max;k++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.LoanForm.donation_item_qunatity.item(str).value;
                             
                             
                             
                             if (document.LoanForm.receiptitemChecked[ k ].checked == true) {

                             
                               $( "#loan_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.LoanForm.receipt_iname[ k ].value+"</td>" +
                                                                    "<td>" +document.LoanForm.receiptitem_qoh[ k ].value+ "</td>" +
                                                                    "<td>" +document.LoanForm.receiptitem_remarks[ k ].value+ "</td>" +
                                                                    "</tr>" );
                                        
                             }
                               
                               
                           }
                           
                           }
                               else
                                   {
                                       $( "#loan_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.LoanForm.receipt_iname.value+"</td>" +
                                                                    "<td>" +document.LoanForm.receiptitem_qoh.value+ "</td>" +
                                                                    "<td>" +document.LoanForm.receiptitem_remarks.value+ "</td>" +
                                                                    "</tr>" );
                                       
                                       
                                   }
                
                   
               
       
                     
                    document.getElementById('dialog-form_loan_reg').style.visibility='visible';
                    
                       $('#dialog-form_loan_reg').dialog('open');
                                return false;
                                
                                       
                    
                       
                    
                    
                    });
});
               