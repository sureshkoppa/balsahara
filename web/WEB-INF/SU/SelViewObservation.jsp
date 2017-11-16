<%-- 
    Document   : SelObservation
    Created on : 3 Aug, 2011, 5:00:34 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <script  type="text/javascript">
           function populate_date()
            {
               
               var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
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
                
                
                    /*validating the fields present in the form*/
                     if($("#datepicker").val()=="")
                        {
                            $dialog.html("Sorry! Please Select Date");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                    
                             document.getElementById('SelObservationForm').action="SU-viewObservation-popDatedGAS";
                             document.getElementById('SelObservationForm').submit();
                        }

            }     
                   </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b><s:text name="heading.viewObser"/></b></font></CAPTION>
            <s:form name="SelObservationForm" action="SU-viewObservation-popDatedGAS" theme="css_xhtml" id="SelObservationForm" onsubmit="javascript:populate_date();return false;">
            <s:hidden name="formName" value="SelObservationForm"/>
           <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                            </tr>
                             <tr><td><s:text name="label.selDate"/>*</td>
                               <td>
                                   <s:textfield name="selobjDate" id="datepicker"/>
                               </td>
                             </tr>
                         
                 </tbody>
                </table>
             <table>
                <tr>
                     <td><input type="submit" value="<s:text name="button.submit"/>" /></td>
                    <td><input type="reset" value="<s:text name="button.clear"/>" /></td>
                </tr>
            </table>    
                
                
            </s:form>    
              </center>
    </body>
</html>
