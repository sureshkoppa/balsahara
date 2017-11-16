<%-- 
    Document   : AdmissionSH
    Created on : 6 Jan, 2014, 4:42:43 PM
    Author     : ANUPAM
--%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<s:if test="#session.hometype=='CH'">
    <h2><s:text name="heading.admReg"/></h2></br>
    <div id="profileSelection_CH">
            
            <table border="1">
                <tr>
                    <td>Select the district from where child was transfered</td>
                    <td><select name="districtId" id="districtId">
                <option>---please select---</option>
                <jsp:include page="districts.jsp" />
            </select></td>
                </tr>
                
                <tr>
                    <td>Select the home in chosen district from where child was transfered </td>
                    <td><select name="homeId" id="homeId">
                <option value="1">---please select---</option>
            </select></td>
                </tr>
                
                <tr>
                    <td>Select the child in the chosen home who got transfered</td>
                    <td><select name="transChildId-sel" id="transChildId-sel">
                <option>---please select---</option>
            </select></td>
                </tr>
                
            </table>
                        
                        
        </div>    
            
         <hr></hr>
        
         <div id="dataEntry">
             <s:form action="CW-Save-To-CH" method="POST" theme="css_xhtml" id="CHSHAdmission_CH" name="CHSHAdmission_CH" class="CHSHForm">
                 <s:hidden name="formName" value="CHSHAdmission"/>
                 <s:hidden name="transChildId" id="transChildId_tosave" value="none"/>
                   
              <table>
                  
                      <tr>
                        <td align="right"><s:text name="label.fName"/>:</td>
                        <td><s:textfield id="childName" name="childName" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                      </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.lName"/>:</td>
                        <td><s:textfield id="childSurname" name="childSurname" theme="css_xhtml" value="" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>       
                    
                     <tr>
                         <td align="right"><s:text name="global.label.gender"/>:</td>
                         <td>
                             
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="male" /><s:text name="label.male"/>
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="female" /><s:text name="label.female"/>
                             
                               
                         
                         </td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.idMarks"/>:</td>
                        <td><s:textarea id="identificationMarks" name="identificationMarks" theme="css_xhtml" value="" rows="3" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.ageOfChild"/>:</td>
                        <td><s:textfield name="age" id="age" value=""  theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.childNat"/>:</td>
                        <td><s:textfield name="childNature" id="childNature" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.disabled"/>:</td>
                        <td>
                                  <input type="radio" id="disabled" name="disabled" value="Y"/><s:text name="label.yes"/>
                                  <input type="radio" id="disabled" name="disabled" value="N"/><s:text name="label.no"/>
                            
                           </td>
                        
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.natOfDis"/>:</td>
                        <td><s:textfield id="natureDisability" name="natureDisability" theme="css_xhtml" value="" disabled="true"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr><td align="right"><s:text name="global.label.relg"/>:</td><td>
                            
                            
                            <select name="religion" theme="css_xhtml" id="religion"  value="">
                                <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                <option value="<s:text name='religion.hindu'/>"><s:text name="religion.hindu"/></option>
                                <option value="<s:text name='religion.muslim'/>"><s:text name="religion.muslim"/></option>
                                <option value="<s:text name='religion.christian'/>"><s:text name="religion.christian"/></option>
                                <option value="<s:text name='religion.jain'/>"><s:text name="religion.jain"/></option>
                                <option value="Sikh">Sikh</option>
                                <option value="Buddhist">Buddhist</option>
                                <option value="Other">Not Known</option>
                            </select>
                            
                        </td></tr>
                                 
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td>                     
                         
                         <s:select theme="css_xhtml" headerKey="1" headerValue="---plaese select---"  list="#{'SC':'SC','ST':'ST','BC':'BC','OC':'OC','Minority':'Minority','Others':'Others','not known':'not known'}" name="caste" id="caste"/> 
                     </td></tr>
                          
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><s:textfield name="subcaste" id="subcaste" theme="css_xhtml" value="" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><s:textfield name="fatherName" id="fatherName" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><s:textfield name="fatherOccup" value="" id="fatherOccup" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><s:textfield name="motherName" id="motherName" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><s:textfield name="motherOccup" id="motherOccup" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><s:textfield name="noBrothers" id="noBrothers" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><s:textfield name="noSister" value="" id="noSister" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
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
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><s:textarea name="addrParents" value="" theme="css_xhtml" id="addrParents" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/></td><td><s:textfield name="intrRelatives" id="intrRelatives" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><s:textfield name="eduStatus" id="eduStatus" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><s:textarea name="identifiedProblemsChild" theme="css_xhtml" value=""  id="identifiedProblemsChild" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>   
                 
                         <table>
                              
                 
                    <!--same fieds as RH / OH end-->

                      <tr>
                        <td align="right"><s:text name="global.label.admBy"/> :</td>
                        <td><select name="admThrough" id="admThrough">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                <option value="<s:text name="option.cwc"/>"><s:text name="option.cwc"/></option>
                                <option value="<s:text name="option.jjb"/>"><s:text name="option.jjb"/></option>
                                <option value="Child Line">Child Line</option>
                                <option value="AuthorizedPerson"><s:text name="option.authPers"/></option>
                            </select>   </td>
                    </tr>

                    <tr>
                        <td id="nameAuthPer_td" align="right"><s:text name="global.label.nameAuthPers"/> :</td>
                        <td><s:textfield name="nameAuthPer" id="nameAuthPer" disabled="true"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.cwcjjbnum"/> :</td>
                        <td><s:textfield name="cwcJjbOrderNo" id="cwcJjbOrderNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                     <tr>
                        <td align="right"><s:text name="global.label.cwcjjbdate"/> :</td>
                        <td><s:textfield name="orderDate_String" id="datepicker1" readonly="true"/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.dateOfAdm"/> :</td>
                        <td><s:textfield name="dateTimeAdm" id="datepicker2" readonly="true"/>
                        <!--input id="test"/-->
                        </td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.detailsOfProp"/> :</td>
                        <td><s:textarea name="propertyPossessed" id="propertyPossessed"  value="%{transChildMaster.propertyPossessed}" rows="4" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <!--Added by anupam on 13-01-2012 start-->
                    <tr>
                        <td align="right">
                            <table border="0">
                                <tr><td><s:text name="global.label.premEnqReport"/></td></tr>
                                <tr><th><s:text name="global.label.mentionPoints"/></th></tr>
                                <tr><td>1.<s:text name="global.label.whereChiFound"/>.</td></tr>
                                <tr><td>2.<s:text name="global.label.undWhatCircu"/>.</td></tr>
                                <tr><td>3.<s:text name="global.label.wordsUtterChild"/>.</td></tr>
                                <tr><td>4.<s:text name="global.label.langUsedChild"/>.</td></tr>
                                </table>
                        </td>
                        <td><s:textarea name="preEnqRept" id="preEnqRept"  value="" rows="8" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <!--Added by anupam on 13-01-2012 end-->
                    <tr>
                        <td align="right"><s:text name="global.label.proLawChildAdmm"/> :</td>
                        <td><s:textfield name="provisionLaw" id="provisionLaw" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                     <tr>
                            <td align="right"><s:text name="global.label.reaAdmConfLaw"/> :</td>
                        <td><s:textarea id="reasonAdm" name="reasonAdm" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                   
                    <tr>
                        <td align="right"><s:text name="global.label.periodOfStay"/> :</td>
                        <td><s:textfield name="periodStay" id="periodStay" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <%--
                    <tr>
                        <td align="right"><s:text name="global.label.probDatedis"/> :</td>
                        <td><s:textfield name="probableDischargeDate_String" id="datepicker3" readonly="true" value="15/12/2013"/></td>
                    </tr>
                    --%>
                      <tr>
                          <td align="right"><s:text name="global.label.recoCWC"/> :</td>
                        <td><s:textarea rows="2" cols="17" name="recommCwc" id="recommCwc" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                      <tr>
                          <td align="right"><s:text name="global.label.recoCW"/> :</td>
                        <td><s:textarea id="recommCaseworker" name="recommCaseworker" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                     <tr>
                            <td align="center"><input type="submit" value="<s:text name="button.save"/>" ></td>
                            <td align="left"><input type="reset" value="<s:text name="button.clear"/>" ></td>
                    </tr>
                    
                         </table></td></tr></table>
                          </s:form>
                     </div>

            <%-- commented preview
            <div id="dialog-form_CHSHAdmission_preview" title="<s:text name="js.preview.AdmReg"/>">
	<form name="CHSHAdm_prevwindow" >
             <table border="1">
                 <tr><td align="right"><s:text  name="global.label.transChiProId"/>:</td><td><span id="transChildId_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.fName"/>:</td><td><span id="childName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.lName"/>:</td><td><span id="childSurname_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.gender"/>:</td><td><span id="gender_span"></span></td></tr>
                  <tr><td align="right"><s:text name="global.label.idMarks"/>:</td><td><span id="identificationMarks_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.childNat"/>:</td><td><span id="childNature_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.disabled"/>:</td><td><span id="disabled_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.natOfDis"/>:</td><td><span id="natureDisability_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.relg"/>:</td><td><span id="religion_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="religion_other_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><span id="caste_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><span id="subcaste_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.age"/>:</td><td><span id="age_span"></span></td></tr>
               
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><span id="fatherName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><span id="fatherOccup_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><span id="motherName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><span id="motherOccup_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><span id="noBrothers_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><span id="noSister_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.langKnown"/>:</td><td><span id="languagesKnown_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><span id="addrParents_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/>:</td><td><span id="intrRelatives_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><span id="eduStatus_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><span id="identifiedProblemsChild_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.admBy"/>:</td><td><span id="admThrough_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.nameAuthPers"/>:</td><td><span id="nameAuthPer_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.cwcjjbnum"/>:</td><td><span id="cwcJjbOrderNo_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.cwcjjbdate"/>:</td><td><span id="orderDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.dateOfAdm"/>:</td><td><span id="dateTimeAdm_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.detailsOfProp"/>:</td><td><span id="propertyPossessed_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.proLawChildAdmm"/>:</td><td><span id="provisionLaw_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.reaAdmConfLaw"/>:</td><td><span id="reasonAdm_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.periodOfStay"/>:</td><td><span id="periodStay_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.probDatedis"/>:</td><td><span id="probableDischargeDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.recoCW"/>:</td><td><span id="recommCaseworker_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.recoCWC"/>:</td><td><span id="recommCwc_span"></span></td></tr>
                 </table>  
	</form>
        </div>
            --%>
        </center>
        
    
</s:if>
  
<s:elseif test="#session.hometype=='SH'">
    
    <center>
            <h2><s:text name="heading.admReg"/></h2></br>
        <div id="admissionType">
            <table border="1">
                <tr>
                    <td colspan="2">Select type of admission</td>
                </tr>
                <tr>
                    <td><input type="radio" name="admissionType" id="admissionType" value="transfer"></input></td>
                    <td>Admission of a child transferred from other home</td>
                </tr>
                <tr>
                    <td><input type="radio" name="admissionType" id="admissionType" value="direct"></input></td>
                    <td>Direct admission of child through JJB</td>
                </tr>
            </table>      
            
            
        </div>
        <hr></hr>
        <div id="profileSelection">
            
            <table border="1">
                <tr>
                    <td>Select the district from where child was transfered</td>
                    <td><select name="districtId" id="districtId">
                <option>---please select---</option>
                <jsp:include page="districts.jsp" />
            </select></td>
                </tr>
                
                <tr>
                    <td>Select the home in chosen district from where child was transfered </td>
                    <td><select name="homeId" id="homeId">
                <option value="1">---please select---</option>
            </select></td>
                </tr>
                
                <tr>
                    <td>Select the child in the chosen home who got transfered</td>
                    <td><select name="transChildId-sel" id="transChildId-sel">
                <option>---please select---</option>
            </select></td>
                </tr>
                
            </table>
                        
                        
        </div>    
            
         <hr></hr>
        
         <div id="dataEntry">
             <s:form action="CW-Save-To-CH" method="POST" theme="css_xhtml" id="CHSHAdmission" name="CHSHAdmission" class="CHSHForm">
                 <s:hidden name="formName" value="CHSHAdmission"/>
                 <s:hidden name="transChildId" id="transChildId_tosave" value="none"/>
                   
              <table>
                  
                      <tr>
                        <td align="right"><s:text name="label.fName"/>:</td>
                        <td><s:textfield id="childName" name="childName" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                      </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.lName"/>:</td>
                        <td><s:textfield id="childSurname" name="childSurname" theme="css_xhtml" value="" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>       
                    
                     <tr>
                         <td align="right"><s:text name="global.label.gender"/>:</td>
                         <td>
                             
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="male" /><s:text name="label.male"/>
                                  <input type="radio" id="gender" name="gender" theme="css_xhtml" value="female" /><s:text name="label.female"/>
                             
                               
                         
                         </td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.idMarks"/>:</td>
                        <td><s:textarea id="identificationMarks" name="identificationMarks" theme="css_xhtml" value="" rows="3" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.ageOfChild"/>:</td>
                        <td><s:textfield name="age" id="age" value=""  theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.childNat"/>:</td>
                        <td><s:textfield name="childNature" id="childNature" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.disabled"/>:</td>
                        <td>
                                  <input type="radio" id="disabled" name="disabled" value="Y"/><s:text name="label.yes"/>
                                  <input type="radio" id="disabled" name="disabled" value="N"/><s:text name="label.no"/>
                            
                           </td>
                        
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.natOfDis"/>:</td>
                        <td><s:textfield id="natureDisability" name="natureDisability" theme="css_xhtml" value="" disabled="true"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr><td align="right"><s:text name="global.label.relg"/>:</td><td>
                            
                            
                            <select name="religion" theme="css_xhtml" id="religion"  value="">
                                <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                                <option value="<s:text name='religion.hindu'/>"><s:text name="religion.hindu"/></option>
                                <option value="<s:text name='religion.muslim'/>"><s:text name="religion.muslim"/></option>
                                <option value="<s:text name='religion.christian'/>"><s:text name="religion.christian"/></option>
                                <option value="<s:text name='religion.jain'/>"><s:text name="religion.jain"/></option>
                                <option value="Sikh">Sikh</option>
                                <option value="Buddhist">Buddhist</option>
                                <option value="Other">Not Known</option>
                            </select>
                            
                        </td></tr>
                                 
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td>                     
                         
                         <s:select theme="css_xhtml" headerKey="1" headerValue="---plaese select---"  list="#{'SC':'SC','ST':'ST','BC':'BC','OC':'OC','Minority':'Minority','Others':'Others','not known':'not known'}" name="caste" id="caste"/> 
                     </td></tr>
                          
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><s:textfield name="subcaste" id="subcaste" theme="css_xhtml" value="" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><s:textfield name="fatherName" id="fatherName" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><s:textfield name="fatherOccup" value="" id="fatherOccup" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><s:textfield name="motherName" id="motherName" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><s:textfield name="motherOccup" id="motherOccup" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><s:textfield name="noBrothers" id="noBrothers" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><s:textfield name="noSister" value="" id="noSister" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
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
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><s:textarea name="addrParents" value="" theme="css_xhtml" id="addrParents" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/></td><td><s:textfield name="intrRelatives" id="intrRelatives" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><s:textfield name="eduStatus" id="eduStatus" value="" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                 <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><s:textarea name="identifiedProblemsChild" theme="css_xhtml" value=""  id="identifiedProblemsChild" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>   
                 
                         <table>
                              
                 
                    <!--same fieds as RH / OH end-->

                      <tr>
                        <td align="right"><s:text name="global.label.admBy"/> :</td>
                        <td><select name="admThrough" id="admThrough">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                <option value="<s:text name="option.cwc"/>"><s:text name="option.cwc"/></option>
                                <option value="<s:text name="option.jjb"/>"><s:text name="option.jjb"/></option>
                                <option value="Child Line">Child Line</option>
                                <option value="previousObservationHome">Observation Home</option>                                
                                <option value="AuthorizedPerson"><s:text name="option.authPers"/></option>
                            </select>   </td>
                    </tr>
                    
                    <tr>
                        <td  id="previousObservationHome_td" align="right">Previous Observation Home :</td>
                        <td>
                            <select name="previousObservationHome" id="previousObservationHome" disabled="true">
                                <option value='NA'>---Please Select---</option>
                                <option value='AP_ANA_OHB_0035' title='Observation Home for Boys, Behind ISCON Temple, Tadakaleru, Somuladoddi Post, Anantapur'>OHB - Anantapur </option>
                                <option value='AP_CHI_OHB_0043' title='Observation Home for Boys, Mangalam, Tirupati, Chittor'>OHB - Chittor</option>
                                <option value='AP_EGO_OHB_0038' title='Observation Home for Boys, D.No.69-20-1, Near CRTI Bhaskar Nagar, Rajahmundry, E.Godavari'>OHB - Rajahmundry</option>
                                <option value='AP_HYD_OHB_0041' title='Observation Home for Boys, Saidabad, Hyderabad'>OHB - Hyderabad</option>
                                <option value='AP_KRI_OHB_0040' title='Observation Home for Boys, H.NO.3-1-265/4A, Near Old Sub Post Office, Kabela, Vidyadharapuram, Vijayawada, Krishna'>OHB - Vijayawada</option>
                                <option value='AP_KUR_OHB_0039' title='Observation Home for Boys, Plot No. 12, Doctors Colony, B Camp, Kurnool-2'>OHB - Kurnool</option>
                                <option value='AP_NZB_OHB_0037' title='Observation Home for Boys, Beside AP Residential (Urdu Medium), Nagaram, Nizamabad'>OHB - Nizamabad</option>
                                <option value='AP_VIS_OHB_0032' title='Observation Home for Boys, D.No.50-49-36, TPT Colony, Seethammadhara, Visakapatnam-13'>OHB - Visakapatnam</option>
                                <option value='AP_WAR_OHB_0042' title='Observation Home for Boys, Auto Nagar X Road, Near Regional Eye Hospital, Warangal'>OHB - Warangal</option>
                            </select>
                            
                        </td>
                    </tr>

                   <tr>
                        <td id="nameAuthPer_td" align="right"><s:text name="global.label.nameAuthPers"/> :</td>
                        <td><s:textfield name="nameAuthPer" id="nameAuthPer" disabled="true"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.cwcjjbnum"/> :</td>
                        <td><s:textfield name="cwcJjbOrderNo" id="cwcJjbOrderNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                     <tr>
                        <td align="right"><s:text name="global.label.cwcjjbdate"/> :</td>
                        <td><s:textfield name="orderDate_String" id="datepicker1" readonly="true"/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.dateOfAdm"/> :</td>
                        <td><s:textfield name="dateTimeAdm" id="datepicker2" readonly="true"/>
                        <!--input id="test"/-->
                        </td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.detailsOfProp"/> :</td>
                        <td><s:textarea name="propertyPossessed" id="propertyPossessed"  value="%{transChildMaster.propertyPossessed}" rows="4" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <!--Added by anupam on 13-01-2012 start-->
                    <tr>
                        <td align="right">
                            <table border="0">
                                <tr><td><s:text name="global.label.premEnqReport"/></td></tr>
                                <tr><th><s:text name="global.label.mentionPoints"/></th></tr>
                                <tr><td>1.<s:text name="global.label.whereChiFound"/>.</td></tr>
                                <tr><td>2.<s:text name="global.label.undWhatCircu"/>.</td></tr>
                                <tr><td>3.<s:text name="global.label.wordsUtterChild"/>.</td></tr>
                                <tr><td>4.<s:text name="global.label.langUsedChild"/>.</td></tr>
                                </table>
                        </td>
                        <td><s:textarea name="preEnqRept" id="preEnqRept"  value="" rows="8" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <!--Added by anupam on 13-01-2012 end-->
                    <tr>
                        <td align="right"><s:text name="global.label.proLawChildAdmm"/> :</td>
                        <td><s:textfield name="provisionLaw" id="provisionLaw" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                     <tr>
                            <td align="right"><s:text name="global.label.reaAdmConfLaw"/> :</td>
                        <td><s:textarea id="reasonAdm" name="reasonAdm" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                   
                    <tr>
                        <td align="right"><s:text name="global.label.periodOfStay"/> :</td>
                        <td><s:textfield name="periodStay" id="periodStay" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <%--
                    <tr>
                        <td align="right"><s:text name="global.label.probDatedis"/> :</td>
                        <td><s:textfield name="probableDischargeDate_String" id="datepicker3" readonly="true" value="15/12/2013"/></td>
                    </tr>
                    --%>
                      <tr>
                          <td align="right"><s:text name="global.label.recoCWC"/> :</td>
                        <td><s:textarea rows="2" cols="17" name="recommCwc" id="recommCwc" theme="css_xhtml" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                      <tr>
                          <td align="right"><s:text name="global.label.recoCW"/> :</td>
                        <td><s:textarea id="recommCaseworker" name="recommCaseworker" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                     <tr>
                            <td align="center"><input type="submit" value="<s:text name="button.save"/>" ></td>
                            <td align="left"><input type="reset" value="<s:text name="button.clear"/>" ></td>
                    </tr>
                    
                         </table></td></tr></table>
                          </s:form>
                     </div>

            <%-- commented preview
            <div id="dialog-form_CHSHAdmission_preview" title="<s:text name="js.preview.AdmReg"/>">
	<form name="CHSHAdm_prevwindow" >
             <table border="1">
                 <tr><td align="right"><s:text  name="global.label.transChiProId"/>:</td><td><span id="transChildId_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.fName"/>:</td><td><span id="childName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.lName"/>:</td><td><span id="childSurname_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.gender"/>:</td><td><span id="gender_span"></span></td></tr>
                  <tr><td align="right"><s:text name="global.label.idMarks"/>:</td><td><span id="identificationMarks_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.childNat"/>:</td><td><span id="childNature_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.disabled"/>:</td><td><span id="disabled_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.natOfDis"/>:</td><td><span id="natureDisability_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.relg"/>:</td><td><span id="religion_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="religion_other_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><span id="caste_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><span id="subcaste_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.age"/>:</td><td><span id="age_span"></span></td></tr>
               
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><span id="fatherName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><span id="fatherOccup_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><span id="motherName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><span id="motherOccup_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><span id="noBrothers_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><span id="noSister_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.langKnown"/>:</td><td><span id="languagesKnown_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><span id="addrParents_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/>:</td><td><span id="intrRelatives_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><span id="eduStatus_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><span id="identifiedProblemsChild_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.admBy"/>:</td><td><span id="admThrough_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.nameAuthPers"/>:</td><td><span id="nameAuthPer_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.cwcjjbnum"/>:</td><td><span id="cwcJjbOrderNo_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.cwcjjbdate"/>:</td><td><span id="orderDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.dateOfAdm"/>:</td><td><span id="dateTimeAdm_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.detailsOfProp"/>:</td><td><span id="propertyPossessed_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.proLawChildAdmm"/>:</td><td><span id="provisionLaw_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.reaAdmConfLaw"/>:</td><td><span id="reasonAdm_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.periodOfStay"/>:</td><td><span id="periodStay_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.probDatedis"/>:</td><td><span id="probableDischargeDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.recoCW"/>:</td><td><span id="recommCaseworker_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.recoCWC"/>:</td><td><span id="recommCwc_span"></span></td></tr>
                 </table>  
	</form>
        </div>
            --%>
        </center>
        
    
</s:elseif>           
        

