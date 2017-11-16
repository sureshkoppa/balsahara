/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.TailorReceiveForm
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_tailreceive_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.TailorReceiveForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#tailor_receive_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#tailor_receive_reg_span tbody" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                
			}
		});
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 140,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
                                        $( "#tailor_receive_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                 $('form#TailorReceiveForm').submit(function(){
                     
                        var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;     
                       var max1;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max1=1;
                       }    
                       else    
                        {   
                        max1=document.TailorReceiveForm.tail_itemrecv_checked.length;
                        }  
                     
                  // var max1=document.TailorReceiveForm.tail_itemrecv_checked.length;
                     var total=0;
                                           
                                                           
                 // alert("total==="+total+"max==+++++++++="+max1);
                  if(max1!=1)
                      {
                      for (var idx = 0; idx < max1; idx++) {
                                    if (document.TailorReceiveForm.tail_itemrecv_checked[ idx ].checked == true) {
                                    total += 1;
                              }
                             }
                      }
                      else
                          {
                                    if (document.TailorReceiveForm.tail_itemrecv_checked.checked == true) 
                                        total=1;
                              
                          }
                      // alert("total==="+total+"max===="+max1);
                    if(document.TailorReceiveForm.tailor_receive_date.value.toString().length<1)
                    {
                        $dialog.html("Sorry! Please Enter Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.TailorReceiveForm.tailor_receive_letterno.value.toString().length<1)
                    {
                        
                        $dialog.html("Sorry! ----Please Enter Letter no");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                    else if(document.TailorReceiveForm.tailor_receive_address.value.toString().length<1)
                    {
                        
                        $dialog.html("Sorry! ----Please Enter receive address");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#tailor_receive_address").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in tailor address");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for receive");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                        
                    }
                     else
                        {
                            if(max1!=1)
                                {
                             for(var k=0;k<max1;k++)
                           {
                            //   alert("k==="+k);
                           
                            if (eval("document.TailorReceiveForm.tail_itemrecv_checked[" + k + "].checked") == true) {
                           //       alert(document.ReceiptForm.receiptitem_qoh[i].value+"--i--"+i);

                             //        alert(document.IssueForm.issue_item_quantity[k].value+"quan"); 
                                     if(!qoh_only.test(document.TailorReceiveForm.tail_stichcloth_quan[k].value))
                                          {
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.TailorReceiveForm.tailrecv_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorReceiveForm.tail_stichcloth_remarks[k].value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.TailorReceiveForm.tailrecv_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                     else if(!specialchar.test(document.TailorReceiveForm.tail_stichcloth_remarks[k].value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.TailorReceiveForm.tailrecv_iname11[k].value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }     

                             }
                           }
                   
                    
                            
                            
                        }
                        
                        else
                            {
                                if(!qoh_only.test(document.TailorReceiveForm.tail_stichcloth_quan.value))
                                 {
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.TailorReceiveForm.tailrecv_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorReceiveForm.tail_stichcloth_remarks.value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.TailorReceiveForm.tailrecv_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                 else if(!specialchar.test(document.TailorReceiveForm.tail_stichcloth_remarks.value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.TailorReceiveForm.tailrecv_iname11.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }
                                
                            }
                    
                               
                        //alert(document.TailorReceiveForm.donation_item_quantity[0].value.toString());
                           $("#tailor_receive_date_span").html(document.TailorReceiveForm.tailor_receive_date.value.toString());  
                           $("#tailor_receive_letterno_span").html(document.TailorReceiveForm.tailor_receive_letterno.value.toString()); 
                           $("#tailor_receive_address_span").html(document.TailorReceiveForm.tailor_receive_address.value.toString()); 
                           
 
                             
                           if(max1!=1)
                               {
                           for(var i=0;i<max1;i++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.TailorReceiveForm.donation_item_qunatity.item(str).value;
                             
                             if (eval("document.TailorReceiveForm.tail_itemrecv_checked[" + i + "].checked") == true) {

                             
                               $( "#tailor_receive_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +eval("document.TailorReceiveForm.tailrecv_iname11[" + i + "]").value+"</td>" +
                                                                    "<td>" +eval("document.TailorReceiveForm.tail_stichcloth_quan[" + i + "]").value+ "</td>" +
                                                                    "<td>" +eval("document.TailorReceiveForm.tail_stichcloth_remarks[" + i + "]").value+ "</td>" +
                                                                    "</tr>" );
                             }                               
                               
                           }
                               }
                               else
                                   {
                                       $( "#tailor_receive_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.TailorReceiveForm.tailrecv_iname11.value+"</td>" +
                                                                    "<td>" +document.TailorReceiveForm.tail_stichcloth_quan.value+ "</td>" +
                                                                    "<td>" +document.TailorReceiveForm.tail_stichcloth_remarks.value+ "</td>" +
                                                                    "</tr>" );
                                       
                                       
                                   }
                
                        }
                              document.getElementById('dialog-form_tailreceive_reg').style.visibility='visible';
                                $('#dialog-form_tailreceive_reg').dialog('open');
                                return false;
                                
                                 

	        });
	});




