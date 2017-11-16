<%-- 
    Document   : HM_viewExamRegister_Validation
    Created on : Feb 26, 2013, 4:47:27 PM
    Author     : sweta
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

                <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="global.button.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() {
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>
                
           /*this variable sets display of dialog box for error message*/
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

        /*the folowing function is called when view Exam register form is submitted*/
                $('form#viewExamRegister').submit(function(){
        
                                if ($("#searchBy").val()=='-1') {
                                $dialog.html("<s:text name="global.error.viewExamRegEntSeaCri"/>");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                                }
                              
                             
                                switch($("#searchBy").val())
                                {
                                    case 'Type':
                                    if($("#examType").val()=='-1')
                                        {
                                        $dialog.html("<s:text name="global.error.viewExamRegEntSeaCri"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                         $dialog.dialog('open');
                                            return false; 
                                        }
                                        break;
                                        
                                        case 'Class':
                                        if($("#class1").val()=='-1')
                                        {
                                        $dialog.html("<s:text name="global.error.viewExamRegEntSeaCri"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                         $dialog.dialog('open');
                                            return false; 
                                        }
                                        break;                                             
                                             
                                        case 'Subject':
                                        if($("#subject").val()=='-1')
                                        {
                                        $dialog.html("<s:text name="global.error.viewExamRegEntSeaCri"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                         $dialog.dialog('open');
                                            return false; 
                                        }
                                        break;      
                                
                                    
                                }
                                
                                if($("#datepicker1").val().length<1)
                                    {
                                        $dialog.html("<s:text name="global.error.viewExamRegEntFroDat"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false; 
                                    }
                                    
                                    else if($("#datepicker2").val().length<1)
                                    {
                                        $dialog.html("<s:text name="global.error.viewExamRegEntToDat"/>");
                                        $dialog.parent().addClass( "ui-state-error" );
                                        $dialog.dialog('open');
                                        return false; 
                                    }
                                
                                
                                
                                
              
                       progressCircleShow2();
	                    return true;
                       
	        });
	});



