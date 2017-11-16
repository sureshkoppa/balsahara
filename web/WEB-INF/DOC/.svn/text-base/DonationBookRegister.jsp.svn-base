<%-- 
    Document   : DonationBookRegister
    Created on : Feb 25, 2011, 6:02:48 PM
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
            <CAPTION><font size="3"><b>Donation Book Register</b></font></CAPTION>
            <s:form name="donbook_reg" id="donbook_reg" action="" method="POST" theme="css_xhtml">
            <br><br><td><s:textfield label="Date" name="donbook_reg_date" id="datepicker" labelposition="left"/></td><br><br>
               <table id="DBR" border="1">
                    <tr>
                      <td>Select</td>
                      <td>Item Received</td>
                      <td>Quantity</td>
                      <td>Donated By</td>
                    </tr>
                    <tr>
                      <td><INPUT type="checkbox" name="chk"/></td>
                      <td><s:textfield name="donbook_reg_item_rece" id="donbook_reg_item_rece"/></td>
                      <td><s:textfield name="donbook_reg_qty" size="3" id="donbook_reg_qty"/></td>
                      <td><s:textfield name="donbook_reg_donated_by" id="donbook_reg_donated_by"/></td>
                    </tr>
               </table>
            <INPUT type="button" value="Add Row" onclick="addRow('DBR')" />&nbsp;&nbsp;<INPUT type="button" value="Delete Row" onclick="deleteRow('DBR')"/>
            <br><br><s:submit value="Save" align="center"/>
            </s:form>
        </center>
        <div id="dialog-form" title="Preview">
	<form name="donbook_reg_dialog">
            Date:&nbsp;&nbsp;&nbsp;&nbsp;<span id="donbook_reg_date_span"></span>
	<table border="1" id="donbook_reg_span">
            <thead>
             <tr>
                <td><b>Item Received</b></td>
                <td><b>Quantity</b></td>
                <td><b>Donated By</b></td>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
	</form>
        </div>
    </body>
</html>
