/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_issue_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.IssueForm.submit();
						$( this ).dialog( "close" );
					}
                                },
				Cancel: function() {
                                        $( "#issue_reg_span tbody" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                                $( "#issue_reg_span tbody" ).html("");
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
                                        $( "#issue_reg_span tbody" ).html("");
					$dialog.dialog('close');
                                    }
			}
		});
                $('form#IssueForm').submit(function(){
                     var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;    
                    
                   var max,total=0;
                    
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                        max=document.IssueForm.issue_item_chk.length;
                        }  
                     
                // alert("max------>"+max);
                    if(max!=1)
                      {
                             for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.IssueForm.issue_item_chk[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                       }
                      else
                          {
                                    if (document.IssueForm.issue_item_chk.checked == true) 
                                        total=1;
                              
                          }    
                     // alert("total------->"+total);    
                                  
                    var issueto=null;
                    for (index=0; index < document.IssueForm.issue_to_radio.length; index++) {
				if (document.IssueForm.issue_to_radio[index].checked) {
					issueto = document.IssueForm.issue_to_radio[index].value;
					break;
				}
			}   
                    //    alert("issue to------>"+issueto);
                   //for child start    
                   var maxc,totalc=0;
                    if(issueto=='in')
                      {
                          if(document.getElementById("itrc").value==1 )
                         {
                           maxc=1;
                       }    
                       else    
                        {   
                        maxc=document.IssueForm.select_childs_ids.length;
                        }  
                       
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
                             // alert("maxc----->"+maxc+"totalc------>"+totalc);
                  //for child ends
                         
                  //  alert("check value max:: "+ max +" total: "+ total+" issue to:"+issueto  );
                    if(document.IssueForm.issue_date.value.toString().length<1)
                    {
                        $dialog.html("Sorry! Please Enter------issue Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(issueto==null)
                    {
                        
                        $dialog.html("Sorry! Please select Issued to");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                 else if(issueto=='sh'&&$("#select_stake_holders").val()=='Others'&&$("#shname_other_issued").val()=='')
                     {   
                        
                                    $dialog.html("Sorry! Enter Name Other Stake Holder");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                      }
                      else if(issueto=='sh'&&$("#select_stake_holders").val()=='Others'&&$("#shdesig_other_issued").val()=='')
                      {
                                    $dialog.html("Sorry! Enter Designation Other Stake Holder");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                      
                        
                     }
                else if(issueto=='in'&&totalc==0)
                     {
                    
                        $dialog.html("Sorry! Select atleast one child for issue");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                          
                     } 
                  
                     else if(document.IssueForm.issue_remarks.value.toString().length>149)
                         {
                               $dialog.html("Sorry! Remarks length is maximum 150 chars");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                             
                             
                         }
                      else if(!specialchar.test($("#issue_remarks").val()))
                    {

                        $dialog.html("Sorry! Special Characters are not allowed in Remarks");
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
                           
                            if (eval("document.IssueForm.issue_item_chk[" + k + "].checked") == true) {
                           //       alert(document.ReceiptForm.receiptitem_qoh[i].value+"--i--"+i);

                             //        alert(document.IssueForm.issue_item_quantity[k].value+"quan"); 
                                     if(!qoh_only.test(document.IssueForm.issue_item_quantity[k].value))
                                          {
                                              $dialog.html("Quantity issued is not correct or too large(eg:nnnn.nn) for "+document.IssueForm.issue_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.IssueForm.issue_item_remarks[k].value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.IssueForm.issue_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                     else if(!specialchar.test(document.IssueForm.issue_item_remarks[k].value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.IssueForm.issue_iname11[k].value);
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
                                              $dialog.html("Quantity issued is not correct or too large(eg:nnnn.nn) for "+document.IssueForm.issue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.IssueForm.issue_item_remarks.value.length>149)
                                         {
                                              $dialog.html("Remarks too long .Max(150 chars) for "+document.IssueForm.issue_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                      else if(!specialchar.test(document.IssueForm.issue_item_remarks.value))
                                    {

                                        $dialog.html("Sorry! Special Characters are not allowed in remarks for "+document.IssueForm.issue_iname11.value);
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false;

                                    }     
                                
                                
                            }
                    
                            
                            
                        }
                    //alert(document.DonationForm.donation_item_quantity[0].value.toString());
                           $("#issue_date_span").html(document.IssueForm.issue_date.value.toString());
                           if(issueto=='sh')
                               {
                                   $("#issue_to_span").html($("#select_stake_holders option:selected").text());
                               }
                               else if(issueto=='in')
                                   {
                                       
                                       var c_value = "";
                                       for (var j=0; j < document.IssueForm.select_childs_ids.length; j++)
                                       {
                                            if (document.IssueForm.select_childs_ids[j].checked)
                                            {
                                                c_value =c_value + document.IssueForm.select_childs_ids[j].value + "\n";
                                            }
                                       }
                                     //  alert(c_value+"--in--");
                                       $("#issue_to_span").html(c_value);
                                   }
                          // $("#issue_from_span").html(document.IssueForm.issue_to_radio.value.toString()); 
                           $("#issue_remarks_span").html(document.IssueForm.issue_remarks.value.toString()); 
                           if(max!=1)
                               {
                           for(var i=0;i<max;i++)
                           {
                           
                           if (eval("document.IssueForm.issue_item_chk[" + i + "].checked") == true) {

                             
                               $( "#issue_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +eval("document.IssueForm.issue_iname11[" + i + "]").value+"</td>" +
                                                                    "<td>" +eval("document.IssueForm.issue_item_quantity[" + i + "]").value+ "</td>" +
                                                                    "<td>" +eval("document.IssueForm.issue_item_remarks[" + i + "]").value+ "</td>" +
                                                                    "</tr>" );
                                        
                             }
                           
                           
                          }
                        
                     }
                               else
                                   {
                                       $( "#issue_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.IssueForm.issue_iname11.value+"</td>" +
                                                                    "<td>" +document.IssueForm.issue_item_quantity.value+ "</td>" +
                                                                    "<td>" +document.IssueForm.issue_item_remarks.value+ "</td>" +
                                                                    "</tr>" );
                                       
                                       
                                   }
                          document.getElementById('dialog-form_issue_reg').style.visibility='visible';
                    
                    
                         $('#dialog-form_issue_reg').dialog('open');
                                return false;
                                
                                 
                });
});
                
                    
