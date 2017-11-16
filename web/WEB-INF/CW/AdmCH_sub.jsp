<%-- 
    Document   : AdmCH_sub
    Created on : Jun 14, 2011, 12:20:58 PM
    Author     : Ramu Parupalli
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:date var="fDate" name='%{transChildDetails.dob}' format='dd/MM/yyyy'/>
   <table>
                    <tr>
                        <td align="right"><s:text name="label.fName"/>:</td>
                        <td><s:textfield id="childName" name="childName" value="%{transChildMaster.childName}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.lName"/>:</td>
                        <td><s:textfield id="childSurname" name="childSurname" theme="css_xhtml" value="%{transChildMaster.childSurname}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>       
                    
                     <tr>
                         <td align="right"><s:text name="global.label.gender"/>:</td>
                         <td>
                             <s:if test="%{transChildMaster.gender=='male'}">
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="male" checked/><s:text name="label.male"/>
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="female" /><s:text name="label.female"/>
                             </s:if>
                             <s:else>      
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="male" /><s:text name="label.male"/>
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="female" checked/><s:text name="label.female"/>
                             </s:else> 
                               
                         
                         </td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.idMarks"/>:</td>
                        <td><s:textarea id="identificationMarks" name="identificationMarks" theme="css_xhtml" value="%{transChildMaster.identificationMarks}" rows="3" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.ageOfChild"/>:</td>
                        <td><s:textfield name="age" id="age" value="%{transChildMaster.age}"  theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.childNat"/>:</td>
                        <td><s:textfield name="childNature" id="childNature" value="%{transChildMaster.childNature}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.disabled"/>:</td>
                        <td><s:if test="%{transChildMaster.disabled=='Y'}">
                                  <input type="radio" id="disabled" name="disabled" value="Y" onchange="casework1_diabled(this);" checked/><s:text name="label.yes"/>
                                  <input type="radio" id="disabled" name="disabled" value="N" onchange="casework1_diabled(this);"/><s:text name="label.no"/>
                            </s:if>
                            <s:else>
                                  <input type="radio" id="disabled" name="disabled" value="Y" onchange="casework1_diabled(this);"/><s:text name="label.yes"/>
                                  <input type="radio" id="disabled" name="disabled" value="N" onchange="casework1_diabled(this);" checked/><s:text name="label.no"/>
                            </s:else>
                           </td>
                        
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.natOfDis"/>:</td>
                        <td><s:textfield id="natureDisability" name="natureDisability" theme="css_xhtml" value="%{transChildMaster.natureDisability}" disabled="true"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr><td align="right"><s:text name="global.label.relg"/>:</td><td>
                            
                            
                            <select name="religion" theme="css_xhtml" id="religion" onchange="casework_dynamic(this);" value="%{transChildDetails.religion}">
                                <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                <option value="<s:text name='religion.hindu'/>"><s:text name="religion.hindu"/></option>
                                <option value="<s:text name='religion.muslim'/>"><s:text name="religion.muslim"/></option>
                                <option value="<s:text name='religion.christian'/>"><s:text name="religion.christian"/></option>
                                <option value="<s:text name='religion.jain'/>"><s:text name="religion.jain"/></option>
                                <option value="Other"><s:text name="option.oth"/></option>
                            </select>
                            
                        </td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="religion_other" id="religion_other" theme="css_xhtml" disabled="true" value="%{transChildDetails.religion_other}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><s:textfield name="caste"  theme="css_xhtml" id="caste" value="%{transChildDetails.caste}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><s:textfield name="subcaste" id="subcaste" theme="css_xhtml" value="%{transChildDetails.subcaste}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <%--tr><td align="right"><s:text name="global.label.dateOfBir"/>:</td><td><s:textfield name="childDetails_dob" id="datepicker" value="%{fDate}" theme="css_xhtml"/></td></tr--%>
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><s:textfield name="fatherName" id="fatherName" value="%{transChildDetails.fatherName}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><s:textfield name="fatherOccup" value="%{transChildDetails.fatherOccup}" id="fatherOccup" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><s:textfield name="motherName" id="motherName" value="%{transChildDetails.motherName}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><s:textfield name="motherOccup" id="motherOccup" value="%{transChildDetails.motherOccup}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><s:textfield name="noBrothers" id="noBrothers" value="%{transChildDetails.noBrothers}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><s:textfield name="noSister" value="%{transChildDetails.noSister}" id="noSister" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.langKnown"/>:</td><td>
                         <select name="languagesKnown" theme="css_xhtml" value="1" id="languagesKnown" multiple="true" size="4" headerKey="1"  headerValue="-- <s:text name="global.option.headerKey"/> --" >
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
                             <option value="<s:text name="lang.nepali"/>"><s:text name="lang.nepali"/></option>
                             <option value="<s:text name="lang.oriya"/>"><s:text name="lang.oriya"/></option>
                             <option value="<s:text name="lang.punjabi"/>"><s:text name="lang.punjabi"/></option>
                             <option value="<s:text name="lang.sanskrit"/>"><s:text name="lang.sanskrit"/></option>
                             <option value="<s:text name="lang.sindhi"/>"><s:text name="lang.sindhi"/></option>
                             <option value="<s:text name="lang.telugu"/>"><s:text name="lang.telugu"/></option>
                             <option value="<s:text name="lang.tamil"/>"><s:text name="lang.tamil"/></option>
                             <option value="<s:text name="lang.urdu"/>"><s:text name="lang.urdu"/></option>
                          
                         </select>
                     
                     
                     </td></tr>
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><s:textarea name="addrParents" value="%{transChildDetails.addrParents}" theme="css_xhtml" id="addrParents" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/></td><td><s:textfield name="intrRelatives" id="intrRelatives" value="%{transChildDetails.intrRelatives}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><s:textfield name="eduStatus" id="eduStatus" value="%{transChildDetails.eduStatus}" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><s:textarea name="identifiedProblemsChild" theme="css_xhtml" value="%{transChildDetails.identifiedProblemsChild}"  id="identifiedProblemsChild" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>   
                    
                  
                    
                     
   </table>