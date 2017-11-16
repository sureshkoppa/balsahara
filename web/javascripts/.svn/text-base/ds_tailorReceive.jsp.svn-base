/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

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
                                           document.TailorReceiveForm.submit();
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
		   $( "#dialog-form_tailor_receive" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                    $( "#dialog-form_tailor_receive" ).html("");
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

            <%--following function will be called when form is submitted--%>
			
			

            
             $('form#TailorReceiveForm').submit(function(){
                     
                        var char_only=/^[a-zA-Z]+$/;
                var Digits_only=/^[0-9]{1,3}$/;
                var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                var qoh_only=/^\d{1,8}(\.\d{0,3})?$/;
                var specialchar= /^[^<>%$]*$/;     
                       
                    if(document.TailorReceiveForm.tailor_receive_date.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="js.err.entTailRecDate"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                    else if(document.TailorReceiveForm.tailor_receive_letterno.value.toString().length<1)
                    {
                        
                        $dialog.html("<s:text name="js.err.tailLetNo"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                    else if(document.TailorReceiveForm.tailor_receive_address.value.toString().length<1)
                    {
                        
                        $dialog.html("<s:text name="js.err.tailRecAddr"/>"); 
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                    }
                     else if(!specialchar.test($("#tailor_receive_address").val()))
                    {

                    $dialog.html("<s:text name="js.err.tailAddrNoSpl"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                     else if($("#tailor_receive_address").val()>255)
                    {

                    $dialog.html("<s:text name="js.err.tailAddrMax255"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;

                    }  
                    else if(total==0)
                    {
                        $dialog.html("<s:text name="js.err.leastTailRec"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                        
                    }
                     else
                        {
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
                          if(max1!=1)
                          {
                             for(var k=0;k< max1;k++)
                             {
                       
                           
                                  if (eval("document.TailorReceiveForm.tail_itemrecv_checked[" + k + "].checked") == true) {
                       

                       
                                     if(!qoh_only.test(document.TailorReceiveForm.tail_stichcloth_quan[k].value))
                                          {
                                          $dialog.html("<s:text name="js.err.notValidQtyRecv"/> "+document.TailorReceiveForm.tailrecv_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorReceiveForm.tail_stichcloth_remarks[k].value.length>149)
                                         {
                                         $dialog.html("<s:text name="js.err.remMax150"/> "+document.TailorReceiveForm.tailrecv_iname11[k].value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                     else if(!specialchar.test(document.TailorReceiveForm.tail_stichcloth_remarks[k].value))
                                    {

                                    $dialog.html("<s:text name="js.err.remNoSpl"/> "+document.TailorReceiveForm.tailrecv_iname11[k].value);
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
                                              $dialog.html("<s:text name="js.err.notValidQtyRecv"/>"+document.TailorReceiveForm.tailrecv_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                          }
                                     else if(document.TailorReceiveForm.tail_stichcloth_remarks.value.length>149)
                                         {
                                              $dialog.html("<s:text name="js.err.remMax150"/>  "+document.TailorReceiveForm.tailrecv_iname11.value);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                         }
                                 else if(!specialchar.test(document.TailorReceiveForm.tail_stichcloth_remarks.value))
                                    {

                                        $dialog.html("<s:text name="js.err.remNoSpl"/> "+document.TailorReceiveForm.tailrecv_iname11.value);
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
                           for(var i=0;i< max1;i++)
                           {
                             //  var str=document.getElementsByName('donation_item_chk').item(i).value;
                             //  var val=document.TailorReceiveForm.donation_item_qunatity.item(str).value;
                             
                                if (eval("document.TailorReceiveForm.tail_itemrecv_checked[" + i + "].checked") == true) 
								{

                             
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
                              document.getElementById('dialog-form_tailor_receive').style.visibility='visible';
                                $('#dialog-form_tailor_receive').dialog('open');
                                return false;
                                
                   });
	});



