<%-- 
    Document   : CH_Pesonal_sub
    Created on : Jun 22, 2011, 4:11:42 PM
    Author     : Ramu Parupalli
--%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%--<s:property value="%{transChildDetails.childName}"/>--%>

<table>
    <tr><td align="right"><s:text name="global.leftMenu.fName"/>:</td><td><s:textfield name="childName" id="childName" theme="css_xhtml" value="%{transChildDetails.childName}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
    <tr><td align="right"><s:text name="global.label.lName"/>:</td><td><s:textfield name="childSurname" id="childSurname" theme="css_xhtml" value="%{transChildDetails.childSurname}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.gender"/>:</td>
                     <td><input type="radio"  id="gender" name="gender" theme="css_xhtml" value="male"/><s:text name="label.male"/>
                         <input type="radio"  id="gender" name="gender" theme="css_xhtml" value="female"/><s:text name="label.female"/>
                         </td></tr>
                 <tr><td align="right"><s:text name="global.label.relg"/>:</td>
                     <td><select name="religion" theme="css_xhtml" id="religion" headerKey="1"  headerValue="-- <s:text name="global.option.headerKey"/> --" onchange="CH_other_dynamic(this,this.id);" selectedValue="%{transChildDetails.religion}">
                             <option value="<s:text name="religion.hindu"/>"><s:text name="religion.hindu"/></option>
                             <option value="<s:text name="religion.muslim"/>"><s:text name="religion.muslim"/></option>    
                             <option value="<s:text name="religion.christian"/>"><s:text name="religion.christian"/></option>
                             <option value="<s:text name="religion.jain"/>"><s:text name="religion.jain"/></option>    
                             <option value="Others"><s:text name="option.other"/></option>        
                         </select>   </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="religion_other" id="religion_other" theme="css_xhtml" disabled="true" value="%{transChildDetails.religion_other}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr> 
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><s:textfield name="caste"  theme="css_xhtml" id="caste" value="%{transChildDetails.caste}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><s:textfield name="subcaste" id="subcaste" theme="css_xhtml" value="%{transChildDetails.subcaste}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="label.ageAtAdm"/>:</td><td><s:textfield name="ageAdmission" id="ageAdmission" theme="css_xhtml" value="%{transChildDetails.age}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
</table>
