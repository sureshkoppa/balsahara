<%-- 
    Document   : ViewReferralRegister
    Created on : May 11, 2011, 9:30:47 AM
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
        <script type="text/javascript">
            
            <jsp:include page="../../javascripts/viewrefe_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <center>
        <s:if test="%{viewregisters == 'viewrefereg_first'}">
            <CAPTION><font size="3"><b><s:text name="global.heading.viewrefeRegister"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="view_refereg" action="view_refereg_dateentered" method="POST" theme="css_xhtml" id="view_refereg">
                <tr><td align="right"><s:text name="global.label.viewopregFromDate"/>:</td><td><s:textfield name="refe_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="global.label.viewopregToDate"/>:</td><td><s:textfield name="refe_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegView"/>" name="View" align="center" id="View"/></td></tr>
            </s:form>
        </table>
        </s:if>
        <s:elseif test="%{viewregisters == 'viewrefereg_select'}">
          <s:if test="%{refereg_viewprofiles.size() == 0}">
              <h2><s:text name="global.heading.viewopregNoRecordsError"/></h2>
          </s:if>
          <s:else>
              <CAPTION><font size="3"><b><s:text name="global.heading.viewopregSelProfId"/></b></font></CAPTION>
              <table border="1">
            <tr><td><s:text name="global.label.mgenDate"/></td><td><s:text name="package.label.viewadmregChProfId"/></td><td><s:text name="package.label.viewadmregChName"/></td></tr>
            <s:iterator value="refereg_viewprofiles">
        <tr>
            <td>
                <s:property value="%{referralRegisterPK.referralDate}"/>
            </td>
            <td>
                <s:url id="ViewRefeReg" action="viewrefereg_selectprofid">
                  <s:param name="refereg_sel_profid">%{referralRegisterPK.childProfileId}</s:param>
                  <s:param name="refereg_sel_date">%{referralRegisterPK.referralDate}</s:param>
                </s:url>
                <s:a href="%{ViewRefeReg}"><s:property value="%{referralRegisterPK.childProfileId}"/></s:a>
            </td>
            <td>
                <s:property value="%{childMaster.childName}"/>
            </td>
        </tr>
    </s:iterator>
        </table>
          </s:else>
        </s:elseif>
        <s:elseif test="%{viewregisters == 'viewrefereg_secondselect'}">
            <CAPTION><font size="3"><b><s:text name="global.heading.viewrefeRegister"/></b></font></CAPTION>
            <s:iterator value="refereg_view">
                <table border="1">
            <tr><td><s:text name="package.label.rrRefDate"/>:</td><td><s:property value="%{referralRegisterPK.referralDate}"/></td></tr>
            <tr><td><s:text name="package.label.viewadmregChProfId"/>:</td><td><s:property value="%{referralRegisterPK.childProfileId}"/></td></tr>
            <tr><td><s:text name="package.label.viewadmregChName"/>:</td><td><s:property value="%{childMaster.childName}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.rrRefHospital"/>:</td><td><s:property value="%{referralHospital}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.rrRefReason"/>:</td><td><s:property value="%{reasonsReferral}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.rrAdmitDate"/>:</td><td><s:property value="%{admitDate}"/></td></tr>
            <tr><td><s:text name="package.label.rrTreatedBy"/>:</td><td><s:property value="%{treatedByReferralDoc}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.rrTreatGiven"/>:</td><td><s:property value="%{referralTreatment}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.rrDischargeDate"/>:</td><td><s:property value="%{dischargeDate}"/></td></tr>
            <tr><td><s:text name="package.label.rrDischPrescrip"/>:</td><td><s:property value="%{remarks}" escape="false"/></td></tr>
                </table>
            </s:iterator>
        </s:elseif>
        </center>
    </body>
</html>
