<%-- 
    Document   : CounselorForm
    Created on : 5 Mar, 2012, 11:30:06 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
              /*var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});*/
            function coun_follow(f1)
            {
               // alert("inside");
               var value = f1.value;
               //alert("---"+value);
              
               if (value=='C') {
                       document.getElementById("coun_div").style.visibility="visible";
                       document.getElementById("follow_div").style.visibility="hidden";
                      
                          $("#coun_div").slideDown("fast");     //Slide Down Effect
                          $("#follow_div").slideUp("fast");	//Slide Up Effect
               }
               else if(value=='F')
                   {
                     
                        document.getElementById("follow_div").style.visibility="visible";
                        document.getElementById("coun_div").style.visibility="hidden";
                             $("#coun_div").slideUp("fast");     //Slide Down Effect  
                             $("#follow_div").slideDown("fast");	//Slide Up Effect 
                           
                     
                     
                   }
               }
               function start()
               {
                   //alert("start");
                    $("#coun_div").slideDown("fast");     //Slide Down Effect
                          $("#follow_div").slideUp("fast");	//Slide Up Effect
                    $("remain_div").slideUp("fast");
                   
               }
               
               /*function validate()
               {
                        if($("#").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select ProfileId");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        if($("counsel_followup").val()=="C")
                        {
                            

                                if($("#datepicker").val()=="")
                                {
                                    $dialog.html("Sorry! Please Select counsel Date");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                if($("#child_counsel_select").val()=="")
                                {
                                    $dialog.html("Sorry! Please Select counseling Type");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                                 if($("#child_psycho_select").val()=="")
                                {
                                    $dialog.html("Sorry! Please Select Psychotherapy Date");
                                    $dialog.parent().addClass( "ui-state-error" );
                                    $dialog.dialog('open');
                                    return false;
                                }
                        }
                        if($("#counsel_listChilds").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select ProfileId");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                       
                       

               }*/
                function counselor_councseltype()
                {
                  
                    if(document.getElementById("child_counsel_select").value=='O')
                        {
                        
                          document.getElementById("counselTypeOthers").disabled=false;
                        }
                    else
                        {
                            
                            document.getElementById("counselTypeOthers").value="";
                            document.getElementById("counselTypeOthers").disabled=true;
                        }
                        
                }
                function counselor_psychotype()
                {
                    if(document.getElementById("child_psycho_select").value=="O")
                        {
                           
                            document.getElementById("psychoTypeOthers").disabled=false;
                        }
                    else
                        {
                            
                            document.getElementById("psychoTypeOthers").value="";
                            document.getElementById("psychoTypeOthers").disabled=true;
                        }
                        
                }
                <jsp:include page="../../javascripts/CounselorForm_Validation.jsp"></jsp:include> 
        </script>
        
    </head>
    <body onload="javascript:start();">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.CounFormCounPsycho"/></b></font></CAPTION>
            <s:form action="CR-counselChild" theme="css_xhtml" id="CounselorForm" name="CounselorForm">
            <table border="0">
            <tbody>                 
                  <tr><td align="right"><s:text name="package.label.couFormChProfId" />*:</td>
                               <td class="demo">
                               <select name="counsel_profileId" id="counsel_listChilds">
                                   <option value="select">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${counsel_listChilds}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--<s:select id="counsel_listChilds" name="counsel_profileId" list="counsel_listChilds" listKey="%{childProfileId}" listValue="%{childName+'---->'+childProfileId}" headerKey="select" headerValue="--Select Child Profile ID--" />--%>
                               </td>
                  </tr>
                  <tr><td align="right"><s:text name="package.label.couFormSelCouFoll" />*:</td>
                               <td>
                                   <input type="radio" name="counsel_followup" id="counsel_followup" value="C" checked onclick="javascript:coun_follow(this);"/><s:text name="package.label.couFormCounsel"/><input type="radio" name="counsel_followup" id="counsel_followup" value="F" onclick="javascript:coun_follow(this);"/><s:text name="package.rad.label.couFormFollowUp"/><%--<s:radio  name="counsel_followup" id="counsel_followup" list="#{'C':'Counseling','F':'Follow Up'}" value="%{'C'}"  onclick="javascript:coun_follow(this);"/>--%>
                               </td>
                  </tr>
            </tbody>
            </table>
            <div id="coun_div">
             <table border="0">           
                <tbody>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounDate" />*:</td>
                      <td><span></span><s:textfield id="datepicker" name="counsel_date" readonly="true"/></td>
                  </tr>
                   
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounsel" />*:</td>
                      <td><select name="child_counsel_select" id="child_counsel_select" onchange="counselor_councseltype(this);">
                              <option value="select">--<s:text name='package.selectOption.couFormSelCouType'/>--</option> 
                              <option value="<s:text name='package.selectOption.couFormMHC'/>"><s:text name='package.selectOption.couFormMenHealCou'/></option>
                              <option value="<s:text name='package.selectOption.couFormGC'/>"><s:text name='package.selectOption.couFormGriefCou'/></option>
                              <option value="<s:text name='package.selectOption.couFormRC'/>"><s:text name='package.selectOption.couFormRehabCou'/></option>
                              <option value="<s:text name='package.selectOption.couFormED'/>"><s:text name='package.selectOption.couFormEduCou'/></option>
                              <option value="<s:text name='package.selectOption.couFormBC'/>"><s:text name='package.selectOption.couFormBehavCou'/></option>
                              <option value="<s:text name='package.selectOption.couFormSM'/>"><s:text name='package.selectOption.couFormStressMana'/></option>
                              <option value="<s:text name='package.selectOption.couFormEC'/>"><s:text name='package.selectOption.couFormEmoConf'/></option>
                              <option value="<s:text name='package.selectOption.couFormO'/>"><s:text name='package.selectOption.couFormOthers'/></option>
                          </select><%--<s:select name="child_counsel_select" id="child_counsel_select" headerKey="select" headerValue="--Select Counseling Type--" list="#{'MHC':'Mental Health Counseling','GC':'Grief Counseling','RC':'Rehabilitation Counseling','ED':'Educational Counseling','BC':'Behavioral Counseling','SM':'Stress Management','EC':'Emotional Conflict','O':'Others'}" onchange="counselor_councseltype(this);"></s:select>--%></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounselOth" />:</td>
                      <td><s:textfield name="counselTypeOthers" id="counselTypeOthers" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormPsycho" />*:</td>
                      <td><select name="child_psycho_select" id="child_psycho_select" onchange="counselor_psychotype(this);">
                              <option value="select">--<s:text name='package.selectOption.couFormSelPsyType'/>--</option> 
                              <option value="<s:text name='package.selectOption.couFormCBT'/>"><s:text name='package.selectOption.couFormCogBehThe'/></option>
                              <option value="<s:text name='package.selectOption.couFormREBT'/>"><s:text name='package.selectOption.couFormRaEmoBehThe'/></option>
                              <option value="<s:text name='package.selectOption.couFormGT'/>"><s:text name='package.selectOption.couFormGestThe'/></option>
                              <option value="<s:text name='package.selectOption.couFormPA'/>"><s:text name='package.selectOption.couFormPsyAnal'/></option>
                              <option value="<s:text name='package.selectOption.couFormBT'/>"><s:text name='package.selectOption.couFormBehThe'/></option>
                              <option value="<s:text name='package.selectOption.couFormAFC'/>"><s:text name='package.selectOption.couFormAdapCh'/></option>
                              <option value="<s:text name='package.selectOption.couFormO'/>"><s:text name='package.selectOption.couFormOthers'/></option>
                          </select><%--<s:select name="child_psycho_select" id="child_psycho_select" headerKey="select" headerValue="--Select Psychotherapy Type--" list="#{'CBT':'Cognitive Behavior Therapy (CBT)','REBT':'Rational Emotive Behavior Therapy (REBT)','GT':'Gestalt Therapy','PA':'Psychoanalysis','BT':'Behavior Therapy','AFC':'Adaptation for children','O':'Others'}" onchange="counselor_psychotype(this);"></s:select>--%></td>
                  </tr> 
                  <tr>
                      <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <s:text name="package.label.couFormPsychoOther" />:</td>
                      <td><s:textfield name="psychoTypeOthers" id="psychoTypeOthers" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr>
                </tbody>
             </table>
            </div>
            <div id="follow_div" style="visibility: hidden">
                <table border="0"><tbody>
                        <tr><td align="right"><s:text name="package.label.couFormCaseImpress" />:<br/><s:text name="package.label.couFormDiagnosis" /></td><td><textarea name="impress_case" cols="17" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></textarea></td></tr>
                        <%--  <tr><td>Reported:	Yes/No</td><td></td><s:radio name="isReported" id="isReported" list="#{'y':'yes','n':'no'}" theme="xhtml"/></tr>  --%>
                        <tr><td align="right"><s:text name="package.label.couFormRepoDate" />*:</td><td><input type='text' id='datepicker1' name="reportingDate"/></td></tr>
                        <tr><td align="right"><s:text name="package.label.couFormCurCaseSitu" />:</td><td><select name="currSituation">
                              <option value="<s:text name='package.selectOption.couFormSameSitLabel'/>"><s:text name='package.selectOption.couFormSameSitLabel'/></option>
                              <option value="<s:text name='package.selectOption.couFormImproveLabel'/>"><s:text name='package.selectOption.couFormImproveLabel'/></option>
                              <option value="<s:text name='package.selectOption.couFormDeterLabel'/>"><s:text name='package.selectOption.couFormDeterLabel'/></option>
                          </select><%--<s:select name="currSituation" list="#{'s':'Same Situation','i':'Improvement Noticed','d':'Deteriorated'}"/>--%></td>
                        <tr><td align="right"><s:text name="package.label.couFormFollowUpsess" />:</td><td><s:textarea rows="4" cols="17" name="followup_session" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>	    
               </tbody></table>	
                
            </div>  
            <div id="remain_div">
                  <table border="0"><tbody>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounForCh" />*:</td>
                      <td><s:textarea name="childCounsel" id="childCounsel"  rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounForPar" />:</td>
                      <td><s:textarea name="parentCounsel" id="parentCounsel" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounForSib" />: </td>
                      <td><s:textarea name="siblingCounsel" id="siblingCounsel" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr>
             <!--     <tr align="center">
                      <td colspan="2"><s:checkbox name="is_counselOther" id="is_counselOther" value="false" theme="simple" onclick="counsel_enableOthers(this)"/>Counseling for Others</td>
                  </tr>  -->
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounForOth" />: </td>
                      <td><textarea name="otherCounsel" id="otherCounsel" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></textarea></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormRefeOut" />:</td>
                      <td><select name="referrOutside" id="referrOutside" onchange="counselor_psychotype(this);">
                              <option value="<s:text name='package.selectOption.couFormCliPsy'/>"><s:text name='package.selectOption.couFormCliPsy'/></option>
                              <option value="<s:text name='package.selectOption.couFormCounse'/>"><s:text name='package.selectOption.couFormCounse'/></option>
                              <option value="<s:text name='package.selectOption.couFormPsychia'/>"><s:text name='package.selectOption.couFormPsychia'/></option>
                              <option value="<s:text name='package.selectOption.couFormMedical'/>"><s:text name='package.selectOption.couFormMedical'/></option>
                              <option value="<s:text name='package.selectOption.couFormRehabSer'/>"><s:text name='package.selectOption.couFormRehabSer'/></option>
                              <option value="<s:text name='package.selectOption.couFormOthers'/>"><s:text name='package.selectOption.couFormOthers'/></option>
                              <option value="Not Applicable">Not Applicable</option>
                          </select><%--<s:select name="referrOutside" id="referrOutside"  list="#{'Clinical Psychologist':'Clinical Psychologist','Counselor':'Counselor','Psychiatrist':'Psychiatrist','Médical':'Médical','Rehabilitation Services':'Rehabilitation Services','Others':'Others'}" onchange="counselor_psychotype(this);"></s:select>--%></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormRehabSer" />:</td>
                      <td><select name="rehebService" id="rehebService" onchange="counselor_rehebtype(this);">
                              <option value="<s:text name='package.selectOption.couFormSpeThe'/>"><s:text name='package.selectOption.couFormSpeThe'/></option>
                              <option value="<s:text name='package.selectOption.couFormPhysio'/>"><s:text name='package.selectOption.couFormPhysio'/></option>
                              <option value="<s:text name='package.selectOption.couFormOccuThe'/>"><s:text name='package.selectOption.couFormOccuThe'/></option>
                              <option value="<s:text name='package.selectOption.couFormSpecEdu'/>"><s:text name='package.selectOption.couFormSpecEdu'/></option>
                              <option value="Not Applicable">Not Applicable</option>
                          </select><%--<s:select name="rehebService" id="rehebService"  list="#{'Speech Therapy':'Speech Therapy','Physiotherapy':'Physiotherapy','Occupational Therapy':'Occupational Therapy','Special Education':'Special Education' }" onchange="counselor_rehebtype(this);"></s:select>--%></td>
                  </tr>
                  <tr>
                      <td align="right"><s:text name="package.label.couFormInstNamPla" />:</td>
                      <td><s:textarea name="namePlaceInst" id="namePlaceInst" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr> 
                  <tr>
                      <td align="right"><s:text name="package.label.couFormSharByChild1" /><br/><s:text name="package.label.couFormSharByChild2" />:</td>
                      <td><s:textarea name="sharingChild" id="sharingChild" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr> 
                  <tr>
                      <td align="right"><s:text name="package.label.couFormCounNotes" />:<br/> </td>
                      <td><s:textarea name="counselNotes" id="counselNotes" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                  </tr> 
                  <tr>
                      <td align="right"><s:text name="package.label.couFormFollowUpDate" />:</td>
                      <td><s:textfield id="datepicker2" name="followUp_date" readonly="true"/></td>
                  </tr>
                  
                
            </tbody>
            </table>
            </div>
               <table>
                <tr>
                    <td><%--s:submit value="save Counseling"/--%><input type="submit" value="<s:text name="package.button.couFormSaveCounseling"/>" name="saveCounseling" align="center" id="saveCounseling"/></td>
                    <td><%--s:reset value="Clear"/--%><input type="reset" value="<s:text name="package.button.couFormClear"/>" name="saveCounselingClear" align="center" id="saveCounselingClear"/></td>
                </tr>
            </table> 
            </s:form>
        </center>
    </body>
</html>
