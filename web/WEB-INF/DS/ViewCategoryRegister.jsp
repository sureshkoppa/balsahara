<%-- 
    Document   : ViewCategoryPage
    Created on : Apr 28, 2011, 11:47:04 AM
    Author     : ksuresh
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://einnovates.com/tree4jsp" prefix="t" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Category</title>
        <script type="text/javascript">
         function view()
         {
             <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%>  
              var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
			}
		);
                
                
                    /*validating the fields present in the form*/
                     if($("#addcat_prodcat_select").val()=="select")
                        {
                            $dialog.html("<s:text name="js.err.topCatSelect"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                              return false;
                        }
                      
                       
         }

        </script>
    </head>
    <body>
      <s:form name="ViewCategoryForm" action="DS-viewCategory-viewCat"  theme="css_xhtml" id="ViewCategoryForm" >
                <table border="1" align="center" style="font-size:small">
                    <caption><font size="3"><b><center><s:text name="heading.viewCat"/></center></b></font></caption>
                        <tbody align="left">
                            <tr>
                    <td><s:text name="label.prodTopcat"/></td>
                    <td>
                        <select name="addcat_prodcat_select" id="addcat_prodcat_select">
                                   <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                               </select>
                    
                    
                    </td>
                            </tr>
                            <tr align="center"><td colspan="2"><input type="submit" value="<s:text name="button.viewCat"/>"  onclick="return view()"/></td>
                            </tr>
                        </tbody>
                </table>
      </s:form>

       
    </body>
</html>
