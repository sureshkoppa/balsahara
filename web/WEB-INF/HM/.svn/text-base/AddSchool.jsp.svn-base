<%-- 
    Document   : AddSchool
    Created on : 14 Jan, 2012, 2:01:47 PM
    Author     : ANUPAM
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
        <jsp:include page="../../javascripts/HM_AddOutSideSchool_Validation.jsp"></jsp:include> 
        </script>    
    </head>
    <body>
        <center>
        <h2><u><s:text name="global.heading.AddOutSchInst"/>/College</u></h2><br><br>
        <table>
        <s:form name="addSchoolForm" id="addSchoolForm" action="HM-AddSchool-Save" theme="css_xhtml">
            <s:hidden name="formName" value="addSchoolForm"/>
            <tr><td><s:text name="global.label.EnterSchName" />:</td><td><s:textfield name="schoolName" id="schoolName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
        <tr><td><s:text name="global.label.AddSchEnDist" />:</td><td><select name="districtId" id="districtId">
                                   <option value="-1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${districtList}" var="obj">
                                       <option value=${obj.districtId}>${obj.districtName}</option>
                                   </c:forEach>
                               </select><%--s:select name="districtId" id="districtId" list="districtList" listValue="districtName" listKey="districtId" headerValue="---Please Select---" headerKey="-1" /--%></td></tr>
        
        <tr><td><s:text name="global.label.EnterSchAddress" />:</td><td><s:textarea name="schoolAddress" id="schoolAddress" cols="15" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
        <tr><td><s:text name="global.label.EnterSchType" />:</td><td><select name="schoolType" id="schoolType">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.addSchGovNoRes'/>"><s:text name='global.selectOption.addSchGovNoRes'/></option>
                              <option value="<s:text name='global.selectOption.addSchGovRes'/>"><s:text name='global.selectOption.addSchGovRes'/></option>
                              <option value="<s:text name='global.selectOption.addSchPvtNoRes'/>"><s:text name='global.selectOption.addSchPvtNoRes'/></option>
                              <option value="<s:text name='global.selectOption.addSchPvtRes'/>"><s:text name='global.selectOption.addSchPvtRes'/></option>
                              <option value="<s:text name='global.selectOption.addSchPolIti'/>"><s:text name='global.selectOption.addSchPolIti'/></option>
                          </select><%--s:select name="schoolType" id="schoolType" list="#{'Govt-Nonresidential':'Govt-Nonresidential','Govt-Residential':'Govt-Residential','Private-Nonresidential':'Private-Nonresidential','Private-Residential':'Private-Residential','Polytechnique/ITI':'Polytechnique/ITI'}" headerValue="---Please Select---" headerKey="-1" /--%></td></tr>
        
        <tr><td Align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td></tr><!--div id="progress"></div-->
        </s:form> 
        </table>
        </center>
    </body>
</html>

