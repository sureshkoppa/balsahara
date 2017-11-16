<%-- 
    Document   : AdmissionRegister_Education
    Created on : 27 Jun, 2011, 4:43:00 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    
    <head>
        <script>
            function selectEduType_Adm(val)
            {
                //alert(val.value);
                             
                if(val.value == 'inside school')
                {                  
                  document.getElementById('dynamic_course').innerHTML=document.getElementById('school_div').innerHTML;
                }
                
                else if(val.value == 'inside vocational')
                {                    
                    document.getElementById('dynamic_course').innerHTML=document.getElementById('vocational_div').innerHTML;
                }
                
                else if(val.value == 'outside school')
                {   //alert('hi');                 
                    document.getElementById('dynamic_course').innerHTML=document.getElementById('outSchool_div').innerHTML;
                }
                else if(val.value == 'outside vocational')
                    {
                        //alert('hi');
                       document.getElementById('dynamic_course').innerHTML=document.getElementById('outsideVoc_div').innerHTML; 
                        
                    }
                    
            }
            
            <jsp:include page="../../javascripts/HM_studentAdmissionForm_Validation.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <s:set name="trainingInstList" value="allSchools.{? #this.schoolType =='Polytechnique/ITI'}" />   
        
        <s:set name="outSideSchoolList" value="allSchools.{? #this.schoolType !='Polytechnique/ITI'}" />       
        
<s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th','Inter I yr':'Inter I yr','Inter II yr':'Inter II yr'}"/>
<div id="school_div" style="visibility: hidden">
    
    <s:text name="global.label.SchoolAdmClassCour" /><select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name='eduStatus' id='course'list="list1"/--%>
  <%--
Class/Course enrolling for: <select name='eduStatus' id='course'>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
  --%>
</div>

<s:set name="list2" value="vocationlMap"/>

<div id="vocational_div" style="visibility: hidden">
    <s:text name="global.label.SchoolAdmClassCour" /><select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name='eduStatus' id='course'list="list2"/--%>
    <%--
    Class/Course enrolling for:<select name='eduStatus' id='course'>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
    --%>
</div>

    
<div id="outSchool_div" style="visibility: hidden">
    
    <s:text name="global.label.SchoolAdmClassCour" /><select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name='eduStatus' id='course' list="list1"/--%>
    <s:text name="global.label.SchoolAdmSchColle" /><select name='schoolId' id='schoolId'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="outSideSchoolList">
        <s:if test="%{districtId == #session.homeid.substring(3,6)}">
            <option value='<s:property value='schoolId'/>'><s:property value='schoolName'/>(Dist:-<s:property value="%{#session.homeid.substring(3,6)}"/>)</option>
        </s:if>
    </s:iterator>
    </select><%--s:select name='schoolId' id='schoolId' list="outSideSchoolList" listKey="schoolId" listValue="schoolName"/--%>
    <%--
    Class/Course enrolling for:<select name='eduStatus' id='course'>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
    --%>
</div>

<div id="outsideVoc_div" style="visibility: hidden">
    
    <s:text name="global.label.SchoolAdmClassCour" />
    <select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name='eduStatus' id='course' list="list2"/--%>
    <s:text name="global.label.SchoolAdmSchColle" />
    
    <select name='schoolId' id='schoolId'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="trainingInstList">
        <option value='<s:property value='schoolId'/>'><s:property value='schoolName'/></option>
    </s:iterator>
    </select>
      <%--s:select name='schoolId' id='schoolId' list="trainingInstList" listKey="schoolId" listValue="schoolName"/--%>
    <%--
    Class/Course enrolling for:<select name='eduStatus' id='course'>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
    --%>
</div>



<!--
 private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Size(max = 50)
    @Column(name = "EDU_STATUS", length = 50)
    private String eduStatus;
    @Size(max = 4)
    @Column(name = "YEAR", length = 4)
    private String year;
    @Column(name = "ADMISSION_NO")
    private Integer admissionNo;
    @Column(name = "DATE_OF_ADM")
    @Temporal(TemporalType.DATE)
    private Date dateOfAdm;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false)
    @ManyToOne(optional = false)


private List<ChildMaster> childListForAdmission;
     private Map<Integer,String> vocationlMap;
-->

<s:form name="studentAdmissionForm" id="studentAdmissionForm" theme="css_xhtml" action="HM-Admission-Save">
<center>
    <center><h2><u><s:text name="global.heading.EducaAdmissReg"/></u></h2></center>
    <br><br>
    <s:hidden name="formName" value="studentAdmissionForm"/>
    
    <table border="1"  align="center">        
        <tr><td><s:text name="global.label.SchoolAdmDate" />:</td><td><input  type="text" name="dateOfAdm_String" id="datepicker"></input></td></tr>
        <tr><td><s:text name="global.label.SchoolAdmChName" />:</td><td><select name="childProfileId" id="childProfileId">
                                   <option value="-1">---<s:text name='global.option.headerKey'/>---</option>
                                   <%--
                                   <c:forEach items="${childListForAdmission}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}</option>
                                   </c:forEach>
                                   --%>
                                   <c:forEach items="${schoolStudentDTOs}" var="obj">
                                       <option value=${obj.profileId}>${obj.name}</option>
                                   </c:forEach>
                                       
                               </select><%--s:select name="childProfileId" id="childProfileId" list="childListForAdmission" listKey="childProfileId" listValue="childName" headerKey="-1" headerValue="----please select----"/--%></td></tr>
        
        <%--<tr><td><s:radio name="eduType" id="eduType"  list="#{'school':'school','vocational':'vocational','outside school':'outside school'}" label="Type of education" labelposition="left" onchange="return selectEduType_Adm(this);"/></td></tr>--%>
        
        <tr><td><s:text name="global.label.SchoolAdmEduType" />:</td><td><select name="eduType" id="eduType" onchange="return selectEduType_Adm(this);">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.eduAdmInsSchVal'/>"><s:text name='global.selectOption.eduAdmInsSch'/></option>
                              <option value="<s:text name='global.selectOption.eduAdmInsVocVal'/>"><s:text name='global.selectOption.eduAdmInsVoc'/></option>
                              <option value="<s:text name='global.selectOption.eduAdmOutVocVal'/>"><s:text name='global.selectOption.eduAdmOutVoc'/></option>
                              <option value="<s:text name='global.selectOption.eduAdmOutSchVal'/>"><s:text name='global.selectOption.eduAdmOutSch'/></option>
                          </select><%--s:select name="eduType" id="eduType" headerKey="-1" headerValue="---Please Select---"  list="#{'inside school':'Inside School','inside vocational':'Vocational','outside vocational':'Polytecnique/ITI','outside school':'Outside School/College'}" onchange="return selectEduType_Adm(this);"/--%></td></tr>
        
        <tr><td colspan="2" Align="center"> <div id="dynamic_course"></div> </td></tr>
        
        <tr><td><s:text name="global.label.SchoolAdmnum" />:</td><td><s:textfield name="admissionNo" id="admissionNo" required="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
        
        <tr><td colspan="2" Align="center"><input type="submit" value="<s:text name="global.button.submit"/>"/></td></tr>
                
    </table>
        

    
</center>
</s:form>
        
    </body>

</html>