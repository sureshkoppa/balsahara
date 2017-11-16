<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
            <title>Admission CH</title>
            <sx:head/>
            <script type="text/javascript">            
                  <jsp:include page="../../javascripts/CHSHAdm_validation.jsp"></jsp:include> 
            </script>
            <script type="text/javascript">
            function show_details(val) {
               // alert(val.value);
              //  dojo.event.topic.publish("show_childdetails");
               if(val.value!=1){
                   dojo.event.topic.publish("show_childRHDetails");
        
                     }
            }
                     
        </script>
           

    </head>
    <body onload="document.getElementById('dialog-form_CHSHAdmission_preview').style.visibility='hidden'">
        <center>
            <h2><s:text name="heading.admReg"/></h2>
             <s:form action="CW-Save-To-CH" method="POST" theme="css_xhtml" id="CHSHAdmission" name="CHSHAdmission">
                 <s:hidden name="formName" value="CHSHAdmission"/>
                    <table>
                    <tr>
                        <td><s:text name="global.label.selTransChild"/> : </td>
                        <td><select name="transChildId" id="transChildId" onchange="javascript:show_details(this);return false;">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${transferedChildList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                   </c:forEach>
                            </select>  </td>
                    </tr>    
                    </table>
              <table>
                 <tr> <td>
                    <s:url id="d_url" action="CW-Fetch-Trans-Child"/>  
                    <s:div id="details" formId="CHSHAdmission"/>
                    <sx:bind targets="details" href="%{d_url}" formId="CHSHAdmission" listenTopics="show_childRHDetails"  >
                    </sx:bind>
                     
                     
                
                     
                     
                     </td></tr>
                 
                 <tr><td>
                         
                         <table>
                              
                 
                    <!--same fieds as RH / OH end-->

                      <tr>
                        <td align="right"><s:text name="global.label.admBy"/> :</td>
                        <td><select name="admThrough" id="admThrough"  onchange="casework_chadmthrough(this);">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                <option value="<s:text name="option.cwc"/>"><s:text name="option.cwc"/></option>
                                <option value="<s:text name="option.jjb"/>"><s:text name="option.jjb"/></option>
                                <option value="AuthorizedPerson"><s:text name="option.authPers"/></option>
                            </select>   </td>
                    </tr>

                   <tr>
                        <td align="right"><s:text name="global.label.nameAuthPers"/> :</td>
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
                        <td><s:textarea name="preEnqRept" id="preEnqRept"  value="%{transChildMaster.preEnqRept}" rows="8" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
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
                    <tr>
                        <td align="right"><s:text name="global.label.probDatedis"/> :</td>
                        <td><s:textfield name="probableDischargeDate_String" id="datepicker3" readonly="true" value="15/12/2013"/></td>
                    </tr>
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
                <%-- <tr><td align="right"><s:text name="global.label.dateOfBir"/>:</td><td><span id="childDetails_dob_span"></span></td></tr> --%>
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
            
        </center>
</body>
</html>