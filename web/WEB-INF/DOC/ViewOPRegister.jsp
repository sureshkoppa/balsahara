<%-- 
    Document   : ViewOPRegister
    Created on : May 9, 2011, 9:39:50 AM
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
            
            <jsp:include page="../../javascripts/viewopreg_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <center>
        <s:if test="%{viewregisters == 'viewopreg_first'}">
            <CAPTION><font size="3"><b><s:text name="global.heading.viewopRegister"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="view_opreg" action="view_opreg_dateentered" method="POST" theme="css_xhtml" id="view_opreg">
                <tr><td align="right"><s:text name="global.label.viewopregFromDate"/>:</td><td><s:textfield name="op_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="global.label.viewopregToDate"/>:</td><td><s:textfield name="op_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegView"/>" name="View" align="center" id="View"/></td></tr>
            </s:form>
        </table>
        </s:if>
        <s:elseif test="%{viewregisters == 'viewopreg_select'}">
          <s:if test="%{opreg_viewprofiles.size() == 0}">
              <h2><s:text name="global.heading.viewopregNoRecordsError"/></h2>
          </s:if>
          <s:else>
              <CAPTION><font size="3"><b><s:text name="global.heading.viewopregSelProfId"/></b></font></CAPTION>
            <table border="1">
            <tr><td><s:text name="global.label.mgenDate"/></td><td><s:text name="package.label.viewadmregChProfId"/></td><td><s:text name="package.label.viewadmregChName"/></td></tr>
            <s:iterator value="opreg_viewprofiles">
        <tr>
            <td>
                <s:property value="%{opRegisterPK.opDate}"/>
            </td>
            <td>
                <s:url id="ViewOPReg" action="viewopreg_selectprofid">
                  <s:param name="opreg_sel_profid">%{opRegisterPK.childProfileId}</s:param>
                  <s:param name="opreg_sel_date">%{opRegisterPK.opDate}</s:param>
                </s:url>
                <s:a href="%{ViewOPReg}"><s:property value="%{opRegisterPK.childProfileId}"/></s:a>
            </td>
            <td>
                <s:property value="%{childMaster.childName}"/>
            </td>
        </tr>
    </s:iterator>
        </table>
          </s:else>
        </s:elseif>
        <s:elseif test="%{viewregisters == 'viewopreg_secondselect'}">
            <CAPTION><font size="3"><b><s:text name="global.heading.viewopRegister"/></b></font></CAPTION>
            <s:iterator value="opreg_view">
                <table border="1">
            <tr><td><s:text name="global.label.mgenDate"/>:</td><td><s:property value="%{opRegisterPK.opDate}"/></td></tr>
            <tr><td><s:text name="package.label.viewadmregChProfId"/>:</td><td><s:property value="%{opRegisterPK.childProfileId}"/></td></tr>
            <tr><td><s:text name="package.label.viewadmregChName"/>:</td><td><s:property value="%{childMaster.childName}"/></td></tr>
            <tr><td><s:text name="package.label.opregDiagnosis"/>:</td><td><s:property value="%{diagnosis}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.opregTreatment"/>:</td><td><s:property value="%{treatment}" escape="false"/></td></tr>
            <tr><td><s:text name="package.label.opregTreatedAt"/>:</td><td><s:if test="%{#request.locale.language=='en'}"><s:property value="%{treatedAt}" escape="false"/></s:if><s:elseif test="%{#request.locale.language=='hi'}"><s:if test="%{treatedAt=='Treated In Home'}"><s:text name="global.select.opregTreatHome"/></s:if><s:elseif test="%{treatedAt=='Refered To Outside Hospital'}"><s:text name="global.select.opregTreatOutside"/></s:elseif></s:elseif><s:elseif test="%{#request.locale.language=='te'}"><s:if test="%{treatedAt=='Treated In Home'}"><s:text name="global.select.opregTreatHome"/></s:if><s:elseif test="%{treatedAt=='Refered To Outside Hospital'}"><s:text name="global.select.opregTreatOutside"/></s:elseif></s:elseif></td></tr>
            <tr><td><s:text name="package.label.opregTreatSpec"/>:</td><td><s:property value="%{remarks}" escape="false"/></td></tr>
                </table>
            </s:iterator>
        </s:elseif>
        </center>

    </body>
</html>
