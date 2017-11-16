<%-- 
    Document   : ViewMGeneralRegister
    Created on : May 3, 2011, 11:39:08 AM
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
            
            <jsp:include page="../../javascripts/viewmgen_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <s:if test="%{viewregisters == 'viewmgenreg_first'}">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.viewmgenRegister"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="view_mgenreg" action="view_mgenreg_dateentered" method="POST" theme="css_xhtml" id="view_mgenreg">
                <tr><td align="right"><s:text name="global.label.viewopregFromDate"/>:</td><td><s:textfield name="mgen_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="global.label.viewopregToDate"/>:</td><td><s:textfield name="mgen_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegView"/>" name="View" align="center" id="View"/></td></tr>
            </s:form>
        </table>
        </center>
        </s:if>
        <s:elseif test="%{viewregisters == 'viewmgenreg_select'}">
            <s:if test="%{mgenreg_view.size() == 0}">
             <center>
              <h2><s:text name="global.heading.viewopregNoRecordsError"/></h2>
             </center>
          </s:if>
          <s:else>
            <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.viewmgenRegister"/></b></font></CAPTION>
            <table border="1">
            <tr><td><s:text name="global.label.mgenDate"/></td><td><s:text name="global.label.mgenHomeId"/></td><td><s:text name="global.label.mgenOverHealthStatus"/></td><td><s:text name="global.label.mgenCleanKitchen"/></td><td><s:text name="global.label.mgenDiet"/></td><!--<td>Menu Prescribed<br> Exhibited</td>--><td><s:text name="global.label.mgenPreCleanStat"/></td><td><s:text name="global.label.mgenMOSuggest"/></td></tr>
        <s:iterator value="mgenreg_view">
        <tr>
            <td>
                <s:property value="%{MedicalGeneralRegisterPK.medRegDate}"/>
            </td>
            <td>
                <s:property value="%{MedicalGeneralRegisterPK.homeId}"/>
            </td>
            <td>
              <s:property value="%{stateResidents}" escape="false"/>
            </td>
            <td>
              <s:property value="%{cleanlinessCookKitchen}" escape="false"/>
            </td>
            <td>
              <s:property value="%{diet}" escape="false"/>
            </td>
            <%--<td>
              <s:property value="%{menuPres}"/>
            </td>--%>
            <td>
              <s:property value="%{statusPremises}" escape="false"/>
            </td>
            <td>
                <s:property value="%{remarks}" escape="false"/>
            </td>
        </tr>
    </s:iterator>
        </table>
            </center>
          </s:else>
        </s:elseif>
    </body>
</html>
