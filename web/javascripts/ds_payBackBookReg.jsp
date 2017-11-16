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
				
                                          
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                           document.PayBackForm.submit();
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
		   $( "#dialog-form_add_cat" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                         <%--       $( "#receipt_reg_span" ).html("");
                                    allFields.val("").removeClass( "ui-state-error" );   --%>
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

            <%--following function will be called when form is submitted--%>
			
			
			
			
			
			
			
                
                 $('form#PayBackForm').submit(function(){
                 
                var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;  
                
          
                 var total=0;
           
                  if(document.getElementById("itr")!=null)
                      {
                      var max;
                      if(document.getElementById("itr").value==1)
                       {
                           max=1;
                       }    
                       else    
                        {   
                             max=document.getElementById("itr").value;
                        }  
                       
                       
                           // alert("payback form"+document.getElementById("itr").value+"^^^^^^"+max);
                
                    
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                          for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.PayBackForm.loanTransId[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             } 
                      }
                              else
                          {
                                    if (document.PayBackForm.loanPrevList.checked == true) 
                                        total=1;
                              
                          }
                      }
                      else
                          {
                              total=0;
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
                  
                
                  if(document.PayBackForm.payBack_date.value.toString().length<1)
                     {
                        // alert("uioasduf");
                        if(locale=="en")
                            {
                        $dialog.html("Sorry! Please Enter Payback Date");
                            }
                            else if(locale=="hi")
                                {
                          $dialog.html("&#2325;&#2381;&#2359;&#2350;&#2366; &#2325;&#2352;&#2375;&#2306;! &#2315;&#2339; &#2349;&#2369;&#2327;&#2340;&#2366;&#2344; &#2340;&#2367;&#2341;&#2367;  &#2360;&#2306;&#2326;&#2381;&#2351;&#2366; &#2319;&#2306;&#2335;&#2352; &#2325;&#2352;&#2375;&#2306;");            
                                }
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }
                  else if(document.PayBackForm.payBack_remarks.value.toString().length>149)
                    {
                          if(locale=="en")
                            {
                        $dialog.html("Sorry! remarks cant exceeed 150");      
                            }
                            else if(locale=="hi")
                                {
                         $dialog.html("&#2325;&#2381;&#2359;&#2350;&#2366; &#2325;&#2352;&#2375;&#2306;! &#2335;&#2367;&#2346;&#2381;&#2346;&#2339;&#2368;  &#2350;&#2375;&#2306; &#2309;&#2343;&#2367;&#2325;&#2340;&#2350; 150 &#2325;&#2376;&#2352;&#2375;&#2325;&#2381;&#2335;&#2352; &#2358;&#2366;&#2350;&#2367;&#2354; &#2361;&#2379; &#2360;&#2325;&#2340;&#2375; &#2361;&#2376;&#2306;");  
                                }
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;                               
                   }
                 else if(!specialchar.test($("#payBack_remarks").val()))
                    {
                        if(locale=="en")
                            {  
                        $dialog.html("Sorry! Special Characters are not allowed in loan Remarks");
                            }
                        else if(locale=="hi")
                            {
                        $dialog.html("&#2325;&#2381;&#2359;&#2350;&#2366; &#2325;&#2352;&#2375;&#2306;!  &#2335;&#2367;&#2346;&#2381;&#2346;&#2339;&#2368; &#2350;&#2375;&#2306; &#2360;&#2381;&#2346;&#2375;&#2358;&#2354; &#2325;&#2376;&#2352;&#2375;&#2325;&#2381;&#2335;&#2352; &#2325;&#2368; &#2309;&#2344;&#2369;&#2350;&#2340;&#2367; &#2344;&#2361;&#2368;&#2306; &#2361;&#2376;");        
                            }
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                   else if(total==0)  
                     {
                         if(locale=="en")
                            {  
                        $dialog.html("Sorry! Select atleast one loan type");
                            }
                            else if(locale=="hi")
                                {
                       $dialog.html("&#2325;&#2381;&#2359;&#2350;&#2366; &#2325;&#2352;&#2375;&#2306;!  &#2325;&#2350; &#2360;&#2375; &#2325;&#2350; &#2319;&#2325; &#2315;&#2339;  &#2325;&#2366; &#2346;&#2381;&#2352;&#2325;&#2366;&#2352;  &#2330;&#2369;&#2344;&#2375;&#2306;&#2404; ");            
                                }
                                
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                     }  
                     
                     
                /*     
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
                   
                   for(var i=0;i< max;i++)
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
                                
                                       
                      */
            
                       
                    
                    
                    });
});
               