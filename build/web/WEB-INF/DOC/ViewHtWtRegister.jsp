<%-- 
    Document   : ViewHtWtRegister
    Created on : May 2, 2011, 3:30:32 PM
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
            
            <jsp:include page="../../javascripts/viewhtwt_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <center>
        <s:if test="%{viewregisters == 'viewhtwtreg_first'}">
            <CAPTION><font size="3"><b><s:text name="global.heading.viewhtwtRegister"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="view_htwtreg" action="view_htwtreg_dateentered" method="POST" theme="css_xhtml" id="view_htwtreg">
                <tr><td align="right"><s:text name="global.label.viewopregFromDate"/>:</td><td><s:textfield name="htwt_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="global.label.viewopregToDate"/>:</td><td><s:textfield name="htwt_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegView"/>" name="View" align="center" id="View"/></td></tr>
            </s:form>
        </table>
        </s:if>
        <s:elseif test="%{viewregisters == 'viewhtwtreg_select'}">
          <s:if test="%{htwtreg_view.size() == 0}">
              <h2><s:text name="global.heading.viewopregNoRecordsError"/></h2>
          </s:if>
          <s:else>
              <CAPTION><font size="3"><b><s:text name="global.heading.viewhtwtRegister"/></b></font></CAPTION>
            <table border="1">
            <tr><td><s:text name="global.label.mgenDate"/></td><td><s:text name="package.label.viewadmregChProfId"/></td><td><s:text name="package.label.viewadmregChName"/></td><td><s:text name="package.label.htwtHei"/></td><td><s:text name="package.label.htwtWei"/></td><td><s:text name="package.label.htwtBMI"/></td><td><s:text name="package.label.admregAge"/></td><td><s:text name="package.label.htwtChiComplain"/></td><td><s:text name="package.label.htwtObserSugg"/></td></tr>
        <s:iterator value="htwtreg_view">
        <tr>
            <td>
                <s:property value="%{htWtDate}"/>
            </td>
            <td>
                <s:property value="%{whreg_profile_id}"/>
            </td>
            <td>
                <s:property value="%{whreg_cname}"/>
            </td>
            <td>
              <s:property value="%{whreg_height}"/>
            </td>
            <td>
              <s:property value="%{whreg_weight}"/>
            </td>
            <td>
                <s:if test="%{bmi==null}">
                    <font color="red">DOB unknown</font>
                </s:if>
                    <s:else>
              <s:property value="%{bmi}"/>
                    </s:else>
            </td>
            <td>
              <s:property value="%{age}"/>
            </td>
            <td>
              <s:property value="%{childComplaints}" escape="false"/>
            </td>
            <td>
              <s:property value="%{whreg_remarks}" escape="false"/>
            </td>
        </tr>
    </s:iterator>
        </table>
          </s:else>
        </s:elseif>
        </center>

    </body>
</html>
