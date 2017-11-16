/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_dietissue_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.DietIssueForm.submit();
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
                        $dialog.html("Sorry! Please Enter Diet issue Date");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }  
                   else  if(!Digits_only.test($('#dietReg_srChilds').val()))
                    {
                        $dialog.html("Sorry! Enterd Senior Child is not correct");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    } 
                   else  if(!Digits_only.test($('#dietReg_jrChilds').val()))
                    {
                        $dialog.html("Sorry! Enterd Junior Child is not correct");
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
                            
                            $("#dietissue_date_span").html(document.DietIssueForm.dietIssue_date.value.toString());  
                           $("#dietissue_srchild_span").html(document.DietIssueForm.dietReg_srChilds.value.toString()); 
                           $("#dietissue_jrchild_span").html(document.DietIssueForm.dietReg_jrChilds.value.toString()); 
                           
                            if(max!=1)
                                {
                            for(var i=0;i<max;i++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.DonationForm.donation_item_qunatity.item(str).value;
                             
                             if (eval("document.DietIssueForm.diet_itemNo[" + i + "].checked") == true) {

                             
                               $( "#dietissue_reg_span tbody" ).append( "<tr>" +
                                                   "<td>" +eval("document.DietIssueForm.dietissue_iname[" + i + "]").value+"</td>" +
                                                   "<td>" +eval("document.DietIssueForm.act_issued[" + i + "]").value+"</td>" +
                                           
                                   "</tr>" );
                                        
                             }
                               
                               
                           }
                           
                           
                            }
                               else
                                   {
                                       $( "#dietissue_reg_span tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.DietIssueForm.dietissue_iname.value+"</td>" +
                                                                    "<td>" + document.DietIssueForm.act_issued.value+"</td>" +
                                                                      "</tr>" );
                                       
                                       
                                   }
                           
                           
                           
                                  document.getElementById('dialog-form_dietissue_reg').style.visibility='visible';
                    
                       $('#dialog-form_dietissue_reg').dialog('open');
                                return false;
                    }


            



	        });
	});
