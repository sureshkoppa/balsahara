<%-- 
    Document   : CH_EmploymentDetails
    Created on : Jun 24, 2011, 9:43:54 AM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/CH_EmploymentDetails_Validation.jsp"></jsp:include> 
            </script>
    <body onload="document.getElementById('dialog-form_CHEmployment').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.childEmpDet"/></b></font></CAPTION> 
            
           
              <s:form action="CH-EmploymentDetails-Save" method="POST" name="chemployee" id="chemployee" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chemployee"/>
                <table cellspacing="0">
       
                <tr><h3></h3></tr>
                <tr><td align="right"><s:text name="label.profileId"/>:</td>
                    <td>
                      <select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}</option>
                                   </c:forEach>
                            </select>
                    </td></tr>
                            </table>  
                               <table border="1" id="CHE">
                         <thead>
                             <tr><th><s:text name="label.select"/></th><th><s:text name="label.detEmploy"/></th><th><s:text name="label.dur"/></th><th><s:text name="label.wageEarn"/></th><th><s:text name="label.expAtWork"/></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                             <td><select name="detailsEmployment" id="detailsEmployment" headerKey="1" headerValue="--<s:text name="global.option.headerKey"/>--">
                                     <option value="<s:text name="option.cooly"/>"><s:text name="option.cooly"/></option>
                                     <option value="<s:text name="option.ragPicking"/>"><s:text name="option.ragPicking"/></option>
                                     <option value="<s:text name="option.mechanic"/>"><s:text name="option.mechanic"/></option>
                                     <option value="<s:text name="option.hotelWork"/>"><s:text name="option.hotelWork"/></option>
                                     <option value="<s:text name="option.teaShopWork"/>"><s:text name="option.teaShopWork"/></option>
                                     <option value="<s:text name="option.cycleShWork"/>"><s:text name="option.cycleShWork"/></option>
                                     <option value="<s:text name="option.shoePolish"/>"><s:text name="option.shoePolish"/></option>
                                     <option value="<s:text name="option.houHolWorks"/>"><s:text name="option.houHolWorks"/></option>
                                     
                                 </select> 
                             </td>
                        
                             <%--td><s:select name="detailsEmployment" id="detailsEmployment" headerKey="1" headerValue="--Please Select--" list="#{'Cooly':'Cooly','Rag picking':'Rag picking','Mechanic':'Mechanic','Hotel work':'Hotel work','Tea shop work':'Tea shop work','Cycle shop work':'Cycle shop work','Shoe Polish':'Shoe Polish','Household works':'Household works','Others':'Others'}" onchange="CH_Emp_dynamic(this);"/><s:textfield name="detailsEmployment_other" id="detailsEmployment_other" theme="css_xhtml" disabled="true" /--%>
                             <%--td><s:combobox name="detailsEmployment" id="detailsEmployment" headerKey="1" headerValue="--Please Select--" list="#{'Cooly':'Cooly','Rag picking':'Rag picking','Mechanic':'Mechanic','Hotel work':'Hotel work','Tea shop work':'Tea shop work','Cycle shop work':'Cycle shop work','Shoe Polish':'Shoe Polish','Household works':'Household works','Others':'Others'}" onchange="CH_Emp_dynamic(this);"/></td--%>
                      <td><s:textarea id="duration" name="duration" rows="2" cols="10" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="wagesEarned" name="wagesEarned" rows="2" cols="10" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><select name="experienceatwork" id="experienceatwork" headerKey="1" headerValue="--<s:text name="global.option.headerKey"/>--">
                               <option value="<s:text name="option.good"/>"><s:text name="option.good"/></option>
                               <option value="<s:text name="option.bad"/>"><s:text name="option.bad"/></option>
                               <option value="<s:text name="option.Average"/>"><s:text name="option.Average"/></option>
                           </select> </td>
                   </tr>
                 </table>
                      <INPUT type="button" value="<s:text name="label.addRow"/>" onclick="addRow('CHE')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="label.delRow"/>" onclick="deleteRow('CHE')"/>
                    <table>
                    <tr><td colspan="2" align="center">
                            <input type="submit" value="<s:text name="button.save"/>"/>
                        </td></tr>
                    </table> 
               </s:form>
                                               
        <div id="dialog-form_CHEmployment" title="<s:text name="js.preview.chiEmpDet"/>">
	<form name="CHEmployment_prevwindow">
            <s:text name="label.profileId"/>:&nbsp;&nbsp;&nbsp;&nbsp;<span id="childProfileId_span"></span>
	<table border="1" id="ch_Employment_span">
            <thead>
             <tr>
                <th><s:text name="label.serNo"/></th>
                <th><s:text name="label.detEmploy"/></th>
                <th><s:text name="label.dur"/></th>
                <th><s:text name="label.wageEarn"/></th>
                <th><s:text name="label.expAtWork"/></th>
              </tr>
            </thead>
            <tbody>
             <tr>
             </tr>
            </tbody>
        </table>
	</form>
        </div>      
     .
        </center>
    </body>
</html>