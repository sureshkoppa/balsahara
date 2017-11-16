<%-- 
    Document   : MedicalGeneralRegister
    Created on : Feb 25, 2011, 3:20:11 PM
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
            
            <jsp:include page="../../javascripts/mgen_reg_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <!--the onload function is keep fields in div tag hidden-->
    <body onload="document.getElementById('dialog-form_mgen_reg').style.visibility='hidden'">
        <%session.setAttribute("form_name","mgen_reg");%>
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.medicalJournal"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="mgen_reg" action="storemedicalgeneralregister" method="POST" theme="css_xhtml" id="mgen_reg">
                <tr><td align="right"><s:text name="global.label.mgenDate"/>:</td><td><s:textfield name="date" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenOverHealthStatus"/>:</td><td><input type="radio" name="stateResidents" value="<s:text name='global.radio.label.good'/>"/><s:text name="global.radio.label.good"/><input type="radio" name="stateResidents" value="<s:text name='global.radio.label.satisfactory'/>"/><s:text name="global.radio.label.satisfactory"/><input type="radio" name="stateResidents" value="<s:text name='global.radio.label.Unsatisfactory'/>"/><s:text name="global.radio.label.Unsatisfactory"/><%--s:radio name="stateResidents" list="#{'Good':'Good','Satisfactory':'Satisfactory','Unsatisfactory':'Unsatisfactory'}"/--%></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenCleanKitchen"/>:</td><td><input type="radio" name="cleanlinessCookKitchen" value="<s:text name='global.radio.label.good'/>"/><s:text name="global.radio.label.good"/><input type="radio" name="cleanlinessCookKitchen" value="<s:text name='global.radio.label.satisfactory'/>"/><s:text name="global.radio.label.satisfactory"/><input type="radio" name="cleanlinessCookKitchen" value="<s:text name='global.radio.label.Unsatisfactory'/>"/><s:text name="global.radio.label.Unsatisfactory"/><%--s:radio name="cleanlinessCookKitchen" list="#{'Good':'Good','Satisfactory':'Satisfactory','Unsatisfactory':'Unsatisfactory'}"/--%></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenDiet"/>:</td><td><input type="radio" name="diet" value="<s:text name='global.radio.label.good'/>"/><s:text name="global.radio.label.good"/><input type="radio" name="diet" value="<s:text name='global.radio.label.satisfactory'/>"/><s:text name="global.radio.label.satisfactory"/><input type="radio" name="diet" value="<s:text name='global.radio.label.Unsatisfactory'/>"/><s:text name="global.radio.label.Unsatisfactory"/><%--s:radio name="diet" list="#{'Satisfactory':'Satisfactory','Unsatisfactory':'Unsatisfactory'}"/--%></td></tr>
                <%--<tr><td align="right">Menu Prescribed Exhibited:</td><td><s:radio name="menuPres" list="#{'Y':'Yes','N':'No'}"/></td></tr>--%>
                <tr><td align="right"><s:text name="global.label.mgenPreCleanStat"/>:</td><td><input type="radio" name="statusPremises" value="<s:text name='global.radio.label.good'/>"/><s:text name="global.radio.label.good"/><input type="radio" name="statusPremises" value="<s:text name='global.radio.label.satisfactory'/>"/><s:text name="global.radio.label.satisfactory"/><input type="radio" name="statusPremises" value="<s:text name='global.radio.label.Unsatisfactory'/>"/><s:text name="global.radio.label.Unsatisfactory"/><%--s:radio name="statusPremises" list="#{'Good':'Good','Satisfactory':'Satisfactory','Unsatisfactory':'Unsatisfactory'}"/--%></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenMOSuggest"/>:</td><td><s:textarea name="remarks" id="mgen_reg_medoff_sugg" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>" align="center" id="Save"/></td></tr>
            </s:form>
        </table>
        </center>
        <!--dialog-form div has the fields that have to be displayed in the preview-->
        <div id="dialog-form_mgen_reg" title="<s:text name="global.heading.medicalJournal"/> <s:text name="global.heading.preview"/>">
	<form name="mgen_reg_dialog">
	<table border="1">
            <!--the data entered will be displayed in the span tags mentioned below-->
                <tr><td align="right"><s:text name="global.label.mgenDate"/>:</td><td><span id="mgen_reg_date_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenOverHealthStatus"/>:</td><td><span id="mgen_reg_res_state_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenCleanKitchen"/>:</td><td><span id="mgen_reg_kitc_clean_span"></span</td></tr>
                <tr><td align="right"><s:text name="global.label.mgenDiet"/>:</td><td><span id="mgen_reg_diet_span"></span></td></tr>
                <%--<tr><td align="right">Menu Prescribed Exhibited:</td><td><span id="mgen_reg_menu_pres_span"></span></td></tr>--%>
                <tr><td align="right"><s:text name="global.label.mgenPreCleanStat"/>:</td><td><span id="mgen_reg_prem_clean_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenMOSuggest"/>:</td><td><span id="mgen_reg_medoff_sugg_span" cols="20" rows="4"></span></td></tr>
        </table>
	</form>
        </div>
    </body>
</html>
