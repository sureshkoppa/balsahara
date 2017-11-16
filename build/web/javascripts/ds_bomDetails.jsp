<%@taglib prefix="s" uri="/struts-tags"%>
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 alert("hidddddd");
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
                                          
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.BOMForm.submit();
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
                                $( "#addcat_preview" ).html("");
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

                $('form#BOMForm').submit(function(){
                     var char_only=/^[a-zA-Z]+$/;
                     var Digits_only=/^[0-9]{1,3}$/;
                     var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;  
                     var qoh_only=/^\d{1,8}(\.\d{0,2})?$/;
                
                       //     alert("------itr----"+document.getElementById("itr").value);
                        
                       var max=document.getElementById("itr").value;
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                      for (var i = 0; i < max; i++) {
                          var itemNO=document.BOMForm.bomItemNo[i].value;
                          
                          //alert("------->itemno--->"+itemNO+"  name "+document.getElementById("bomItemName_"+itemNO).value);
                       //   alert("---->"+document.getElementById('bom_quantity_'+itemNO).value);
                      //    alert("---------itemNO-->"+itemNO+"-----val------"+document.getElementbom_quantity[itemNO].value);
                                    if (!qoh_only.test(document.getElementById('bom_quantity_'+itemNO).value )) {
                                              $dialog.html("<s:text name="js.err.notValidQty"/> "+document.getElementById("bomItemName_"+itemNO).value+");
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                              }
                             }
                          }
                      else
                          {
                                    if (document.BOMForm.bom_quantity.checked == true) 
                                        total=1;
                              
                          }   
   
   
   
   
   
   
                });



	        });
               


