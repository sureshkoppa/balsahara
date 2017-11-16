<%-- 
    Document   : TabletsReceivedRegister
    Created on : Feb 26, 2011, 10:50:25 AM
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
            <s:form name="tabrec_reg" action="" method="POST" theme="css_xhtml" id="tabrec_reg">
                <br><br><s:textfield label="Date" name="tabrec_reg_pur_date" type="text" id="datepicker" labelposition="left"/><br><br>
               <table id="TRR" border="1">
                    <tr>
                      <td>S.No</td>
                      <td>Particulars</td>
                      <td>Received from</td>
                      <td>Quantity</td>
                      <td>Remarks</td>
                    </tr>
                    <tr>
                      <td><INPUT type="checkbox" name="chk"/></td>
                      <td><s:textfield name="tabrec_reg_paticu" id="tabrec_reg_paticu"/></td>
                      <td><s:textfield name="tabrec_reg_rec_from" size="7" id="tabrec_reg_rec_from"/></td>
                      <td><s:textfield name="tabrec_reg_qty" size="3" id="tabrec_reg_qty"/></td>
                      <td><s:textfield name="tabrec_reg_remarks" size="3" id="tabrec_reg_remarks"/></td>
                    </tr>
               </table>
            <INPUT type="button" value="Add Row" onclick="addRow('TRR')" />&nbsp;&nbsp;<INPUT type="button" value="Delete Row" onclick="deleteRow('TRR')"/>
            <br><br><s:submit value="Save" align="center"/>
            </s:form>
        </center>
        <div id="dialog-form" title="Preview">
	<form name="tabrec_reg_dialog">
            Date:&nbsp;&nbsp;&nbsp;&nbsp;<span id="tabrec_reg_pur_date_span"></span>
	<table border="1" id="tabrec_reg_span">
            <thead>
             <tr>
                <td><b>Particulars</b></td>
                <td><b>Received From</b></td>
                <td><b>Quantity</b></td>
                <td><b>Remarks</b></td>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
	</form>
        </div>
    </body>
</html>
