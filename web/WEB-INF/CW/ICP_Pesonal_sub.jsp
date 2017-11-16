<%-- 
    Document   : ICP_Pesonal_sub
    Created on : 11 Oct, 2012, 11:46:22 AM
    Author     : suresh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>

<table>
    <tr><td align="right"><s:text name="label.fName"/>:</td><td><s:textfield name="firstName" id="firstName" theme="css_xhtml" value="%{transChildMaster.childName}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
    <tr><td align="right"><s:text name="label.lName"/>:</td><td><s:textfield name="lastName" id="lastName" theme="css_xhtml" value="%{transChildMaster.childSurname}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="label.ageAtAdm"/>:</td><td><s:textfield name="age" id="age" theme="css_xhtml" value="%{transChildMaster.age}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.gender"/>:</td><td>
                         <s:if test="%{transChildMaster.gender=='female'}">
                             <input type="radio" name="sex" id="sex" theme="css_xhtml" value="male" /><s:text name="label.male"/>
                             <input type="radio" name="sex" id="sex" theme="css_xhtml" value="female" checked="true"/><s:text name="label.female"/>
                         </s:if>  
                         <s:else>
                             <input type="radio" name="sex" id="sex" theme="css_xhtml" value="male" checked="true"/><s:text name="label.male"/>
                             <input type="radio" name="sex" id="sex" theme="css_xhtml" value="female" /><s:text name="label.female"/>
                         </s:else>    
                    </td></tr>
                 
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><s:textfield name="fatherName" id="fatherName" theme="css_xhtml" value="%{transChildDetails.fatherName}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><s:textfield name="motherName" id="motherName" theme="css_xhtml" value="%{transChildDetails.motherName}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="label.nationality"/>:</td><td><s:textfield name="nationality" id="nationality" theme="css_xhtml" value="INDIAN" readonly="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 
                 <tr><td align="right"><s:text name="global.label.relg"/>:</td>
                 <td>
                     <select name="religion" theme="css_xhtml" id="religion" headerKey="1"  headerValue="-- <s:text name="global.option.headerKey"/> --" onchange="CH_other_dynamic(this,this.id);">
                         <s:if test="%{transChildDetails.religion=='Hindu'||transChildDetails.religion==getText('religion.hindu')}">
                                <option value="<s:text name="religion.hindu"/>" selected><s:text name="religion.hindu"/></option>
                         </s:if>
                         <s:else><option value="<s:text name="religion.hindu"/>"><s:text name="religion.hindu"/></option></s:else>
                         <s:if test="%{transChildDetails.religion=='Muslim'||transChildDetails.religion==getText('religion.muslim')}">
                                <option value="<s:text name="religion.muslim"/>" selected><s:text name="religion.muslim"/></option>
                         </s:if>
                         <s:else><option value="<s:text name="religion.muslim"/>"><s:text name="religion.muslim"/></option></s:else>
                         <s:if test="%{transChildDetails.religion=='Christian'||transChildDetails.religion==getText('religion.christian')}">
                                <option value="<s:text name="religion.christian"/>" selected><s:text name="religion.christian"/></option>
                         </s:if>
                         <s:else><option value="<s:text name="religion.christian"/>"><s:text name="religion.christian"/></option></s:else>
                         <s:if test="%{transChildDetails.religion=='Jain'||transChildDetails.religion==getText('religion.jain')}">
                                <option value="<s:text name="religion.jain"/>" selected><s:text name="religion.jain"/></option>
                         </s:if>
                         <s:else><option value="<s:text name="religion.jain"/>"><s:text name="religion.jain"/></option></s:else>
                         <s:if test="%{transChildDetails.religion=='Others'||transChildDetails.religion==getText('option.others')}">
                                <option value="Others" selected><s:text name="option.oth"/></option>
                         </s:if>
                         <s:else><option value="Others"><s:text name="option.oth"/></option></s:else>
                     </select> </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="religion_other" id="religion_other" theme="css_xhtml" disabled="true" value="%{transChildDetails.religion_other}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr> 
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><s:textfield name="caste"  theme="css_xhtml" id="caste" value="%{transChildDetails.caste}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><s:textfield name="subcaste" id="subcaste" theme="css_xhtml" value="%{transChildDetails.subcaste}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                            
                 <tr><td align="right"><s:text name="label.icp.eduAttain"/>:</td><td><s:textfield name="educationAttainment" id="educationAttainment" theme="css_xhtml" value="%{transChildDetails.eduStatus}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
</table>