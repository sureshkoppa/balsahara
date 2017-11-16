<%@taglib prefix="s" uri="/struts-tags"%>
<%--this file is used to validate and show preview for Add Item Register Form --%>
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
				alert("after submit-----");
                                          var bValid = true;
					                      if ( bValid ) 
										  {
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.RemoveItemForm.submit();
						                  $( this ).dialog( "close" );
					                      }
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
		   $( "#dialog-form_add_item" ).dialog({
			   autoOpen: false,
			   height: 400,
			   width: 350,
			   modal: true,
			   buttons: preButL10n,
			   close: function() {                      
                                 $( "#additem_preview" ).html("");
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
			function count_opt(oSelect)
          {
              
              var count=0;
            //  alert("opt count---"+count+"+++++++++++"+oSelect);
              for(var i=0;i< oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                      //  if(count>maxNum){
                      //     alert("Can't select more than 3");
                      //     return false;
                      //  }
                 }
                 return count;
                // alert("opt count2---"+count);
                 
          }
		  function poulate_item()
		  {
		  var con=document.getElementById("removeitem_items_select");
                        // alert("opt count3---"+con);
						
						
                         if(count_opt(con)==0)
                        {
                           // alert("opt count4---");
                            $dialog.html("Sorry! Select at least 1 sub Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                            
                       // alert("opt count------5---");
          
            document.getElementById('RemoveItemForm').action="DS-removeItem-popSelectItem";
            document.getElementById('RemoveItemForm').submit();
                        }
			}
                    $('form#RemoveItemForm').submit(function(){
                    <%--validating the fields present in the form--%>
                    
                    var char_only=/^[a-zA-Z]+$/;
                    //var qoh_only=/^\d*.\d\d$/;                 //allows digits only
                    var qoh_only=/^\d{1,8}(\.\d{0,2})?$/;
                    var float_only=/^\d{1,10}(\.\d{0,2})?$/;
                   // var digits_only=/^\d+(\.\d+)?$/;
                    var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    var indian_phno = /^[0-9]{1,10}$/;
                    var zip_code=/^([0-9]{6})$/;
                    var Digits_only=/^[0-9]{1,10}.\d\d$/;
                    var email_Reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var user_pass_regex=/^[a-zA-Z0-9_]{5,20}$/;
                    var specialchar= /^[^<>%$]*$/;
          
                    var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                            
                         
                        max=document.RemoveItemForm.itemChecked.length;
                        }  
                //alert("------>"+max);
                     var total=0;
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                            for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.RemoveItemForm.itemChecked[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                          }
                      else
                          {
                                    if (document.RemoveItemForm.itemChecked.checked == true) 
                                        total=1;
                              
                          }
             
             if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one item for Remove");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
             else
              {
                     document.getElementById('RemoveItemForm').action="DS-deleteItemSubAction-listDeleteItem";
                     document.getElementById('RemoveItemForm').submit();
              }
             
             
             
         });
          });
        
