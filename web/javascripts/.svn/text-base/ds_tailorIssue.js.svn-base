/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.TailorIssueForm
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_tailissue_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.TailorIssueForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#tailor_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#tailor_reg_span tbody" ).html("");
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
                                        $( "#tailor_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                 $('form#TailorIssueForm').submit(function(){
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
                        max=document.TailorIssueForm.tail_item_checked.length;
                        }  
                     
                  // var max1=document.TailorReceiveForm.tail_itemrecv_checked.length;
                     var total=0;
                     if(max!=1)
                      {
                      for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.TailorIssueForm.tail_item_checked[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                      }
                      else
                          {
                                    if (document.TailorIssueForm.tail_item_checked.checked == true) 
                                        total=1;
                              
                          }       
                      //      alert("total==="+total+"max===="+max);
                    if(document.TailorIssueForm.tailor_issue_date.value.toString().length<1)
                    {
                        $dialog.html("Sorry! Please Enter Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.TailorIssueForm.tailor_issue_letterno.value.toString().length<1)
                    {
                        
                        $dialog.html("Sorry! ----Please Enter Letter no");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                    else if(document.TailorIssueForm.tailor_issue_letterno.value.toString().length>49)
                    {
                        
                        $dialog.html("Sorry! ----Entered Letter no is too large(max 50 chars)");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                    else if(document.TailorIssueForm.tailor_issue_address.value.toString().length<1)
                    {
                        
                        $dialog.html("Sorry! ----Please Enter issue address");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#tailor_issue_address").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Tailor address");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(document.TailorIssueForm.tailor_issue_address.value.toString().length>254)
                    {
                        
                        $dialog.html("Sorry! ----Entered  address is too large(max 255 chars)");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                    else if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for issue");
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
                            //   alert("k==="+k);
                           
                            if (eval("document.TailorIssueForm.tail_item_checked[" + k + "].checked") == true) {
                           //       alert(document.ReceiptForm.receiptitem_qoh[i].value+"--i--"+i);

                             //        alert(document.IssueForm.issue_item_quantity[k].value+"quan"); 
                                     if(!qoh_only.test(document.TailorIssueForm.tail_rawcloth_quan[k].value))
                                          {
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.TailorIssueForm.tailissue_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorIssueForm.tail_rawcloth_remarks[k].value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.TailorIssueForm.tailissue_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                    else if(!specialchar.test(document.TailorIssueForm.tail_rawcloth_remarks[k].value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.TailorIssueForm.tailissue_iname11[k].value);
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
                                              $dialog.html("Quantity received is not correct or too large(eg:nnnn.nn) for "+document.TailorIssueForm.tailissue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorIssueForm.tail_rawcloth_remarks.value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.TailorIssueForm.tailissue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                    else if(!specialchar.test(document.TailorIssueForm.tail_rawcloth_remarks.value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.TailorIssueForm.tailissue_iname11.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }    
                                
                                
                            }
                            
                            
                        
                    
                    
                    
                              
                        //alert(document.TailorIssueForm.donation_item_quantity[0].value.toString());
                           $("#tailor_issue_date_span").html(document.TailorIssueForm.tailor_issue_date.value.toString());  
                           $("#tailor_letterno_span").html(document.TailorIssueForm.tailor_issue_letterno.value.toString()); 
                           $("#tailor_address_span").html(document.TailorIssueForm.tailor_issue_address.value.toString()); 
                           
 
                            if(max!=1)
                               {
                           for(var i=0;i<max;i++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.TailorIssueForm.donation_item_qunatity.item(str).value;
                             
                             if (eval("document.TailorIssueForm.tail_item_checked[" + i + "].checked") == true) {

                             
                               $( "#tailorissue_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +eval("document.TailorIssueForm.tailissue_iname11[" + i + "]").value+"</td>" +
                                                                    "<td>" +eval("document.TailorIssueForm.tail_rawcloth_quan[" + i + "]").value+ "</td>" +
                                                                    "<td>" +eval("document.TailorIssueForm.tail_rawcloth_remarks[" + i + "]").value+ "</td>" +
                                                                    "</tr>" );
                             }     
                             }
                               }
                               else
                                   {
                                       $( "#tailorissue_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.TailorIssueForm.tailissue_iname11.value+"</td>" +
                                                                    "<td>" +document.TailorIssueForm.tail_rawcloth_quan.value+ "</td>" +
                                                                    "<td>" +document.TailorIssueForm.tail_rawcloth_remarks.value+ "</td>" +
                                                                    "</tr>" );
                                       
                                       
                                   }
                               
                           }
                  document.getElementById('dialog-form_tailissue_reg').style.visibility='visible';
                
                                $('#dialog-form_tailissue_reg').dialog('open');
                                return false;
                                
                                  

	        });
	});




