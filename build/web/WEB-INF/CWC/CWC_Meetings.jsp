<%-- 
    Document   : CWC_Meetings
    Created on : Jul 9, 2011, 3:25:23 PM
    Author     : Ramu Parupalli
--%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            
         /*function validate()
            {
               var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                     if($("#homeId").val()==-1)
                        {
                            $dialog.html("Sorry! Please Select home");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       
            }*/     
       
        <jsp:include page="../../javascripts/CWC_Meetings_Validation.jsp"></jsp:include>
        </script>
        
        <script>
            
                 function myfunction() {
                               var $select = $('#child');
                               $.ajax({
                                   url: 'getReportFoundChild',
                                   dataType: 'json',

                                   success: function (data) {
                           for (var i = 0; i < data.length; i++) {
                            
                            
                                        if(i == 0){
                                                var option = document.createElement("option");
                                                option.text = "--Please Select--";
                                                $select.append(option);
                                        }
                                            
                                    var option = document.createElement("option");
                                    
                                            option.text = data[i];
                                            
                                            $select.append(option);
                                            
                                            
                                    }
                                },
                                   error: function (error) {
                                    //   alert('not worked.');
                                   }
                               });


           }
           
           function myreport(val){
               
               var str = val.value;
               
               document.getElementById("foundchildprofile").value = str;
               
               var temp = document.getElementById("foundchildprofile").value;
            //   alert(temp);
           }
           
        </script>
        </head>
        <body onload="myfunction()">
        <s:form name="cwcHomeSelectForm" id="cwcHomeSelectForm" action="CW-CWCMeetings-setHome" method="POST">
<table>
    
      <tr>Select Child Profile ID:      <select id="child" onchange="myreport(this)"></select> </tr> 

        <input type="hidden" id="foundchildprofile" name="foundchildprofileid"/>

</select><%--s:select name="homeId" id="homeId" theme="simple" list="homeMasters" headerValue="--- Please Select ---" headerKey="-1"></s:select--%></td></tr>
<tr><td><input type="submit" value="<s:text name="global.button.cwcProceed"/>"/></td></tr>
</table>
</s:form>
        </body>
    </html>