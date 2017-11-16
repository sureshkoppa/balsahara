<%-- 
    Document   : OPRegister
    Created on : Feb 25, 2011, 10:30:16 AM
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
            <jsp:include page="../../javascripts/op_reg_javascript.jsp"></jsp:include> 
        </script>
    </head>
    <!-- swetha added div tags visibility in body tag to make them invisible-->
    <body onload="document.getElementById('Treated In Home').style.visibility='hidden';document.getElementById('Refered To Outside Hospital').style.visibility='hidden';document.getElementById('dialog-form_op_reg').style.visibility='hidden';">
        <%session.setAttribute("form_name","op_reg");%>
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.opRegister"/></b></font></CAPTION>
        
            <s:form name="op_reg" action="storeopregister" method="POST" theme="css_xhtml" id="op_reg">
                <table border="1">
                    <tr><td colspan="2" align="center"><s:text name='package.label.rrProfIdName'/>:<select name="op_reg_profile_id" id="op_reg_profile_id">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${child_profid_list}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--s:select id="op_reg_profile_id" name="op_reg_profile_id" labelposition="left" headerKey="1" headerValue="--Please Select--" list="child_profid_list" listKey="childProfileId" listValue="%{childName+'---->'+childProfileId}"/--%></td></tr>
                <tr><td align="right"><s:text name="global.label.mgenDate"/>:</td><td><s:textfield name="op_reg_date" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="package.label.opregDiagnosis"/>:</td><td><s:textarea name="diagnosis" id="op_reg_diagnosis" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.opregTreatment"/>:</td><td><s:textarea name="treatment" id="op_reg_treatment" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.opregTreatedAt"/>:</td><td><s:if test="%{#request.locale.language=='en'}"><s:select name="treatedAt" id="op_reg_treated_at" headerKey="1" headerValue="-- Please Select --" list="#{'Treated In Home':'Treated In Home','Refered To Outside Hospital':'Refered To Outside Hospital'}"  onchange="return opreg_dynamic(this.value);"/></s:if>
                                                                                             <s:elseif test="%{#request.locale.language=='hi'}"><select name="treatedAt" id="op_reg_treated_at" onchange="return opreg_dynamic(this.value);">
                                                                                                                                                      <option value="1">--&#2325;&#2371;&#2346;&#2351;&#2366; &#2330;&#2369;&#2344;&#2375;&#2306;--</option>
                                                                                                                                                      <option value="Treated In Home">&#2328;&#2352; &#2346;&#2352; &#2330;&#2367;&#2325;&#2367;&#2340;&#2381;&#2360;&#2366;</option>
                                                                                                                                                      <option value="Refered To Outside Hospital">&#2348;&#2366;&#2361;&#2352;&#2368; &#2309;&#2360;&#2381;&#2346;&#2340;&#2366;&#2354; &#2350;&#2375;&#2306; &#2352;&#2375;&#2347;&#2352;</option></select></s:elseif>
                                                                                             <s:elseif test="%{#request.locale.language=='te'}"><select name="treatedAt" id="op_reg_treated_at" onchange="return opreg_dynamic(this.value);">
                                                                                                                                                      <option value="1">--&#3110;&#3119;&#3098;&#3143;&#3128;&#3135; &#3086;&#3074;&#3098;&#3137;&#3093;&#3147;&#3074;&#3105;&#3135;--</option>
                                                                                                                                                      <option value="Treated In Home">&#3079;&#3074;&#3103;&#3135;&#3122;&#3147; &#3098;&#3143;&#3119;&#3116;&#3105;&#3135;&#3112; &#3098;&#3135;&#3093;&#3135;&#3108;&#3149;&#3128;</option>
                                                                                                                                                      <option value="Refered To Outside Hospital">&#3116;&#3119;&#3103;&#3135; &#3078;&#3128;&#3137;&#3114;&#3108;&#3149;&#3120;&#3135;&#3093;&#3135; &#3128;&#3135;&#3115;&#3134;&#3120;&#3128;&#3137; &#3098;&#3143;&#3119;&#3137;&#3103;</option></select></s:elseif></td></tr>
                </table>
                <!-- swetha added div 'in' to display the dynamic fields in that div tag-->
                <div id="in"></div>
                <center><input type="submit" value="<s:text name="package.button.admregSave"/>" align="center"/></center>
                <!--seperate div tags to display only necessary fields for each option selected-->
                <div id="total">
                <div id="Treated In Home">
                  <table border="1">
                      <tr><td colspan="2" align="center"><s:text name="package.label.opregOPDetails"/>:</td></tr>
                      <tr><td align="right"><s:text name="package.label.opregTreatSpec"/>:</td><td><s:textarea name="remarks" id="op_reg_specify_treatment" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                  </table>
                </div>
                <div id="Refered To Outside Hospital">
                  <table border="1">
                      <tr><td colspan="2" align="center"><s:text name="package.label.opregRefDetails"/>:</td></tr>
                      <tr><td align="right"><s:text name="package.label.rrRefHospital"/>:</td><td><s:textfield name="op_reg_hosp" id="op_reg_hosp" maxLength="73" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="package.label.rrRefReason"/>:</td><td><s:textarea name="op_reg_reason" id="op_reg_reason" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="package.label.rrAdmitDate"/>:</td><td><s:textfield name="op_reg_admit_date" type="text" readonly="true" id="datepicker2"/></td></tr>
                      <tr><td align="right"><s:text name="package.label.rrTreatedBy"/>:</td><td><s:textfield name="op_reg_treated_by" id="op_reg_treated_by" maxLength="48" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="package.label.rrTreatGiven"/>:</td><td><s:textarea name="op_reg_treatment_given" id="op_reg_treatment_given" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="package.label.rrDischargeDate"/>:</td><td><s:textfield name="op_reg_discharge_date" type="text" readonly="true" id="datepicker3"/></td></tr>
                      <tr><td align="right"><s:text name="package.label.rrDischPrescrip"/>:</td><td><s:textarea name="op_reg_remarks" id="op_reg_remarks" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                  </table>
                </div>
                </div>
            </s:form>
        </center>
        <!--this div is for showing preview (unlike other forms here all fields are added dynamically in preview)-->
        <div id="dialog-form_op_reg" title="<s:text name="global.heading.opRegister"/> <s:text name="global.heading.preview"/>">
                <table border="1" id="op_preview">
                </table>
        </div>
    </body>
</html>
