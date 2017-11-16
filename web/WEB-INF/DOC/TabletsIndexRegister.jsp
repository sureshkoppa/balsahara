<%-- 
    Document   : TabletsIndexRegister
    Created on : Feb 26, 2011, 11:38:29 AM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <CAPTION><font size="3"><b>Tablets Received Register</b></font></CAPTION>
            <s:form name="tabrec_reg" action="" method="POST" theme="css_xhtml">
               <table id="TIR" border="1" align="center">
                   <tr>
                     <td>S.No</td>
                     <td>Nomenclature</td>
                     <td>
                         <table border="1" rules="columns">
                             <tr><td colspan="3">Quantity</td></tr>
                             <tr>
                                 <td>Received</td>
                                 <td>Issued</td>
                                 <td>Balance</td>
                                 </tr>

                         </table>
                     </td>
                     <td>Remarks</td>
                   </tr>
                </table>
            </s:form>
        </center>
    </body>
</html>
