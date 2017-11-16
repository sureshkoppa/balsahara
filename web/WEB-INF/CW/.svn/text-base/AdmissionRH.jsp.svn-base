<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<html>
    <head><title><s:text name="global.label.firstName"/></title>
        <script type="text/javascript">            
                  <jsp:include page="../../javascripts/RHOH_Admform_Validation.jsp"></jsp:include> 
            </script>
     <sx:head/>
</head>
<body onload="document.getElementById('dialog-form_RHOH_preview').style.visibility='hidden'">
        <center>
            <h2><s:text name="global.heading.admRecObs"/></h2>
          

            <s:form name="RHAdmission" id="RHAdmission" action="CW-AdmRH-Action" method="POST" theme="css_xhtml">

                <s:hidden name="formName" value="RHAdmission"/>
                
               
                <table>
                    <tr>
                        <td align="right"><s:text name="global.label.firstName"/>:</td>
                        <td><s:textfield id="childName" name="childName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                     <tr>
                        <td align="right"><s:text name="global.label.lastName"/>:</td>
                        <td><s:textfield id="childSurname" name="childSurname" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="label.age"/>:</td>
                        <td><s:textfield id="age" name="age" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                     <tr>
                        <td align="right"><s:text name="global.label.gender"/>:</td>
                        <td><input type="radio" id="gender"  name="gender" value="male"/><s:text name="label.male"/>
                            <input type="radio" id="gender"  name="gender" value="female"/><s:text name="label.female"/>
                       </td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.idMarks"/>:</td>
                        <td><s:textfield id="identificationMarks" name="identificationMarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>


                    <tr>
                        <td align="right"><s:text name="global.label.childNat"/>:</td>
                        <td><select id="childNature" name="childNature"  onchange="casework_childnature(this);">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                <option value="<s:text name="option.traffVictim"/>"><s:text name="option.traffVictim"/></option>
                                <option value="<s:text name="option.orphan"/>"><s:text name="option.orphan"/></option>
                                <option value="<s:text name="option.semiOrphan"/>"><s:text name="option.semiOrphan"/></option>
                                <option value="<s:text name="option.hivAffec"/>"><s:text name="option.hivAffec"/></option>
                                <option value="Others"><s:text name="option.other"/></option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.chilsNatOth"/>:</td>
                        <td><s:textfield name="childNatureOthers" id="childNatureOthers" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.disabled"/>:</td>
                        <td><input type="radio" id="disabled"  name="disabled" value="Y" onchange="casework_diabled(this);"/><s:text name="global.label.yes"/>
                            <input type="radio" id="disabled"  name="disabled" value="N" onchange="casework_diabled(this);" checked="true"/><s:text name="global.label.no"/>
                            </td>
                    </tr>

                    <tr>
                        <td align="right"><s:text name="global.label.natOfDis"/>:</td>
                        <td><s:textfield name="natureDisability" id="natureDisability" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>           



                   <tr> 
                       <td align="right"><s:text name="global.label.dateOfAdm"/>:</td>
                      <td><s:textfield name="dateTimeAdm_String" id="datepicker" readonly="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                       <%--  <td> <sx:datetimepicker  name="picker" />--%>
                    </tr>
                     <tr>
                         <td align="right"><s:text name="global.label.admBy"/>:</td>
                         <td><select id="admThrough" name="admThrough"  onchange="casework_admthrough(this);">
                                 <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                 <option value="<s:text name="option.cwc"/>"><s:text name="option.cwc"/></option>
                                 <option value="<s:text name="option.jjb"/>"><s:text name="option.jjb"/></option>
                                 <option value="Child Line">Child Line</option>                                 
                                 <option value="AuthorizedPerson"><s:text name="option.authPers"/></option>
                             </select>
                         </td>
                    </tr>

                       

                    <tr>
                        <td align="right"><s:text name="global.label.nameAuthPers"/>:</td>
                        <td><s:textfield id="nameAuthPer" name="nameAuthPer" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                   
                   
                    
                  
                    <tr>
                        <td align="right"><s:text name="global.label.cwcjjbnum"/>:</td>
                        <td><s:textfield id="cwcJjbOrderNo" name="cwcJjbOrderNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <tr>
                        <td align="right"><s:text name="global.label.cwcjjbdate"/> :</td>
                        <td><s:textfield name="orderDate_String" id="datepicker1" readonly="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                   
                    <tr>
                        <td align="right"><s:text name="global.label.dateBfrCWCJJB"/>:</td>
                        <td><s:textfield name="intCwcJjbDate_String" id="datepicker2" readonly="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                   
                   
                    <tr>
                        <td align="right"><s:text name="global.label.byWhomBfrCWCJJB"/>:</td>
                        <td><s:textarea id="producedBy" name="producedBy" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <tr>
                        <td align="right"><s:text name="global.label.detailsOfProp"/>:</td>
                        <td><s:textarea id="propertyPossessed" name="propertyPossessed" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <!--Added by anupam on 13-01-2012 start-->
                    <tr>
                        <td align="right">
                            <table border="0">
                                <tr><td><s:text name="global.label.premEnqReport"/></td></tr>
                                <tr><th><s:text name="global.label.mentionPoints"/>.</th></tr>
                                <tr><td>1.<s:text name="global.label.whereChiFound"/>.</td></tr>
                                <tr><td>2.<s:text name="global.label.undWhatCircu"/>.</td></tr>
                                <tr><td>3.<s:text name="global.label.wordsUtterChild"/>.</td></tr>
                                <tr><td>4.<s:text name="global.label.langUsedChild"/>.</td></tr>
                                </table>
                            </td>
                        <td><s:textarea name="preEnqRept" id="preEnqRept"  rows="8" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <!--Added by anupam on 13-01-2012 end-->

                
                    <tr>
                        <td align="right"><s:text name="global.label.reaAdmConfLaw"/>:</td>
                        <td><s:textarea id="reasonAdm" name="reasonAdm" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                  
                    <%--
                    <tr>
                        <td align="right"><s:text name="global.label.probDatedis"/>:</td>
                        <td><s:textfield name="probableDischargeDate_String" id="datepicker4" readonly="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' value="15/12/2013"/></td>
                    </tr>
                    --%>
                    <tr>
                        <td align="right"><s:text name="global.label.recoCW"/>:</td>
                        <td><s:textarea id="recommCaseworker"  name="recommCaseworker" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.recoCWC"/>:</td>
                        <td><s:textarea id="recommCwc" name="recommCwc" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <s:if test="#session.hometype=='OH'">
                      <tr>
                         <td align="right">Crime Number:</td>
                        <td><s:textfield id="placeOfCharge" name="placeOfCharge" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <tr>
                        <td align="right">CC Number:</td>
                        <td><s:textarea name="periodStay" id="periodStay" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <tr>
                        <!--DISPOSITION_DETAILS-->
                        <td align="right">JJB Details:</td>
                        <td><s:textarea id="dispositionDetails" name="dispositionDetails" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    <tr>
                        <!--DISPOSITION_DETAILS-->
                        <td align="right">Under Section:</td>
                        <td><s:textarea id="provisionLaw" name="provisionLaw" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    
                    
                    <tr>
                        <!--Warrant Number-->
                        <td align="right">Warrant Number:</td>
                        <td><s:textarea id="warranrNumber" name="warranrNumber" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    <tr>
                        <!--Name of police station-->
                        <td align="right">Name of police station:</td>
                        <td><s:textarea id="nameOfPoliceStation" name="nameOfPoliceStation" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr>
                    </s:if>
                    <tr></tr>
                                 
                    <tr>
                        
                        <td align="right"><input type="submit" value="<s:text name="button.save"/>" /></td>
                        <td align="center"><input type="reset" value="<s:text name="button.clear"/>" /></td>
                        
                        
                    </tr>
                </table>
            </s:form>
            
            
            
            <div id="dialog-form_RHOH_preview" title="<s:text name="js.preview.AdmRHReg"/>">
	<form name="rhoh_prevwindow">
             <table border="1">
                 <!--tr><td align="right">Child ProfileId:</td><td><span id="childProfileId_span"></span></td></tr-->
                <tr><td align="right"><s:text name="global.label.firstName"/>:</td><td><span id="childName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.lastName"/>:</td><td><span id="childSurname_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.age"/>:</td><td><span id="age_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.gender"/>:</td><td><span id="gender_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.idMarks"/>:</td><td><span id="identificationMarks_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.childNat"/>:</td><td><span id="childNature_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.disabled"/>:</td><td><span id="disabled_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.natOfDis"/>:</td><td><span id="natureDisability_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.dateOfAdm"/>:</td><td><span id="dateTimeAdm_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.admBy"/>:</td><td><span id="admThrough_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.nameAuthPers"/>:</td><td><span id="nameAuthPer_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.placeOfCharge"/>:</td><td><span id="placeOfCharge_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.cwcjjbnum"/>:</td><td><span id="cwcJjbOrderNo_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.cwcjjbdate"/>:</td><td><span id="orderDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.dateBfrCWCJJB"/>:</td><td><span id="intCwcJjbDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.byWhomBfrCWCJJB"/>:</td><td><span id="producedBy_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.detailsOfProp"/>:</td><td><span id="propertyPossessed_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.reaAdmConfLaw"/>:</td><td><span id="reasonAdm_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.periodOfStay"/>:</td><td><span id="periodStay_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.probDatedis"/>:</td><td><span id="probableDischargeDate_String_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.recoCW"/>:</td><td><span id="recommCaseworker_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.recoCWC"/>:</td><td><span id="recommCwc_span"></span></td></tr>
                      </table>  
	</form>
        </div>
            
            
            
        </center>
</body></html>
