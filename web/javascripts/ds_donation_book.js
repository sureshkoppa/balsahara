/* 
 * donation book in INVENTORY
 * error check and preview
 * AUTHOR :SURESH
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_donation_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.DonationForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#donate_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#donate_reg_span tbody" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                
			}
		});
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 130,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
                                        $( "#donate_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
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
                        $dialog.html("Sorry! Please Enter Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.DonationForm.donation_from.value.toString().length<1)
                    {
                        
                        $dialog.html("Sorry! ----Please Enter Donate From");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(document.DonationForm.donation_from.value.toString().length>254)
                    {
                        
                        $dialog.html("Sorry! ---Donate From is too long(max 255 chars)");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#donation_from").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Donation From");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                     else if(document.DonationForm.donation_remarks.value.toString().length>149)
                    {
                         
                        $dialog.html("Sorry! remarks cant exceeed 150 characters");
                              
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                            
                            
                    }
                     else if(!specialchar.test($("#donation_remarks")))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Remarks");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for donation");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                        
                    }
                    
                      else
                        {
                            if(max!=1)
                                {
                   for(var k=0;k<max;k++)
                           {
                           
                            if (eval("document.DonationForm.donation_item_chk[" + k + "].checked") == true) {
                           //       alert(document.ReceiptForm.receiptitem_qoh[i].value+"--i--"+i);

                                     if(!qoh_only.test(document.DonationForm.donation_item_qunatity[k].value))
                                          {
                                              $dialog.html("Quantity donated is not correct or too large(eg:nnnn.nn)  "+document.DonationForm.donation_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.DonationForm.donation_item_remarks[k].value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.DonationForm.donation_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                     else if(!specialchar.test(document.DonationForm.donation_item_remarks[k].value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.DonationForm.donation_iname11[k].value);
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
                                              $dialog.html("Quantity donated is not correct or too large(eg:nnnn.nn) for "+document.DonationForm.donation_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.DonationForm.donation_item_remarks.value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.DonationForm.donation_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                      else if(!specialchar.test(document.DonationForm.donation_item_remarks.value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.DonationForm.donation_iname11.value);
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
                           for(var i=0;i<max;i++)
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


