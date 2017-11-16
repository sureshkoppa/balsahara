<%@taglib  uri="/struts-tags" prefix="s"%>
<html>
<head>
    <script>
    function selectEduType_Adm(val)
            {
                             
                if(val.value == 'inside school')
                {                  
                  document.getElementById('dynamic_course').innerHTML=document.getElementById('school_div').innerHTML;
                }
                
               
                
                else if(val.value == 'outside school')
                {   //alert('hi');                 
                    document.getElementById('dynamic_course').innerHTML=document.getElementById('outSchool_div').innerHTML;
                }
                    
                    
                
            }
            <jsp:include page="../../javascripts/HM_examGenerationRegister_Validation.jsp"></jsp:include> 
  </script>
            
 <s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th'}" />
<div id="school_div" style="visibility: hidden">
    
    <s:text name="global.label.SchoolAdmClassCour" />:<select name="class1" id="class1">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value' escape="false"/></option>
    </s:iterator>
    </select><%--s:select name="class1" id="class1" theme="simple" id='course' list="list1"/--%>
 
</div>

<s:set name="list2" value="vocationlMap"/>

<div id="vocational_div" style="visibility: hidden">
    <s:text name="global.label.SchoolAdmClassCour" />:<select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value' escape="false"/></option> 
    </s:iterator>
    </select><%--s:select name='eduStatus' theme="simple" id='course'list="list2"/--%>
   
</div>

    
<div id="outSchool_div" style="visibility: hidden">
    
    <s:text name="global.label.SchoolAdmClassCour" />:<select name="class1" id="class1">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value' escape="false"/></option>
    </s:iterator>
    </select><%--s:select name="class1" id="class1" theme="simple" list="list1"/--%>
    <s:text name="package.label.viewSchSelSch" />:<select name='schoolId' id='schoolId'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="allSchools">
        <s:if test="%{districtId == #session.homeid.substring(3,6)}">
        <option value='<s:property value='schoolId'/>'><s:property value='schoolName' escape="false"/>(Dist:-<s:property value="%{#session.homeid.substring(3,6)}"/>)</option> 
        </s:if>
    </s:iterator>
    </select><%--s:select name='schoolId' id='schoolId' theme="simple" list="allSchools" listKey="schoolId" listValue="schoolName"/--%>
    
</div>
</head>    

    <s:form name="examGenerationRegister" id="examGenerationRegister" action="HM-Exam-Save" method="POST">
        <s:hidden name="formName" value="examGenerationRegister"/>
           
                
                <table border="1" align="center">
 <CAPTION><font size="3"><b><u><s:text name="global.heading.ExamCondReg"/></u></b></font></CAPTION>
                    <tbody>
                        
                        <tr>
                            <td><s:text name="package.label.ExamConExamDate" /></td>
                            <td class="demo"><input type="text" name="examDate_string" id="datepicker"></td>
                        </tr>

                        <tr>
                            <td><s:text name="package.label.ExamConExamName" /></td>
                            <td>
                                <select name="examType" id="examType">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.examConRegAssi'/>"><s:text name='global.selectOption.examConRegAssi'/></option>
                              <option value="<s:text name='global.selectOption.examConRegUnTe'/>"><s:text name='global.selectOption.examConRegUnTe'/></option>
                              <option value="<s:text name='global.selectOption.examConRegQuar'/>"><s:text name='global.selectOption.examConRegQuar'/></option>
                              <option value="<s:text name='global.selectOption.examConRegHaYe'/>"><s:text name='global.selectOption.examConRegHaYe'/></option>
                              <option value="<s:text name='global.selectOption.examConRegAnnu'/>"><s:text name='global.selectOption.examConRegAnnu'/></option>
                          </select><%--s:select name="examType" id="examType" list="#{'Assignment':'Assignment','Unit Test':'Unit Test','Quarterly':'Quarterly','Half Yearly':'Half Yearly','Annual':'Annual'}" theme="simple"/--%>
                            </td>
                                
                        </tr>
                        <tr>
                            <td><s:text name="package.label.ExamConMaxMarks" /></td>
                            <td>
                                <s:textfield name="maxMarks" id="maxMarks" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                            </td>
                                
                        </tr>
                        
                        <tr>
                            <td><s:text name="package.label.viewSchSelSch" /></td>
                            <td>
                               <input type="radio" name="eduType" id="eduType" value="inside school" onchange="return selectEduType_Adm(this);"/><s:text name="package.rad.label.attenRegInsSch"/><input type="radio" name="eduType" id="eduType" value="outside school" onchange="return selectEduType_Adm(this);"/><s:text name="package.rad.label.attenRegOutSch"/>
                               <%--s:radio name="eduType" id="eduType" theme="simple"  list="#{'inside school':'inside school','outside school':'outside school'}" label="Type of education" labelposition="left" onchange="return selectEduType_Adm(this);"/--%>
                                
                            </td>
                        </tr>
                        </tr>
                        
                        <tr>
                            <td><s:text name="package.label.ExamConSchDet" /></td>
                            <td>
                               <div id="dynamic_course"></div> 
                                <%--s:select name="class1" id="class1" list="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th'}" theme="simple"/--%>
                            </td>
                        </tr>
                        <tr>
                            <td><s:text name="package.label.ExamConExamSubj" /></td>
                            <td>
                                <select name="subject" id="subject">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.examConRegTel'/>"><s:text name='global.selectOption.examConRegTel'/></option>
                              <option value="<s:text name='global.selectOption.examConRegHin'/>"><s:text name='global.selectOption.examConRegHin'/></option>
                              <option value="<s:text name='global.selectOption.examConRegEng'/>"><s:text name='global.selectOption.examConRegEng'/></option>
                              <option value="<s:text name='global.selectOption.examConRegMat'/>"><s:text name='global.selectOption.examConRegMat'/></option>
                              <option value="<s:text name='global.selectOption.examConRegGSc'/>"><s:text name='global.selectOption.examConRegGSc'/></option>
                              <option value="<s:text name='global.selectOption.examConRegSSc'/>"><s:text name='global.selectOption.examConRegSSc'/></option>
                          </select><%--s:select name="subject" id="subject" list="#{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'}" theme="simple"/--%>
                                
                            </td>
                        </tr>
                        <tr>
                            
                            <td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.hmCreatExam"/>"/></td>
                            
                        </tr>
                    </tbody>
                </table>
                <center>
                   
                   
                </center>

 
    </s:form>

