<%-- 
    Document   : AttendenceRegister
    Created on : Apr 27, 2011, 12:39:16 PM
    Author     : Anupam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<sx:head/>
<script>
function show_details(val) {
//alert('------1>'+val.value );
if(val.value!=1)
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
                
                else if(val.value == 'outside school')
                {   //alert('hi');                 
                    document.getElementById('dynamic_course').innerHTML=document.getElementById('outSchool_div').innerHTML;
                }
                    
                    
                
            }


        <jsp:include page="../../javascripts/HM_eduAttendenceRegister_Validation.jsp"></jsp:include> 

</script>





    </head>
    <body>
        
        <center><h2><u><s:text name="global.heading.SchAttendReg"/></u></h2></center>
        
        <!--Dynamic lists START-->       
        
        <s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th','Inter I yr':'Inter I yr','Inter II yr':'Inter II yr'}" />
<div id="school_div" style="visibility: hidden">
    <s:text name="global.label.SchoolAdmClassCour" /> : <select name='eduStatus' id='course' onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
</div>

<s:set name="list2" value="vocationlMap"/>
<div id="vocational_div" style="visibility: hidden">
    <s:text name="global.label.SchoolAdmClassCour" /> :<select name='eduStatus' id='course' onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value' escape="false"/></option>
    </s:iterator>
    </select>
</div>

<div id="outSchool_div" style="visibility: hidden">
    
    <table>
        <tr>
            <td><s:text name="package.label.viewSchSelSch" />:</td>
            <td><select name='schoolId' id='schoolId'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="allSchools">
        <s:if test="%{districtId == #session.homeid.substring(3,6)}">
        <option value='<s:property value='schoolId'/>'><s:property value='schoolName' escape="false"/>(Dist:-<s:property value='districtId'/>)</option>
        </s:if>
    </s:iterator>
    </select><%--s:select name='schoolId' id='schoolId' theme="simple" list="allSchools" listKey="schoolId" listValue="schoolName"/--%></td>
        </tr>
        <tr>
            <td><s:text name="global.label.SchoolAdmClassCour"/>:</td>
            <td><select name='eduStatus' id='course' onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value' escape="false"/></option>
    </s:iterator>
    </select></td>
        </tr>
    </table>
    
     
    
     
    
    
   
   
</div>
        
        
        <!--Dynamic List END -->
        
        <s:form theme="css_xhtml" action="HM-Attendence-Save" id="eduAttendenceRegister" method="POST">
            <center>
            <table>

                <tr>
                    <td><s:text name="package.label.attenRegEnterDate"/>:</td>
                    <td>
                        <input name="att_date" type="text" id="datepicker">
                    </td>
                </tr>
                
                <tr>
                    <td><s:text name="global.label.SchoolAdmEduType" />:</td>
                    <td>
                        <input type="radio" name="eduType" value="school" onchange="return selectEduType_Att(this);"/><s:text name="package.rad.label.attenRegInsSch"/><input type="radio" name="eduType" value="vocational" onchange="return selectEduType_Att(this);"/><s:text name="package.rad.label.attenRegVoc"/><input type="radio" name="eduType" value="outside school" onchange="return selectEduType_Att(this);"/><s:text name="package.rad.label.attenRegOutSch"/>
                        <%--s:radio name="eduType" list="#{'school':'school','vocational':'vocational','outside school':'outside school'}" onchange="return selectEduType_Att(this);"/--%>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" Align="center">
                        <div id="dynamic_course"></div>
                    </td>
                </tr>
                
                
                <tr>
                    <td colspan="2" Align="center">
             
             <s:url id="d_url" action="HM-StudentList-Attendence" />
             <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="eduAttendenceRegister" showLoadingText="true">
             </sx:div>
            
                    </td>
                </tr>


            
            </table>
             
            </center>
        </s:form>
        
    </body>
</html>
