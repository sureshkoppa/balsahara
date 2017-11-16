<%-- 
    Document   : SIch_cwcjjb_validation
    Created on : Mar 6, 2013, 11:46:16 AM
    Author     : sweta
--%>

<%@taglib prefix="s" uri="/struts-tags"%>

$(function() {
    $( "#dialog:ui-dialog" ).dialog( "destroy" );
    
    <%--for preview BUTTONS start--%>      
                
                var textsubmit=$("<div/>").html("<s:text name="global.button.submit"/>").text(); 
                var textclose=$("<div/>").html("<s:text name="global.button.clear"/>").text();
			    var submitvar = {submit: textsubmit};
                var closevar = {close: textclose};     
                var preButL10n = {};
                preButL10n[submitvar.submit] = 
				function() { 
				
                                           <%--for submitting the form when this button is clicked--%>
                                           <%--progressCircleShow2();--%>
                                          document.sicd1.submit();
					  $( this ).dialog( "close" );
					  
                              };
                preButL10n[closevar.close] = 
				function() { 
                                      $(this).dialog('close');
                            };
             <%--for preview BUTTONS ends--%>  
    
    <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>

    $( "#dialog-form_ch_cwcjjb_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: preButL10n,
        close: function() {
            allFields.val("").removeClass( "ui-state-error" );
        }
    });

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


    $('form#sicd1').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var specialchar= /^[^<>%$]*$/;
         var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                     
        /* if($("#childProfileId").val()==1)
                        {
                            $dialog.html("select Profile ID");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        } */
                        
        if($("#cwcJjbOrderNo").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntCwcJjbNo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbOrderNo").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbCwcJjbNoInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#datepicker1").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntOrderDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!datepattern.test($("#datepicker1").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbOrderDatInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        
        else if($("#undersection").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntUnderSec"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#undersection").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbUnderSecInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#natureOffence").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntOffNature"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if(!specialchar.test($("#natureOffence").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbOffNatureInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#childName").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChName"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChNameInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#childSurname").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChSurNam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#childSurname").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChSurNamInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#fatherName").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChFatNam"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherName").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChFatNamInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                              
        else if($("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChDOB"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
          else if(!datepattern.test($("#datepicker").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChDOBInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
                             
        else if($("#religion").val()==1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChReli"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#religion").val()=='Other' && $("religion_other").length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChOthRel"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            
         else if(!specialchar.test($("#religion_other").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChOthRelInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }     
            
        else if($("#caste").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntChCaste"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#caste").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChCasteInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#age").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChFamMemEntAge"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                   
                                                      
        else if((!Digits_only.test($("#age").val())))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbChAgeInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                
       else if($('input[name="gender"]:checked').length===0)
        {
             $dialog.html("<s:text name="global.error.SIChcwcjjbEntChGender"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#addrParents").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntPerAdd"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#addrParents").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbPerAddInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                        
        else if($("#presentAddress").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntAddBefCha"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#presentAddress").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbAddBefChaInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#previousInstiDetails").val().length<1)
        {
            $dialog.html("<s:text name="global.error.SIChcwcjjbEntInstDet"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }  
        else if(!specialchar.test($("#previousInstiDetails").val()))
        {

            $dialog.html("<s:text name="global.error.SIChcwcjjbInstDetInv"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
                    
        else
        {       
                                                             
            $("#childProfileId_span").html($("#childProfileId").val());
            $("#cwcJjbOrderNo_span").html($("#cwcJjbOrderNo").val());
            $("#orderDate_String_span").html(document.sicd1.orderDate_String.value.toString());
            $("#undersection_span").html($("#undersection").val());
            $("#natureOffence_span").html($("#natureOffence").val());
            $("#childName_span").html($("#childName").val());
            $("#childSurname_span").html($("#childSurname").val());
            $("#fatherName_span").html($("#fatherName").val());
            $("#dob_String_span").html(document.sicd1.dob_String.value.toString());
            $("#religion_span").html($("#religion").val());
            $("#religion_other_span").html($("#religion_other").val());
            $("#caste_span").html($("#caste").val());
            $("#age_span").html($("#age").val());
            $("#gender_span").html($("#gender").val());
            $("#addrParents_span").html($("#addrParents").val());
            $("#presentAddress_span").html($("#presentAddress").val());
            $("#previousInstiDetails_span").html($("#previousInstiDetails").val());
            document.getElementById('dialog-form_ch_cwcjjb_preview').style.visibility='visible';
            $('#dialog-form_ch_cwcjjb_preview').dialog('open');
            return false;
        }
    });
});





