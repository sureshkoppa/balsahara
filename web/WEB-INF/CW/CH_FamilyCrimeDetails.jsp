<%-- 
    Document   : CH_FamilyCrimeDetails
    Created on : Jun 24, 2011, 2:44:07 PM
    Author     : Ramu Parupalli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/CH_FamilyCrime_Validations.jsp"></jsp:include> 
        </script>
    </head>    
    <body onload="document.getElementById('dialog-form_CHFamilyCrime').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.hisCrimeFamilyMem"/></b></font></CAPTION> 
            
           
              <s:form action="CH-FamilyCrimeDetails-Save" method="POST" name="chfamilycrime" id="chfamilycrime" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chfamilycrime"/>
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
                                          
                            <table border="1" id="CHFC">
                         <thead>
                             <tr><th><s:text name="label.select"/></th><th><s:text name="label.name"/></th><th><s:text name="label.relationship"/></th><th><s:text name="label.natOfCrime"/></th> <th><s:text name="label.arrestIfAnyMade"/></th><th><s:text name="label.periodOfConfine"/></th><th><s:text name="label.punishAwarded"/></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                        <td><s:textarea id="name" name="name" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                        <td><select name="relationship_crime" id="relationship_crime" headerKey="1" headerValue="--Please Select--">
                                <option value="Father"><s:text  name="option.father"/></option>
                                <option value="Step mother"><s:text  name="option.stepFat"/></option>
                                <option value="Mother"><s:text  name="option.mother"/></option>
                                <option value="Step father"><s:text  name="option.stepMother"/></option>
                                <option value="Brother"><s:text  name="option.brother"/></option>
                                <option value="Sister"><s:text  name="option.sister"/></option>
                                <option value="Child"><s:text  name="option.child"/></option>
                                <option value="uncle"><s:text  name="option.uncle"/></option>
                                <option value="aunty"><s:text  name="option.aunty"/></option>
                                <option value="grand parents"><s:text  name="option.grandParents"/></option>
                                
                            </select>
                            </td>
                       <td><s:textarea id="natureCrime" name="natureCrime" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="arrestMade" name="arrestMade" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="periodConfinement" name="periodConfinement" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <td><s:textarea id="punishment" name="punishment" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       
                   </tr>
                 </table>
                       <INPUT type="button" value="<s:text name="label.addRow"/>" onclick="addRow('CHFC')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="label.delRow"/>" onclick="deleteRow('CHFC')"/>
                    <table>
                        <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.save"/>" align="center"/></td></tr>
                    </table>   
                     </s:form>
                     
                       <div id="dialog-form_CHFamilyCrime" title="<s:text name="js.preview.hisCrFamMem"/>">
	<form name="CHFamilyCrime_prevwindow">
            <s:text name="label.profileId"/>:&nbsp;&nbsp;&nbsp;&nbsp;<span id="childProfileId_span"></span>
	<table border="1" id="ch_FamilyCrime_span">
            <thead>
             <tr>
                <th><s:text name="label.serNo"/></th>
                <th><s:text name="label.name"/></th>
                <th><s:text name="label.relationship"/></th>
                <th><s:text name="label.natOfCrime"/></th>
                <th><s:text name="label.arrestIfAnyMade"/></th>
                <th><s:text name="label.periodOfConfine"/></th>
                <th><s:text name="label.punishAwarded"/></th>
              </tr>
            </thead>
            <tbody>
             <tr>
             </tr>
            </tbody>
        </table>
	</form>
        </div>
                     
                     
        </center>
    </body>
</html>
