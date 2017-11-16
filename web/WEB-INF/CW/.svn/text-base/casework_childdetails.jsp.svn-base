<%-- 
    Document   : casework_childdetails
    Created on : Jun 8, 2011, 2:23:04 PM
    Author     : Ramu Parupalli
--%>
<head>
    <script src="JQscript/jquery.ui.datepicker.js"></script>    
</head>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:if test="child_select !=null">
 
<table>
    <tr><td align="right"><s:text name="global.leftMenu.fName"/>:</td><td><s:textfield name="childName" id="childName"  value="%{child_select.childName}" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
    <tr><td align="right"><s:text name="global.label.lName"/>:</td><td><s:textfield name="childSurname" id="childSurname" value="%{child_select.childSurname}" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
    <tr><td align="right"><s:text name="label.age"/>:</td><td><s:textfield name="age" id="age" value="%{child_select.age}" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
    <tr><td align="right"><s:text name="global.label.gender"/>:</td>
        <td>
          
        
             <s:if test="%{child_select.gender=='male'}">
                 <input type="radio" name="gender" id="gender" value="male"  checked/><s:text name="label.male"/>
                 <input type="radio" name="gender" id="gender" value="female" /><s:text name="label.female"/>
             </s:if>
             <s:else>
                 <input type="radio" name="gender" id="gender" value="male"  /><s:text name="label.male"/>
                 <input type="radio" name="gender" id="gender" value="female" checked/><s:text name="label.female"/>
             </s:else>
        
        </td></tr>
                <tr><td align="right">:</td><td><s:textfield name="childNature" id="childNature" value="%{child_select.childNature}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.disabled"/>:</td>
                    <td>        <s:if test="%{child_select.disabled=='Y'}">
                                     <input type="radio" name="disabled" id="disabled" value="Y" onchange="casework_diabled(this);" disabled="true" checked/><s:text name="global.label.yes"/>
                                     <input type="radio" name="disabled" id="disabled" value="N" onchange="casework_diabled(this);" disabled="true" /><s:text name="global.label.no"/>
                                 </s:if>
                                 <s:else>
                                     <input type="radio" name="disabled" id="disabled" value="Y" onchange="casework_diabled(this);" disabled="true" /><s:text name="global.label.yes"/>
                                     <input type="radio" name="disabled" id="disabled" value="N" onchange="casework_diabled(this);" disabled="true" checked/><s:text name="global.label.no"/>
                                 </s:else>
                    
                    </td></tr>
                <tr><td align="right"><s:text name="global.label.natOfDis"/>:</td><td><s:textfield name="natureDisability" id="natureDisability" value="%{child_select.natureDisability}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.dateOfCharge"/>:</td><td><s:date name="%{child_select.dateTimeAdm}" format="dd/MM/yyyy" var="fDate"/><s:textfield name="dateTimeAdm" id="dateTimeAdm" value="%{#fDate}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.placeOfCharge"/>:</td><td><s:textfield name="placeOfCharge" id="placeOfCharge" value="%{child_select.placeOfCharge}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.admBy"/>:</td><td><s:textfield name="admThrough" id="admThrough" value="%{child_select.admThrough}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.desIdent"/>:</td><td><s:textarea name="identificationMarks" id="identificationMarks" cols="20" rows="4" value="%{child_select.identificationMarks}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.detailsOfProp"/>:</td><td><s:textarea name="propertyPossessed" id="propertyPossessed" cols="20" rows="4" value="%{child_select.propertyPossessed}" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="global.label.recoCW"/>:</td><td><s:textarea name="recommCaseworker" value="%{child_select.recommCaseworker}" id="recommCaseworker" cols="20" rows="4" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="label.recommCWC"/>:</td><td><s:textarea name="recommCwc" value="%{child_select.recommCwc}" id="recommCwc" cols="20" rows="4" theme="simple" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
               
 </table>
                
                <table>
                 <tr><td align="right"><s:text name="global.label.relg"/>:</td>
                     <td><select name="religion" id="religion" headerKey="1" headerValue="-- <s:text name="global.option.headerKey"/> --" onchange="casework_dynamic(this);" theme="simple">
                             <option value="<s:text name="religion.hindu"/>"><s:text name="religion.hindu"/></option>
                             <option value="<s:text name="religion.muslim"/>"><s:text name="religion.muslim"/></option>
                             <option value="<s:text name="religion.christian"/>"><s:text name="religion.christian"/></option>
                             <option value="<s:text name="religion.jain"/>"><s:text name="religion.jain"/></option>
                             <option value="Other"><s:text name="option.oth"/></option>
                         </select> </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="religion_other" id="religion_other" disabled="true" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td>
                        <s:select theme="css_xhtml"  list="#{'SC':'SC','ST':'ST','BC':'BC','OC':'OC','Minority':'Minority','Others':'Others'}" 	name="caste" id="caste"/></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><s:textfield name="subcaste" id="subcaste" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <%--           <tr><td align="right"><s:text name="global.label.dateOfBir"/>:</td><td><s:textfield name="childDetails_dob" id="datepicker" theme="simple" /></td></tr>     --%>
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><s:textfield name="fatherName" id="fatherName" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><s:textfield name="fatherOccup" id="fatherOccup" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><s:textfield name="motherName" id="motherName" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><s:textfield name="motherOccup" id="motherOccup" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><s:textfield name="noBrothers" id="noBrothers" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><s:textfield name="noSister" id="noSister" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.langKnown"/>:</td>
                     <td><select name="languagesKnown" id="languagesKnown" multiple="true" size="4" headerKey="1" headerValue="--<s:text name="global.option.headerKey"/>--">
                             <option value="<s:text name="lang.assame"/>"><s:text name="lang.assame"/></option>
                             <option value="<s:text name="lang.bengali"/>"><s:text name="lang.bengali"/></option> 
                             <option value="<s:text name="lang.bodo"/>"><s:text name="lang.bodo"/></option>
                             <option value="<s:text name="lang.chatshgiri"/>"><s:text name="lang.chatshgiri"/></option>
                             <option value="<s:text name="lang.dogri"/>"><s:text name="lang.dogri"/></option>
                             <option value="<s:text name="lang.garo"/>"><s:text name="lang.garo"/></option>
                             <option value="<s:text name="lang.gujarati"/>"><s:text name="lang.gujarati"/></option>
                             <option value="<s:text name="lang.hindi"/>"><s:text name="lang.hindi"/></option>
                             <option value="<s:text name="lang.kannada"/>"><s:text name="lang.kannada"/></option>
                             <option value="<s:text name="lang.kashmiri"/>"><s:text name="lang.kashmiri"/></option>
                             <option value="<s:text name="lang.khasi"/>"><s:text name="lang.khasi"/></option>
                             <option value="<s:text name="lang.kokborok"/>"><s:text name="lang.kokborok"/></option>
                             <option value="<s:text name="lang.konkani"/>"><s:text name="lang.konkani"/></option>
                             <option value="<s:text name="lang.mithili"/>"><s:text name="lang.mithili"/></option>
                             <option value="<s:text name="lang.malayalam"/>"><s:text name="lang.malayalam"/></option>
                             <option value="<s:text name="lang.manipuri"/>"><s:text name="lang.manipuri"/></option>
                             <option value="<s:text name="lang.marathi"/>"><s:text name="lang.marathi"/></option>
                             <option value="<s:text name="lang.mizo"/>"><s:text name="lang.mizo"/></option>
                             <option value="<s:text name="lang.nepali"/>"><s:text name="lang.nepali"/></option>
                             <option value="<s:text name="lang.oriya"/>"><s:text name="lang.oriya"/></option>
                             <option value="<s:text name="lang.punjabi"/>"><s:text name="lang.punjabi"/></option>
                             <option value="<s:text name="lang.sanskrit"/>"><s:text name="lang.sanskrit"/></option>
                             <option value="<s:text name="lang.santali"/>"><s:text name="lang.santali"/></option>
                             <option value="<s:text name="lang.sindhi"/>"><s:text name="lang.sindhi"/></option>
                             <option value="<s:text name="lang.telugu"/>"><s:text name="lang.telugu"/></option>
                             <option value="<s:text name="lang.tamil"/>"><s:text name="lang.tamil"/></option>
                             <option value="<s:text name="lang.urdu"/>"><s:text name="lang.urdu"/></option>
                             
                         </select>  
                     </td></tr>
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><s:textarea name="addrParents"  id="addrParents" cols="20" rows="4" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/></td><td><s:textfield name="intrRelatives" id="intrRelatives" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><s:textfield name="eduStatus" id="eduStatus" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <%--tr><td align="right">Photograph:</td><td><input type="file" name="admrh_reg_photo"/></td></tr--%>
                <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><s:textarea name="identifiedProblemsChild"  id="identifiedProblemsChild" cols="20" rows="4" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                  <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.save"/>"/></td></tr>
                </table>    
  
</s:if>
          
   