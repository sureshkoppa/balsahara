<%-- 
    Document   : SelectMonthYear
    Created on : 11 Jan, 2012, 10:09:35 AM
    Author     : suresh
--%>

<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core" %>

<%@page  import="java.util.List" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Month and Year</title>
        <script>
        function show_details(val)
            {
               <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok};               
               var errButL10n = {};
               errButL10n[okvar.close] = function() { 
                        $(this).dialog('close');
               };
     
             <%--for Error Buttons ends--%>    
             var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 200,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
		});
                
                      if($("#report_month").val()=="select")
                        {
                            $dialog.html("<s:text name="js.err.selMonth"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#report_year").val()=="select")
                        {
                            $dialog.html("<s:text name="js.err.selYear"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else {
return true;
}
            }  
            
                    </script>
        
        
        
    </head>
    <body>
        <s:form action="DS-reportDailyDiet" onsubmit="javascript:return show_details();">
        <center><h2><s:text name="heading.dailyDietRep"/></h2></center>
           <center>
               <table align="center">
                <tr>
                    <td colspan="2"><s:text name="message.selMonthAndYear"/></td>
                </tr>   
                <tr><td>
                        <s:text name="label.selMonth"/>:</td>
                    <td> 
                        <select name="report_month"  id="report_month">
                              <option value="select">---<s:text name="label.select"/>---</option>
                              <option value="1"><s:text name="month.jan"/></option>
                              <option value="2"><s:text name="month.feb"/></option>
                              <option value="3"><s:text name="month.mar"/></option>
                              <option value="4"><s:text name="month.apr"/></option>
                              <option value="5"><s:text name="month.may"/></option>
                              <option value="6"><s:text name="month.jun"/></option>
                              <option value="7"><s:text name="month.jul"/></option>
                              <option value="8"><s:text name="month.aug"/></option>
                              <option value="9"><s:text name="month.sept"/></option>
                              <option value="10"><s:text name="month.oct"/></option>
                              <option value="11"><s:text name="month.nov"/></option>
                              <option value="12"><s:text name="month.dec"/></option>
                            
                            
                        </select>
                        
                      
                    </td></tr>
                <tr><td><s:text name="label.selYear"/> : </td><td> <s:select name="report_year" id="report_year"  list="{'2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048'
                      ,'2049','2050','2051','2052','2053','2054','2055','2056','2057','2058','2059','2060'}" headerKey="select" headerValue="----" theme="simple"/><br/></td></tr>
          
            </table>
            </center>
         <center>
                  <table align="center">
                        <tr>
                           <td><input type="submit" value="<s:text name="button.submit"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                    </table>
                </center>
        </s:form>       
        
        
    </body>
</html>

