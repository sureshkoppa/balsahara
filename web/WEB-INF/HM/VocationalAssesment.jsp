<%-- 
    Document   : VocationalAssesment
    Created on : 15 Jul, 2011, 5:10:32 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <sx:head/>
<script>
function show_details(val) {
//alert('------1>'+val.value );
if(val.value!=-1)
dojo.event.topic.publish("show_detail");

}

 function selectEduType_Att(val)
            {
                             
                if(val.value == 'school')
                {                  
                  document.getElementById('dynamic_course').innerHTML=document.getElementById('school_div').innerHTML;
                }
                
                else if(val.value == 'vocational')
                {                    
                    document.getElementById('dynamic_course').innerHTML=document.getElementById('vocational_div').innerHTML;
                }
                    
                    
                
            }




</script>

      
    </head>
    <body>
        <%--
         @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "VOC_COURSE_ID", nullable = false)
    private int vocCourseId;
        --%>
        <s:form name="vocationalAssesmentForm" id="vocationalAssesmentForm" action="HM-VocationalAssesment-Save">
            <s:hidden name="formName" value="vocationalAssesmentForm"/>
            
            <table border="0" align="center">
                <tr>
                    <td><s:text name="package.label.vocaAssSelVocCour"/>:</td><td><select name="vocCourseId" id="vocCourseId" onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="vocationalMasters">
        <option value='<s:property value='vocCourseId'/>'><s:property value='vocCourseName' escape="false"/></option>
    </s:iterator>
    </select><%--s:select name="vocCourseId" id="vocCourseId" list="vocationalMasters" listKey="vocCourseId" listValue="vocCourseName" labelposition="left" headerKey="-1" headerValue="---please select---" onchange="return show_details(this);"/--%></td>
                </tr> 
            </table>
        <s:url id="d_url" action="HM-StudentList-ofA-Vocational" />
             <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="vocationalAssesmentForm" showLoadingText="true">
             </sx:div>
     
        </s:form>
    </body>
</html>
