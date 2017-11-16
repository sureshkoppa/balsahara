<%-- 
    Document   : ReferralRegister
    Created on : Feb 25, 2011, 10:58:20 AM
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
            <jsp:include page="../../javascripts/refe_reg_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <!--the onload function is keep fields in div tag hidden-->
    <body onload="document.getElementById('dialog-form_refe_reg').style.visibility='hidden'">
        <%session.setAttribute("form_name","refe_reg");%>
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.referralRegister"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="refe_reg" action="storereferralregister" method="POST" theme="css_xhtml" id="refe_reg">
                <tr><td colspan="2" align="center"><s:text name='package.label.rrProfIdName'/>:<select name="refe_reg_profile_id" id="refe_reg_profile_id">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${child_profid_list}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--s:select id="refe_reg_profile_id" name="refe_reg_profile_id" labelposition="left" headerKey="1" headerValue="--Please Select--" list="child_profid_list" listKey="childProfileId" listValue="%{childName+'---->'+childProfileId}"/--%></td></tr>
                <tr><td align="right"><s:text name="package.label.rrRefDate"/>:</td><td><s:textfield name="referralDate" type="text" readonly="true" id="datepicker4"/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrRefHospital"/>:</td><td><s:textfield name="referralHospital" id="refe_reg_hosp" maxLength="73" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrRefReason"/>:</td><td><s:textarea name="reasonsReferral" id="refe_reg_reason" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrAdmitDate"/>:</td><td><s:textfield name="refe_reg_admitdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrTreatedBy"/>:</td><td><s:textfield name="treatedByReferralDoc" id="refe_reg_treated_by" maxLength="48" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrTreatGiven"/>:</td><td><s:textarea name="referralTreatment" id="refe_reg_treatment_given" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrDischargeDate"/>:</td><td><s:textfield name="refe_reg_dischargedate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td align="right"><s:text name="package.label.rrDischPrescrip"/>:</td><td><s:textarea name="remarks" id="refe_reg_remarks" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="package.button.admregSave"/>" name="Save" align="center" id="Save"/></td></tr>
            </s:form>
        </table>
        </center>
        <!--dialog-form div has the fields that have to be displayed in the preview-->
        <div id="dialog-form_refe_reg" title="<s:text name="global.heading.referralRegister"/> <s:text name="global.heading.preview"/>">
	<form name="refe_reg_dialog">
	<table border="1">
            <!--the data entered will be displayed in the span tags mentioned below-->
                <tr><td align="right"><s:text name='package.label.rrProfId'/>:</td><td><span id="refe_reg_profile_id_span"></span></td></tr>
                <%--<tr><td align="right">Name Of The Inmate:</td><td><span id="refe_reg_inmate_name_span"></span></td></tr>--%>
                <tr><td align="right"><s:text name="package.label.rrRefDate"/>:</td><td><span id="refe_reg_referral_date_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.rrRefHospital"/>:</td><td><span id="refe_reg_hosp_span"></span</td></tr>
                <tr><td align="right"><s:text name="package.label.rrRefReason"/>:</td><td><span id="refe_reg_reason_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.rrAdmitDate"/>:</td><td><span id="refe_reg_admit_date_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.rrTreatedBy"/>:</td><td><span id="refe_reg_treated_by_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.rrTreatGiven"/>:</td><td><span id="refe_reg_treatment_given_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.rrDischargeDate"/>:</td><td><span id="refe_reg_discharge_date_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.rrDischPrescrip"/>:</td><td><span id="refe_reg_remarks_span"></span</td></tr>
        </table>
	</form>
        </div>
    </body>
</html>
