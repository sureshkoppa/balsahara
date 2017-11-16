<%-- 
    Document   : CH_ChildHouseholdDetails
    Created on : Jun 23, 2011, 10:37:10 AM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/CH_Household_validation.jsp"></jsp:include> 
        </script>
    <body onload="document.getElementById('dialog-form_ch_household').style.visibility='hidden'">
    <!--body onload="document.getElementById('dialog-form_ch_familymember_preview').style.visibility='hidden'"-->
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.childHouseHoldDet"/></b></font></CAPTION> 
            
           
              <s:form action="CH-HouseholdDetails-Save" method="POST" name="chhousehold" id="chhousehold" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chhousehold"/>
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
        
                     <%--table border="1" id="CHD">
                         <thead>
                             <tr><th>Select</th><th>Name</th><th>Relationship</th><th>Age</th> <th>Education</th><th>Occupation</th><th>Health</th><th>Handicap</th><th>Income</th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                        <td><s:textarea id="nameRelative" name="nameRelative" rows="1" cols="5"/></td>
                        <td><s:textarea id="relationship" name="relationship" rows="1" cols="5"/></td>
                       <td><s:textarea id="age" name="age" rows="1" cols="5"/></td>
                       <td><s:textarea id="education" name="education" rows="1" cols="5"/></td>
                       <td><s:textarea id="occupation" name="occupation" rows="1" cols="5"/></td>
                    <td><s:textarea id="health" name="health" rows="1" cols="5"/></td>
                       <td><s:textarea id="handicap" name="handicap" rows="1" cols="5"/></td>
                     <td><s:textarea id="income" name="income" rows="1" cols="5" wrap="true"/></td>
                   </tr>
                 </table--%>
                   
                   
                   
                        <table border="1" id="CHD">
                         <thead>
                             <tr><th><s:text name="label.select"/></th> <th><s:text name="label.recor"/></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                             
                        <td>
                            <table> 
                                                                  
                       <tr><th><s:text name="label.name"/></th><td><s:textarea id="nameRelative" name="nameRelative" rows="1" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.relationship"/></th><td><s:textarea id="relationship" name="relationship" rows="1" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.age"/></th><td><s:textarea id="age" name="age" rows="1" cols="5" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.edu"/></th><td><s:textarea id="education" name="education" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.occup"/></th><td><s:textarea id="occupation" name="occupation" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.health"/></th><td><s:textarea id="health" name="health" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.handicap"/></th><td><s:textarea id="handicap" name="handicap" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="label.income"/></th><td><s:textarea id="income" name="income" rows="2" cols="15" wrap="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                            </table>
                       </td>
                     </tr>
                 </table>               
                   
                   
                               <INPUT type="button" value="<s:text name="label.addRow"/>" onclick="addRow('CHD')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="label.delRow"/>" onclick="deleteRow('CHD')"/>
                    <table>
                        <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.save"/>" align="center"/></td></tr>
                    </table>                    
                    
                </s:form>
                     
                               <div id="dialog-form_ch_household" title="<s:text name="js.preview.chiHHDet"/>">
	<form name="ch_house_dialog">
            <s:text name="label.profileId"/>:&nbsp;&nbsp;&nbsp;&nbsp;<span id="childProfileId_span"></span>
	<table border="1" id="ch_household_span">
            <thead>
             <tr>
                 <th><s:text name="label.serNo"/></th>
                 <th><s:text name="global.name"/></th>
                 <th><s:text name="label.relationship"/></th>
                 <th><s:text name="label.age"/></th>
                 <th><s:text name="label.edu"/></th>
                 <th><s:text name="label.occup"/></th>
                 <th><s:text name="label.health"/></th>
                 <th><s:text name="label.handicap"/></th>
                 <th><s:text name="label.income"/></th>
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
