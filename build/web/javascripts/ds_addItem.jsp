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
				
                                          var bValid = true;
					                      if ( bValid ) 
										  {
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.AddItemForm.submit();
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

           $('form#AddItemForm').submit(function(){
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
                    
                     if($("#removeitem_items_select").val()=="select")
                        {
                             
                            $dialog.html("<s:text name="js.err.subCatSelect"/>");                             
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#additem_newitem_itemName").val().length<1)
                        {
                            
                            $dialog.html("<s:text name="js.err.entItemName"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#additem_newitem_itemName").val().length>74)
                        {
                            
                            $dialog.html("<s:text name="js.err.itemNameMax75"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;    
                        }
                         else if(!specialchar.test($("#additem_newitem_itemName").val()))
                         {
                            
                            $dialog.html("<s:text name="js.err.itemNameNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }  
                        else if($("#additem_newitem_itemSpec").val().length>150)
                        {
                            $dialog.html("<s:text name="js.err.specMax150"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;    
                        }
                         else if(!specialchar.test($("#additem_newitem_itemSpec").val()))
                        {
                            
                            $dialog.html("<s:text name="js.err.specNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }  
                         else if($("#additem_newitem_itemUom").val()=="select")
                        {
                            
                            $dialog.html("<s:text name="js.err.selUom"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#additem_newitem_itemPrice").val().length<1)
                        {
                            
                            $dialog.html("<s:text name="js.err.entUnitPrice"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                         else if(!float_only.test($("#additem_newitem_itemPrice").val()))
                        {
                            $dialog.html("<s:text name="js.err.notValidPrice"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }  
                        else if($("#additem_newitem_itemRemarks").val().length>150)
                        {                             
                            $dialog.html("<s:text name="js.err.remMax150"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;    
                            
                        }
                         else if(!specialchar.test($("#additem_newitem_itemRemarks").val()))
                        {
                            
                            $dialog.html("<s:text name="js.err.remNoSpl"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;

                        }  
                      else
                      {
                          /*making the form details visible in preview*/
                           document.getElementById('dialog-form_add_item').style.visibility='visible';
                          $( "#additem_preview" ).append( "<tr><td align='right'><s:text name="label.prodTopcat"/>:</td><td>"+$("#addcat_prodcat_select option:selected").text()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.prodSubcat"/>:</td><td>"+$("#removeitem_items_select option:selected").text()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.itemName"/>:</td><td>"+$("#additem_newitem_itemName").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.specOrSize"/>:</td><td>"+$("#additem_newitem_itemSpec").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.uom"/>:</td><td>"+$("#additem_newitem_itemUom").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.appPrice"/>:</td><td>"+$("#additem_newitem_itemPrice").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.remarks"/>:</td><td>"+$("#additem_newitem_itemRemarks").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.mfgDate"/>:</td><td>"+$("#datepicker").val()+"</td></tr>"+
                                                     "<tr><td align='right'><s:text name="label.expDate"/>:</td><td>"+$("#datepicker1").val()+"</td></tr>"
                                                 
                                                   );
                                                     
                                                    
                                                             
                   
                                    $('#dialog-form_add_item').dialog('open');
	                            return false;
                    }
           });
});
                  