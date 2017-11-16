<%-- 
    Document   : CWC_MeetingsMins_Validation
    Created on : Feb 18, 2013, 12:43:30 PM
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
                                          document.cwcmeets.submit();
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

           $( "#dialog-form_CWCMeetingsminutes" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: preButL10n,
			close: function() {
                           $( "#cwcmeetings_span tbody" ).html("");
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

    $('form#cwcmeets').submit(function(){
        var Digits_only=/^[0-9]{1,3}$/;
        var specialchar= /^[^<>%$]*$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
                    
        if($("#datepicker").val().length<1)
        {
            $dialog.html("<s:text name="package.error.CWCMeetMinSelMeetDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!datepattern.test($("#datepicker").val()))
        {
            $dialog.html("<s:text name="package.error.CWCMeetMinValMeetDat"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#venue").val().length<1)
        {
            $dialog.html("<s:text name="package.error.CWCMeetMinEntMeetVen"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#venue").val()))
        {

            $dialog.html("<s:text name="package.error.CWCMeetMinValMeetVen"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
                        
        else if($("#noOfMembers").val().length<1)
        {
            $dialog.html("<s:text name="package.error.CWCMeetMinEntMemNo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if((!Digits_only.test($("#noOfMembers").val())))
        {

            $dialog.html("<s:text name="package.error.CWCMeetMinValMemNo"/>");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if(document.getElementById('CWCMeet').rows.length>1)
        {
            $("#dateofcwcmeeting_span").html(document.getElementById('datepicker').value)+"<br/>"
            $("#venue_span").html(document.getElementById('venue').value)+"<br/>"
            $("#noOfMembers_span").html(document.getElementById('noOfMembers').value)+"<br/>"
            $("#designation_span").html(document.getElementById('designation').value)+"<br/>"
            //$("#child_id").html(document.sifmd1.child_id.value.toString());
            $( "#cwcmeetings_span tbody" ).html("");
            for(i=0;i<document.getElementById('CWCMeet').rows.length-1;i++)
            {
                if(document.getElementById('CWCMeet').rows.length==2)
                {
                    if(document.cwcmeets.childProfileId_cwc.value==1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinSelChProfId"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.cwcmeets.observations.value.toString().length<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntObser"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                       
                    else if(!specialchar.test(document.cwcmeets.observations.value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValObser"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                                        
                    else if(document.cwcmeets.actiontobeTaken.value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntActTak"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.cwcmeets.actiontobeTaken.value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValActTak"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.followUp.value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntFollDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.followUp.value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValFollDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.orderIssued.value==1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinSelOrdIssu"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(document.cwcmeets.cwcJjbOrderNo.value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntOrdNo"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.cwcJjbOrderNo.value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValOrdNo"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.remarks.value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntRem"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                     else if(!specialchar.test(document.cwcmeets.remarks.value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValRem"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else
                    {
                        $( "#cwcmeetings_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.cwcmeets.childProfileId_cwc.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.observations.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.actiontobeTaken.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.followUp.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.orderIssued.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.cwcJjbOrderNo.value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.remarks.value.toString() + "</td>" +
                            "</tr>" );

                    }
                }
                else
                {
                   // alert('i am here')
                     if(document.cwcmeets.childProfileId_cwc[i].value==1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinSelChProfId"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(document.cwcmeets.observations[i].value.toString().length<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntObser"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                       
                    else if(!specialchar.test(document.cwcmeets.observations[i].value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValObser"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                                        
                    else if(document.cwcmeets.actiontobeTaken[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntActTak"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }
                    else if(!specialchar.test(document.cwcmeets.actiontobeTaken[i].value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValActTak"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.followUp[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntFollDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.followUp[i].value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValFollDet"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.orderIssued[i].value==1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinSelOrdIssu"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(document.cwcmeets.cwcJjbOrderNo[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntOrdNo"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    }   
                    else if(!specialchar.test(document.cwcmeets.cwcJjbOrderNo[i].value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValOrdNo"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }  
                    else if(document.cwcmeets.remarks[i].value.toString()<1)
                    {
                        $dialog.html("<s:text name="package.error.CWCMeetMinEntRem"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        break;
                    } 
                     else if(!specialchar.test(document.cwcmeets.remarks[i].value))
                    {

                        $dialog.html("<s:text name="package.error.CWCMeetMinValRem"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
          
                    }   
                    else
                    {
                        $( "#cwcmeetings_span tbody" ).append( "<tr>" +
                            "<td>" + (i+1) + "</td>" +
                            "<td>" + document.cwcmeets.childProfileId_cwc[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.observations[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.actiontobeTaken[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.followUp[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.orderIssued[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.cwcJjbOrderNo[i].value.toString() + "</td>" +
                            "<td>" + document.cwcmeets.remarks[i].value.toString() + "</td>" +
                            "</tr>" );

                    }
           
                }
            }
            document.getElementById('dialog-form_CWCMeetingsminutes').style.visibility='visible';
            $('#dialog-form_CWCMeetingsminutes').dialog('open');
            return false;
        }
    });
});


