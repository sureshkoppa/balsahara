<%-- 
    Document   : LocalPurchaseRegister
    Created on : Feb 25, 2011, 4:32:04 PM
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
            <CAPTION><font size="3"><b>Local Purchase Register</b></font></CAPTION>
            <s:form name="locpur_reg" action="" method="POST" theme="css_xhtml">
                <br><br><s:textfield label="Date" name="locpur_reg_pur_date" type="text" id="datepicker" labelposition="left"/><br><br>
        <table id="LPR" border="1">
             <tr>
                <td>Select</td>
                <td>Item Purchased</td>
                <td>Quantity</td>
                <td>Purchased from</td>
                <td>Invoice/Bill No.</td>
                <td>Main Stock Register Updated</td>
             </tr>
             <tr>
                <td><INPUT type="checkbox" name="chk"/></td>
                <td><s:textfield name="locpur_reg_item_pur" size="10"/></td>
                <td><s:textfield name="locpur_reg_qty" size="3"/></td>
                <td><s:textfield name="locpur_reg_pur_from" size="8"/></td>
                <td><s:textfield name="locpur_reg_bill_no" size="7"/></td>
                <td><s:select name="locpur_reg_stocreg_upda" list="#{'yes':'Yes','no':'No'}"/></td>
       </table>
            <INPUT type="button" value="Add Row" onclick="addRow('LPR')" />&nbsp;&nbsp;<INPUT type="button" value="Delete Row" onclick="deleteRow('LPR')"/>
            <br><br><s:submit value="Save" align="center"/>
            </s:form>
        </center>
    </body>
</html>
