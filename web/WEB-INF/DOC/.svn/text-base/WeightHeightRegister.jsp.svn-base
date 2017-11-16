<%-- 
    Document   : WeightHeightRegister
    Created on : Feb 25, 2011, 12:43:41 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            <jsp:include page="../../javascripts/wh_reg_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <body onload="document.getElementById('dialog-form_wh_reg').style.visibility='hidden'">
        <%session.setAttribute("form_name","wh_reg");%>
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.htwtRegister"/></b></font></CAPTION>
        <s:form name="wh_reg" action="storeweightheightregister" method="POST" theme="css_xhtml" id="wh_reg">
            <br><br><s:text name="global.label.mgenDate"/>:<s:textfield name="wh_reg_date" type="text" readonly="true" id="datepicker" labelposition="left"/><br><br>
        <table id="WHT" border="1">
             <tr>
                <td><b><s:text name="package.label.htwtSelect"/></b></td>
                <td><b><s:text name='package.label.rrProfIdName'/>:</b></td>
                <td><b><s:text name="package.label.htwtHei"/>:</b></td>
                <td><b><s:text name="package.label.htwtWei"/>:</b></td>
                
                <td><b><s:text name="package.label.htwtChiComplain"/>:</b></td>
                <td><b><s:text name="package.label.htwtObserSugg"/>:</b></td>
             </tr>
             <tr>
               <td><INPUT type="checkbox" name="chk"/></td>
               <td><select name="wh_reg_profile_id" id="wh_reg_profile_id">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${child_profid_list}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--s:select name="wh_reg_profile_id" id="wh_reg_profile_id" labelposition="left" headerKey="1" headerValue="--Please Select--" list="child_profid_list" listKey="childProfileId" listValue="%{childName+'---->'+childProfileId}"/--%></td>
               <td><s:textfield name="htChild" size="7" id="wh_reg_height"/></td>
               <td><s:textfield name="wtChild" size="7" id="wh_reg_weight"/></td>
               
               <td><s:textfield name="childComplaints" size="5" id="wh_reg_childComplaints" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
               <td><s:textfield name="remarks" size="10" id="wh_reg_remarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
             </tr>
        </table>
            <INPUT type="button" value="<s:text name="global.button.AddRow"/>" onclick="addRow('WHT')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="global.button.DeleteRow"/>" onclick="deleteRow('WHT')"/>
            <br><br><input type="submit" value="<s:text name="package.button.admregSave"/>" align="center" id="Save"/>
        </s:form>
        </center>
        <div id="dialog-form_wh_reg" title="Monthly Health Checkup Preview">
	<form name="wh_reg_dialog">
            Date:&nbsp;&nbsp;&nbsp;&nbsp;<span id="wh_reg_date_span"></span>
	<table border="1" id="wh_reg_span">
            <thead>
             <tr>
                <td><b><s:text name='package.label.rrProfId'/></b></td>
                <td><b><s:text name="package.label.htwtHei"/></b></td>
                <td><b><s:text name="package.label.htwtWei"/></b></td>
               
                <td><b><s:text name="package.label.htwtChiComplain"/></b></td>
                <td><b><s:text name="package.label.htwtObserSugg"/></b></td>
             </tr>
            </thead>
            <tbody>
             <tr>
             </tr>
            </tbody>
        </table>
	</form>
        </div>
    </body>
</html>
