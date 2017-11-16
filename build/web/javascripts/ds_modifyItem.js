/*
 *The file is for validating 
 *entry of qunatity on hand 
 **/
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_enter_qoh" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            /*for submitting the form when this button is clicked*/
                                            document.ModifyItemForm1.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
                                    /*to set the whole preview to null as we are appending the fields in preview*/
                                        $( "#enter_qoh_preview" ).html("");
					$( this ).dialog( "close" );
				}
			},
			close: function() {
                            /*to set the whole preview to null as we are appending the fields in preview*/
                                $( "#enter_qoh_preview" ).html("");
				allFields.val("").removeClass( "ui-state-error" );
                                $( this ).dialog( "close" );
			}
		});

            /*this var $dialog is for displaying the error dialog box*/
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 150,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});

           /*following function will be called when OP Register form is submitted*/
           $('form#ModifyItemForm1').submit(function(){
                    /*validating the fields present in the form*/
                    /*****************REG EX*************************/
                    alert("in modify item");
                    var char_only=/^[a-zA-Z]+$/;
                    //var qoh_only=/^\d*.\d\d$/;                 //allows digits only
                    var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                    
                    var float_only=/^\d{1,10}(\.\d{0,2})?$/;
                     var Digits_only=/^[0-9]{1,10}.\d\d$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    var specialchar= /^[^<>%$]*$/;         
                    /*****************REG EX*************************/
                  
                  
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
                alert("------>"+max);
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
             alert("total---->"+total);
             if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for Entering Quantity");
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
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.DonationForm.donation_item_qunatity.item(str).value;
                          //   alert(document.ModifyItemForm1.modifyItem_itemNo[i].checked+"::="+i);
                             
                             if (document.ModifyItemForm1.modifyItem_itemNo[i].checked== true) {
                           //    alert(document.ModifyItemForm1.modifyItem_qoh[i].value);

                                     if(!qoh_only.test(document.ModifyItemForm1.modifyItem_qoh[i].value))
                                          {
                                              $dialog.html("Entered quantity is not correct or too large(eg:nnnn.nn) for "+document.ModifyItemForm1.modifyitem_iname[i].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                  /*        alert();
                                      else if(!specialchar.test($("#interviewer").val()))
                                        {

                                            $dialog.html("Sorry! Special Characters are not allowed in Interviewer Name");
                                            $dialog.parent().addClass( "ui-state-error" );
                                            $dialog.dialog('open');
                                            return false;

                                        }  */   
                                       
                                      

                             }
                           }
                    }
                    else
                        {
                               if(!qoh_only.test(document.ModifyItemForm1.modifyItem_qoh.value))
                                 {
                                              $dialog.html("Quantity Entered is not correct or too large(eg:nnnn.nn) for "+document.ModifyItemForm1.modifyitem_iname.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                        }
              }
                           
                           if(max!=1)
                               {
                           for(var j=0;j<max;j++)
                           {
                               if (document.ModifyItemForm1.modifyItem_itemNo[j].checked== true) {
                               $( "#enter_qoh_preview tbody" ).append( "<tr>" +
                                                                    
                                                                    "<td>" +document.ModifyItemForm1.modifyitem_iname[j].value+"</td>" +
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
      

                      