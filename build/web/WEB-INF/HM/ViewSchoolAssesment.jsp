<%-- 
    Document   : ViewSchoolAssesment
    Created on : 16 Aug, 2011, 1:50:07 PM
    Author     : ANUPAM
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
                    
                    
                
            }

function cleanUp(){
    
     //remove the content from the school div
                document.getElementById('details').innerHTML = "";
                
                document.getElementById('course').options[0].selected=true;
       
}

$(document).ready(function(){    
            
            $('#eduAttendenceRegister').submit(function(e){
            //alert('clicked');
            
            /*ajax code START*/
            $.ajax({
      url:'HM-test-assesment',
      type:'POST',
      data:$('#eduAttendenceRegister').serialize(),
      dataType:'json',
      success:
          function(data){
          //alert('data = '+data);
          document.getElementById('nameValue_span').innerHTML=data[0].nameValue;   
          document.getElementById('classValue_span').innerHTML=data[0].classValue;    
          document.getElementById('rollValue_span').innerHTML=data[0].rollValue;
          document.getElementById('noOfUTConductedValue_span').innerHTML=data[0].noOfUTConductedValue;    
          document.getElementById('noOfUTAttendedValue_span').innerHTML=data[0].noOfUTAttendedValue;
          document.getElementById('userNameLabel_span').innerHTML=data[0].userNameLabel;    
          document.getElementById('creationDate_span').innerHTML=data[0].creationDate;
          document.getElementById('teleguUrduFTassignMarks_span').innerHTML=data[0].teleguUrduFTassignMarks;
          document.getElementById('teleguUrduFTunittestMarks_span').innerHTML=data[0].teleguUrduFTunittestMarks;
          document.getElementById('teleguUrduFTtotalMarks_span').innerHTML=data[0].teleguUrduFTtotalMarks;
          document.getElementById('teleguUrduSTassignMarks_span').innerHTML=data[0].teleguUrduSTassignMarks;
          document.getElementById('teleguUrduSTunittestMarks_span').innerHTML=data[0].teleguUrduSTunittestMarks;
          document.getElementById('teleguUrduSTtotalMarks_span').innerHTML=data[0].teleguUrduSTtotalMarks;
          document.getElementById('teleguUrduTTassignMarks_span').innerHTML=data[0].teleguUrduTTassignMarks;
          document.getElementById('teleguUrduTTunittestMarks_span').innerHTML=data[0].teleguUrduTTunittestMarks;
          document.getElementById('teleguUrduTTtotalMarks_span').innerHTML=data[0].teleguUrduTTtotalMarks
          document.getElementById('teleguUrduFOTassignMarks_span').innerHTML=data[0].teleguUrduFOTassignMarks;
          document.getElementById('teleguUrduFOTunittestMarks_span').innerHTML=data[0].teleguUrduFOTunittestMarks;
          document.getElementById('teleguUrduFOTtotalMarks_span').innerHTML=data[0].teleguUrduFOTtotalMarks;
          document.getElementById('teleguUrduAssignUnitTestTotalMarks_span').innerHTML=data[0].teleguUrduAssignUnitTestTotalMarks;
          document.getElementById('teleguUrduQuarterMarks_span').innerHTML=data[0].teleguUrduQuarterMarks;
          document.getElementById('teleguUrduHalfYearMarks_span').innerHTML=data[0].teleguUrduHalfYearMarks;
          document.getElementById('teleguUrduQuarterHalfYearTotalMarks_span').innerHTML=data[0].teleguUrduQuarterHalfYearTotalMarks;
          document.getElementById('teleguUrduAnnualMarks_span').innerHTML=data[0].teleguUrduAnnualMarks;
          document.getElementById('teleguUrduAssignUnitTestTotalPercentMarks_span').innerHTML=data[0].teleguUrduAssignUnitTestTotalPercentMarks;
          document.getElementById('teleguUrduQuarterHalfYearTotalPercentMarks_span').innerHTML=data[0].teleguUrduQuarterHalfYearTotalPercentMarks;
          document.getElementById('teleguUrduAnnualPercentMarks_span').innerHTML=data[0].teleguUrduAnnualPercentMarks;
          document.getElementById('teleguUrduFinalResult_span').innerHTML=data[0].teleguUrduFinalResult;
          /*--------------------------------------------------------------------------------------------*/
          document.getElementById('hindiFTassignMarks_span').innerHTML=data[0].hindiFTassignMarks;
          document.getElementById('hindiFTunittestMarks_span').innerHTML=data[0].hindiFTunittestMarks;
          document.getElementById('hindiFTtotalMarks_span').innerHTML=data[0].hindiFTtotalMarks;
          document.getElementById('hindiSTassignMarks_span').innerHTML=data[0].hindiSTassignMarks;
          document.getElementById('hindiSTunittestMarks_span').innerHTML=data[0].hindiSTunittestMarks;
          document.getElementById('hindiSTtotalMarks_span').innerHTML=data[0].hindiSTtotalMarks;
          document.getElementById('hindiTTassignMarks_span').innerHTML=data[0].hindiTTassignMarks;
          document.getElementById('hindiTTunittestMarks_span').innerHTML=data[0].hindiTTunittestMarks;
          document.getElementById('hindiTTtotalMarks_span').innerHTML=data[0].hindiTTtotalMarks
          document.getElementById('hindiFOTassignMarks_span').innerHTML=data[0].hindiFOTassignMarks;
          document.getElementById('hindiFOTunittestMarks_span').innerHTML=data[0].hindiFOTunittestMarks;
          document.getElementById('hindiFOTtotalMarks_span').innerHTML=data[0].hindiFOTtotalMarks;
          document.getElementById('hindiAssignUnitTestTotalMarks_span').innerHTML=data[0].hindiAssignUnitTestTotalMarks;
          document.getElementById('hindiQuarterMarks_span').innerHTML=data[0].hindiQuarterMarks;
          document.getElementById('hindiHalfYearMarks_span').innerHTML=data[0].hindiHalfYearMarks;
          document.getElementById('hindiQuarterHalfYearTotalMarks_span').innerHTML=data[0].hindiQuarterHalfYearTotalMarks;
          document.getElementById('hindiAnnualMarks_span').innerHTML=data[0].hindiAnnualMarks;
          document.getElementById('hindiAssignUnitTestTotalPercentMarks_span').innerHTML=data[0].hindiAssignUnitTestTotalPercentMarks;
          document.getElementById('hindiQuarterHalfYearTotalPercentMarks_span').innerHTML=data[0].hindiQuarterHalfYearTotalPercentMarks;
          document.getElementById('hindiAnnualPercentMarks_span').innerHTML=data[0].hindiAnnualPercentMarks;
          document.getElementById('hindiFinalResult_span').innerHTML=data[0].hindiFinalResult;
           /*--------------------------------------------------------------------------------------------*/
          document.getElementById('englishFTassignMarks_span').innerHTML=data[0].englishFTassignMarks;
          document.getElementById('englishFTunittestMarks_span').innerHTML=data[0].englishFTunittestMarks;
          document.getElementById('englishFTtotalMarks_span').innerHTML=data[0].englishFTtotalMarks;
          document.getElementById('englishSTassignMarks_span').innerHTML=data[0].englishSTassignMarks;
          document.getElementById('englishSTunittestMarks_span').innerHTML=data[0].englishSTunittestMarks;
          document.getElementById('englishSTtotalMarks_span').innerHTML=data[0].englishSTtotalMarks;
          document.getElementById('englishTTassignMarks_span').innerHTML=data[0].englishTTassignMarks;
          document.getElementById('englishTTunittestMarks_span').innerHTML=data[0].englishTTunittestMarks;
          document.getElementById('englishTTtotalMarks_span').innerHTML=data[0].hindiTTtotalMarks
          document.getElementById('englishFOTassignMarks_span').innerHTML=data[0].englishFOTassignMarks;
          document.getElementById('englishFOTunittestMarks_span').innerHTML=data[0].englishFOTunittestMarks;
          document.getElementById('englishFOTtotalMarks_span').innerHTML=data[0].englishFOTtotalMarks;
          document.getElementById('englishAssignUnitTestTotalMarks_span').innerHTML=data[0].englishAssignUnitTestTotalMarks;
          document.getElementById('englishQuarterMarks_span').innerHTML=data[0].englishQuarterMarks;
          document.getElementById('englishHalfYearMarks_span').innerHTML=data[0].englishHalfYearMarks;
          document.getElementById('englishQuarterHalfYearTotalMarks_span').innerHTML=data[0].englishQuarterHalfYearTotalMarks;
          document.getElementById('englishAnnualMarks_span').innerHTML=data[0].englishAnnualMarks;
          document.getElementById('englishAssignUnitTestTotalPercentMarks_span').innerHTML=data[0].englishAssignUnitTestTotalPercentMarks;
          document.getElementById('englishQuarterHalfYearTotalPercentMarks_span').innerHTML=data[0].englishQuarterHalfYearTotalPercentMarks;
          document.getElementById('englishAnnualPercentMarks_span').innerHTML=data[0].englishAnnualPercentMarks;
          document.getElementById('englishFinalreslt_span').innerHTML=data[0].englishFinalreslt;
          /*--------------------------------------------------------------------------------------------*/
          document.getElementById('mathsFTassignMarks_span').innerHTML=data[0].mathsFTassignMarks;
          document.getElementById('mathsFTunittestMarks_span').innerHTML=data[0].mathsFTunittestMarks;
          document.getElementById('mathsFTtotalMarks_span').innerHTML=data[0].mathsFTtotalMarks;
          document.getElementById('mathsSTassignMarks_span').innerHTML=data[0].mathsSTassignMarks;
          document.getElementById('mathsSTunittestMarks_span').innerHTML=data[0].mathsSTunittestMarks;
          document.getElementById('mathsSTtotalMarks_span').innerHTML=data[0].mathsSTtotalMarks;
          document.getElementById('mathsTTassignMarks_span').innerHTML=data[0].mathsTTassignMarks;
          document.getElementById('mathsTTunittestMarks_span').innerHTML=data[0].mathsTTunittestMarks;
          document.getElementById('mathsTTtotalMarks_span').innerHTML=data[0].mathsTTtotalMarks
          document.getElementById('mathsFOTassignMarks_span').innerHTML=data[0].mathsFOTassignMarks;
          document.getElementById('mathsFOTunittestMarks_span').innerHTML=data[0].mathsFOTunittestMarks;
          document.getElementById('mathsFOTtotalMarks_span').innerHTML=data[0].mathsFOTtotalMarks;
          document.getElementById('mathsAssignUnitTestTotalMarks_span').innerHTML=data[0].mathsAssignUnitTestTotalMarks;
          document.getElementById('mathsQuarterMarks_span').innerHTML=data[0].mathsQuarterMarks;
          document.getElementById('mathsHalfYearMarks_span').innerHTML=data[0].mathsHalfYearMarks;
          document.getElementById('mathsQuarterHalfYearTotalMarks_span').innerHTML=data[0].mathsQuarterHalfYearTotalMarks;
          document.getElementById('mathsAnnualMarks_span').innerHTML=data[0].mathsAnnualMarks;
          document.getElementById('mathsAssignUnitTestTotalPercentMarks_span').innerHTML=data[0].mathsAssignUnitTestTotalPercentMarks;
          document.getElementById('mathsQuarterHalfYearTotalPercentMarks_span').innerHTML=data[0].mathsQuarterHalfYearTotalPercentMarks;
          document.getElementById('mathsAnnualPercentMarks_span').innerHTML=data[0].mathsAnnualPercentMarks;
          document.getElementById('mathsFinalResult_span').innerHTML=data[0].mathsFinalResult;
          /*--------------------------------------------------------------------------------------------*/
          document.getElementById('generalScienceFTassignMarks_span').innerHTML=data[0].generalScienceFTassignMarks;
          document.getElementById('generalScienceFTunittestMarks_span').innerHTML=data[0].generalScienceFTunittestMarks;
          document.getElementById('generalScienceFTtotalMarks_span').innerHTML=data[0].generalScienceFTtotalMarks;
          document.getElementById('generalScienceSTassignMarks_span').innerHTML=data[0].generalScienceSTassignMarks;
          document.getElementById('generalScienceSTunittestMarks_span').innerHTML=data[0].generalScienceSTunittestMarks;
          document.getElementById('generalScienceSTtotalMarks_span').innerHTML=data[0].generalScienceSTtotalMarks;
          document.getElementById('generalScienceTTassignMarks_span').innerHTML=data[0].generalScienceTTassignMarks;
          document.getElementById('generalScienceTTunittestMarks_span').innerHTML=data[0].generalScienceTTunittestMarks;
          document.getElementById('generalScienceTTtotalMarks_span').innerHTML=data[0].generalScienceTTtotalMarks
          document.getElementById('generalScienceFOTassignMarks_span').innerHTML=data[0].generalScienceFOTassignMarks;
          document.getElementById('generalScienceFOTunittestMarks_span').innerHTML=data[0].generalScienceFOTunittestMarks;
          document.getElementById('generalScienceFOTtotalMarks_span').innerHTML=data[0].generalScienceFOTtotalMarks;
          document.getElementById('generalScienceAssignUnitTestTotalMarks_span').innerHTML=data[0].generalScienceAssignUnitTestTotalMarks;
          document.getElementById('generalScienceQuarterMarks_span').innerHTML=data[0].generalScienceQuarterMarks;
          document.getElementById('generalScienceHalfYearMarks_span').innerHTML=data[0].generalScienceHalfYearMarks;
          document.getElementById('generalScienceQuarterHalfYearTotalMarks_span').innerHTML=data[0].generalScienceQuarterHalfYearTotalMarks;
          document.getElementById('generalScienceAnnualMarks_span').innerHTML=data[0].generalScienceAnnualMarks;
          document.getElementById('generalScienceAssignUnitTestTotalPercentMarks_span').innerHTML=data[0].generalScienceAssignUnitTestTotalPercentMarks;
          document.getElementById('generalScienceQuarterHalfYearTotalPercentMarks_span').innerHTML=data[0].generalScienceQuarterHalfYearTotalPercentMarks;
          document.getElementById('generalScienceAnnualPercentMarks_span').innerHTML=data[0].generalScienceAnnualPercentMarks;
          document.getElementById('generalScienceFinalResult_span').innerHTML=data[0].generalScienceFinalResult;
          /*--------------------------------------------------------------------------------------------*/
          document.getElementById('socialScienceFTassignMarks_span').innerHTML=data[0].socialScienceFTassignMarks;
          document.getElementById('socialScienceFTunittestMarks_span').innerHTML=data[0].socialScienceFTunittestMarks;
          document.getElementById('socialScienceFTtotalMarks_span').innerHTML=data[0].socialScienceFTtotalMarks;
          document.getElementById('socialScienceSTassignMarks_span').innerHTML=data[0].socialScienceSTassignMarks;
          document.getElementById('socialScienceSTunittestMarks_span').innerHTML=data[0].socialScienceSTunittestMarks;
          document.getElementById('socialScienceSTtotalMarks_span').innerHTML=data[0].socialScienceSTtotalMarks;
          document.getElementById('socialScienceTTassignMarks_span').innerHTML=data[0].socialScienceTTassignMarks;
          document.getElementById('socialScienceTTunittestMarks_span').innerHTML=data[0].socialScienceTTunittestMarks;
          document.getElementById('socialScienceTTtotalMarks_span').innerHTML=data[0].socialScienceTTtotalMarks
          document.getElementById('socialScienceFOTassignMarks_span').innerHTML=data[0].socialScienceFOTassignMarks;
          document.getElementById('socialScienceFOTunittestMarks_span').innerHTML=data[0].socialScienceFOTunittestMarks;
          document.getElementById('socialScienceFOTtotalMarks_span').innerHTML=data[0].socialScienceFOTtotalMarks;
          document.getElementById('socialScienceAssignUnitTestTotalMarks_span').innerHTML=data[0].socialScienceAssignUnitTestTotalMarks;
          document.getElementById('socialScienceQuarterMarks_span').innerHTML=data[0].socialScienceQuarterMarks;
          document.getElementById('socialScienceHalfYearMarks_span').innerHTML=data[0].socialScienceHalfYearMarks;
          document.getElementById('socialScienceQuarterHalfYearTotalMarks_span').innerHTML=data[0].socialScienceQuarterHalfYearTotalMarks;
          document.getElementById('socialScienceAnnualMarks_span').innerHTML=data[0].socialScienceAnnualMarks;
          document.getElementById('socialScienceAssignUnitTestTotalPercentMarks_span').innerHTML=data[0].socialScienceAssignUnitTestTotalPercentMarks;
          document.getElementById('socialScienceQuarterHalfYearTotalPercentMarks_span').innerHTML=data[0].socialScienceQuarterHalfYearTotalPercentMarks;
          document.getElementById('socialScienceAnnualPercentMarks_span').innerHTML=data[0].socialScienceAnnualPercentMarks;
          document.getElementById('socialScienceFinalResult_span').innerHTML=data[0].socialScienceFinalResult;
          /*--------------------------------------------------------------------------------------------*/
          document.getElementById('firstTestTotal_span').innerHTML=data[0].firstTestTotal;
          document.getElementById('secondTestTotal_span').innerHTML=data[0].secondTestTotal;
          document.getElementById('thirdTestTotal_span').innerHTML=data[0].thirdTestTotal;
          document.getElementById('fourthTestTotal_span').innerHTML=data[0].fourthTestTotal;
          document.getElementById('querterlyTotal_span').innerHTML=data[0].querterlyTotal;
          document.getElementById('finalResultTotal_span').innerHTML=data[0].finalResultTotal;
          
           var html=$("#viewSchAssessRepo_details").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           win.document.write(html);
          
      }
    });
    
    /*ajax code END*/
            
    e.preventDefault();
        });

});


</script>

    </head>
    <body>
        
        <center><h2><u><s:text name="global.heading.viewSchAsses"/></u></h2></center>
        
        <!--Dynamic lists START-->       
        
        <s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th'}" /> 
        
        <!--Dynamic List END -->
        
        <s:form theme="css_xhtml" action="HM-test-assesment" id="eduAttendenceRegister" method="POST">
            <center>
            <table border="1">

                 <tr>
                    <td>
                        <s:text name="package.label.viewSchAssSelStuTyp"/>:<%--s:radio name="status" id="status" list="#{'inside school':'Inside School','outside school':'OutSide School'}" onchange="return cleanUp();"/--%>
                        <input type="radio" name="status" id="status" value="inside school" onchange="return cleanUp();" checked/><s:text name="package.rad.label.attenRegInsSch"/><input type="radio" name="status" id="status" value="outside school" onchange="return cleanUp();"/><s:text name="package.rad.label.attenRegOutSch"/>
                    </td>
                </tr>
                
                  <tr>
                    <td>
                        <s:text name="package.label.viewSchAssSelCla"/>:<select name='eduStatus' id='course' onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
                    </td>
                </tr>    
                <tr>
                    <td align="center">
             
             <s:url id="d_url" action="HM-StudentList-For-Assesment" />
             <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="eduAttendenceRegister" showLoadingText="true">
             </sx:div>
            
                    </td>
                </tr>
            
            </table>
             
            </center>
        </s:form>
        <div id="viewSchAssessRepo_details" style="display: none">
            <div id="print_div">
                <style>
                td.vertth {
    vertical-align:middle;
    height: 125px;
    overflow: hidden;
}
td.vertth p {
    -moz-transform: rotate(-90deg);  /* FF3.5+ */
    -o-transform: rotate(-90deg);  /* Opera 10.5 */
    -webkit-transform: rotate(-90deg);  /* Saf3.1+, Chrome */
    filter:  progid:DXImageTransform.Microsoft.Matrix(sizingMethod='auto expand',M11=6.123031769111886e-17, M12=1, M21=-1, M22=6.123031769111886e-17); /* IE6,IE7 */
    -ms-filter: "progid:DXImageTransform.Microsoft.Matrix(SizingMethod='auto expand',M11=6.123031769111886e-17, M12=1, M21=-1, M22=6.123031769111886e-17)"; /* IE8 */
    position:relative;
}
            </style>
                <center><table>
                    <tr>
                        <td><s:text name="global.label.DPORepoName"/></td>
                        <td><span id="nameValue_span"></span></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><s:text name="global.label.ExamAttenClass"/></td>
                        <td><span id="classValue_span"></span></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><s:text name="global.label.schAssRepoRollNo"/></td>
                        <td><span id="rollValue_span"></span></td>
                    </tr>
                </table>
                <table border="1">
                    <tr>
                     <td colspan="2"><s:text name="global.label.schAssRepoMonths"/></td>
                     <td colspan="12">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td class="vertth" rowspan="3"><p><s:text name="global.label.schAssRepoAssUTTotal1"/><br/><s:text name="global.label.schAssRepoAssUTTotal2"/></p></td>
                     <td colspan="4" rowspan="2"><s:text name="global.label.schAssRepoExam"/></td>
                     <td colspan="4" rowspan="2"><s:text name="global.label.schAssRepoCombiRes"/></td>
                    </tr>
                    <tr>
                     <td colspan="2"><s:text name="global.label.schAssRepoExam"/></td>
                     <td colspan="3"><s:text name="global.label.schAssRepoFirstTest"/></td>
                     <td colspan="3"><s:text name="global.label.schAssRepoSecondTest"/></td>
                     <td colspan="3"><s:text name="global.label.schAssRepoThirdTest"/></td>
                     <td colspan="3"><s:text name="global.label.schAssRepoFourthTest"/></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.DPOReportSNO"/></td>
                     <td><s:text name="global.label.ExamConExamSubj"/></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegAssi"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegUnTe"/></p></td>
                     <td class="vertth"><p><s:text name="global.label.schAssRepoTotal"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegAssi"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegUnTe"/></p></td>
                     <td class="vertth"><p><s:text name="global.label.schAssRepoTotal"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegAssi"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegUnTe"/></p></td>
                     <td class="vertth"><p><s:text name="global.label.schAssRepoTotal"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegAssi"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegUnTe"/></p></td>
                     <td class="vertth"><p><s:text name="global.label.schAssRepoTotal"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegQuar"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegHaYe"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegQuar"/><br/><s:text name="global.selectOption.examConRegHaYe"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegAnnu"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegUnTe"/><br/><s:text name="global.label.schAssRepoTotal"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegQuar"/><br/><s:text name="global.selectOption.examConRegHaYe"/></p></td>
                     <td class="vertth"><p><s:text name="global.selectOption.examConRegAnnu"/></p></td>
                     <td class="vertth"><p><s:text name="global.label.schAssRepoFinalRes"/></p></td>
                    </tr>
                    <tr>
                     <td colspan="2"><s:text name="global.label.schAssRepoMarks"/></td>
                     <td>25</td>
                     <td>25</td>
                     <td>50</td>
                     <td>25</td>
                     <td>25</td>
                     <td>50</td>
                     <td>25</td>
                     <td>25</td>
                     <td>50</td>
                     <td>25</td>
                     <td>25</td>
                     <td>50</td>
                     <td>200</td>
                     <td>100</td>
                     <td>100</td>
                     <td>200</td>
                     <td>100</td>
                     <td>25%</td>
                     <td>25%</td>
                     <td>50%</td>
                     <td>100%</td>
                    </tr>
                    <tr>
                     <td>1</td>
                     <td><s:text name="global.selectOption.examConRegTel"/></td>
                     <td><span id="teleguUrduFTassignMarks_span"></span></td>
                     <td><span id="teleguUrduFTunittestMarks_span"></span></td>
                     <td><span id="teleguUrduFTtotalMarks_span"></span></td>
                     <td><span id="teleguUrduSTassignMarks_span"></span></td>
                     <td><span id="teleguUrduSTunittestMarks_span"></span></td>
                     <td><span id="teleguUrduSTtotalMarks_span"></span></td>
                     <td><span id="teleguUrduTTassignMarks_span"></span></td>
                     <td><span id="teleguUrduTTunittestMarks_span"></span></td>
                     <td><span id="teleguUrduTTtotalMarks_span"></span></td>
                     <td><span id="teleguUrduFOTassignMarks_span"></span></td>
                     <td><span id="teleguUrduFOTunittestMarks_span"></span></td>
                     <td><span id="teleguUrduFOTtotalMarks_span"></span></td>
                     <td><span id="teleguUrduAssignUnitTestTotalMarks_span"></span></td>
                     <td><span id="teleguUrduQuarterMarks_span"></span></td>
                     <td><span id="teleguUrduHalfYearMarks_span"></span></td>
                     <td><span id="teleguUrduQuarterHalfYearTotalMarks_span"></span></td>
                     <td><span id="teleguUrduAnnualMarks_span"></span></td>
                     <td><span id="teleguUrduAssignUnitTestTotalPercentMarks_span"></span></td>
                     <td><span id="teleguUrduQuarterHalfYearTotalPercentMarks_span"></span></td>
                     <td><span id="teleguUrduAnnualPercentMarks_span"></span></td>
                     <td><span id="teleguUrduFinalResult_span"></span></td>
                    </tr>
                    <tr>
                     <td>2</td>
                     <td><s:text name="global.selectOption.examConRegHin"/></td>
                     <td><span id="hindiFTassignMarks_span"></span></td>
                     <td><span id="hindiFTunittestMarks_span"></span></td>
                     <td><span id="hindiFTtotalMarks_span"></span></td>
                     <td><span id="hindiSTassignMarks_span"></span></td>
                     <td><span id="hindiSTunittestMarks_span"></span></td>
                     <td><span id="hindiSTtotalMarks_span"></span></td>
                     <td><span id="hindiTTassignMarks_span"></span></td>
                     <td><span id="hindiTTunittestMarks_span"></span></td>
                     <td><span id="hindiTTtotalMarks_span"></span></td>
                     <td><span id="hindiFOTassignMarks_span"></span></td>
                     <td><span id="hindiFOTunittestMarks_span"></span></td>
                     <td><span id="hindiFOTtotalMarks_span"></span></td>
                     <td><span id="hindiAssignUnitTestTotalMarks_span"></span></td>
                     <td><span id="hindiQuarterMarks_span"></span></td>
                     <td><span id="hindiHalfYearMarks_span"></span></td>
                     <td><span id="hindiQuarterHalfYearTotalMarks_span"></span></td>
                     <td><span id="hindiAnnualMarks_span"></span></td>
                     <td><span id="hindiAssignUnitTestTotalPercentMarks_span"></span></td>
                     <td><span id="hindiQuarterHalfYearTotalPercentMarks_span"></span></td>
                     <td><span id="hindiAnnualPercentMarks_span"></span></td>
                     <td><span id="hindiFinalResult_span"></span></td>
                    </tr>
                    <tr>
                     <td>3</td>
                     <td><s:text name="global.selectOption.examConRegEng"/></td>
                     <td><span id="englishFTassignMarks_span"></span></td>
                     <td><span id="englishFTunittestMarks_span"></span></td>
                     <td><span id="englishFTtotalMarks_span"></span></td>
                     <td><span id="englishSTassignMarks_span"></span></td>
                     <td><span id="englishSTunittestMarks_span"></span></td>
                     <td><span id="englishSTtotalMarks_span"></span></td>
                     <td><span id="englishTTassignMarks_span"></span></td>
                     <td><span id="englishTTunittestMarks_span"></span></td>
                     <td><span id="englishTTtotalMarks_span"></span></td>
                     <td><span id="englishFOTassignMarks_span"></span></td>
                     <td><span id="englishFOTunittestMarks_span"></span></td>
                     <td><span id="englishFOTtotalMarks_span"></span></td>
                     <td><span id="englishAssignUnitTestTotalMarks_span"></span></td>
                     <td><span id="englishQuarterMarks_span"></span></td>
                     <td><span id="englishHalfYearMarks_span"></span></td>
                     <td><span id="englishQuarterHalfYearTotalMarks_span"></span></td>
                     <td><span id="englishAnnualMarks_span"></span></td>
                     <td><span id="englishAssignUnitTestTotalPercentMarks_span"></span></td>
                     <td><span id="englishQuarterHalfYearTotalPercentMarks_span"></span></td>
                     <td><span id="englishAnnualPercentMarks_span"></span></td>
                     <td><span id="englishFinalreslt_span"></span></td>
                    </tr>
                    <tr>
                     <td>4</td>
                     <td><s:text name="global.selectOption.examConRegMat"/></td>
                     <td><span id="mathsFTassignMarks_span"></span></td>
                     <td><span id="mathsFTunittestMarks_span"></span></td>
                     <td><span id="mathsFTtotalMarks_span"></span></td>
                     <td><span id="mathsSTassignMarks_span"></span></td>
                     <td><span id="mathsSTunittestMarks_span"></span></td>
                     <td><span id="mathsSTtotalMarks_span"></span></td>
                     <td><span id="mathsTTassignMarks_span"></span></td>
                     <td><span id="mathsTTunittestMarks_span"></span></td>
                     <td><span id="mathsTTtotalMarks_span"></span></td>
                     <td><span id="mathsFOTassignMarks_span"></span></td>
                     <td><span id="mathsFOTunittestMarks_span"></span></td>
                     <td><span id="mathsFOTtotalMarks_span"></span></td>
                     <td><span id="mathsAssignUnitTestTotalMarks_span"></span></td>
                     <td><span id="mathsQuarterMarks_span"></span></td>
                     <td><span id="mathsHalfYearMarks_span"></span></td>
                     <td><span id="mathsQuarterHalfYearTotalMarks_span"></span></td>
                     <td><span id="mathsAnnualMarks_span"></span></td>
                     <td><span id="mathsAssignUnitTestTotalPercentMarks_span"></span></td>
                     <td><span id="mathsQuarterHalfYearTotalPercentMarks_span"></span></td>
                     <td><span id="mathsAnnualPercentMarks_span"></span></td>
                     <td><span id="mathsFinalResult_span"></span></td>
                    </tr>
                    <tr>
                     <td>5</td>
                     <td><s:text name="global.selectOption.examConRegGSc"/></td>
                     <td><span id="generalScienceFTassignMarks_span"></span></td>
                     <td><span id="generalScienceFTunittestMarks_span"></span></td>
                     <td><span id="generalScienceFTtotalMarks_span"></span></td>
                     <td><span id="generalScienceSTassignMarks_span"></span></td>
                     <td><span id="generalScienceSTunittestMarks_span"></span></td>
                     <td><span id="generalScienceSTtotalMarks_span"></span></td>
                     <td><span id="generalScienceTTassignMarks_span"></span></td>
                     <td><span id="generalScienceTTunittestMarks_span"></span></td>
                     <td><span id="generalScienceTTtotalMarks_span"></span></td>
                     <td><span id="generalScienceFOTassignMarks_span"></span></td>
                     <td><span id="generalScienceFOTunittestMarks_span"></span></td>
                     <td><span id="generalScienceFOTtotalMarks_span"></span></td>
                     <td><span id="generalScienceAssignUnitTestTotalMarks_span"></span></td>
                     <td><span id="generalScienceQuarterMarks_span"></span></td>
                     <td><span id="generalScienceHalfYearMarks_span"></span></td>
                     <td><span id="generalScienceQuarterHalfYearTotalMarks_span"></span></td>
                     <td><span id="generalScienceAnnualMarks_span"></span></td>
                     <td><span id="generalScienceAssignUnitTestTotalPercentMarks_span"></span></td>
                     <td><span id="generalScienceQuarterHalfYearTotalPercentMarks_span"></span></td>
                     <td><span id="generalScienceAnnualPercentMarks_span"></span></td>
                     <td><span id="generalScienceFinalResult_span"></span></td>
                    </tr>
                    <tr>
                     <td>6</td>
                     <td><s:text name="global.selectOption.examConRegSSc"/></td>
                     <td><span id="socialScienceFTassignMarks_span"></span></td>
                     <td><span id="socialScienceFTunittestMarks_span"></span></td>
                     <td><span id="socialScienceFTtotalMarks_span"></span></td>
                     <td><span id="socialScienceSTassignMarks_span"></span></td>
                     <td><span id="socialScienceSTunittestMarks_span"></span></td>
                     <td><span id="socialScienceSTtotalMarks_span"></span></td>
                     <td><span id="socialScienceTTassignMarks_span"></span></td>
                     <td><span id="socialScienceTTunittestMarks_span"></span></td>
                     <td><span id="socialScienceTTtotalMarks_span"></span></td>
                     <td><span id="socialScienceFOTassignMarks_span"></span></td>
                     <td><span id="socialScienceFOTunittestMarks_span"></span></td>
                     <td><span id="socialScienceFOTtotalMarks_span"></span></td>
                     <td><span id="socialScienceAssignUnitTestTotalMarks_span"></span></td>
                     <td><span id="socialScienceQuarterMarks_span"></span></td>
                     <td><span id="socialScienceHalfYearMarks_span"></span></td>
                     <td><span id="socialScienceQuarterHalfYearTotalMarks_span"></span></td>
                     <td><span id="socialScienceAnnualMarks_span"></span></td>
                     <td><span id="socialScienceAssignUnitTestTotalPercentMarks_span"></span></td>
                     <td><span id="socialScienceQuarterHalfYearTotalPercentMarks_span"></span></td>
                     <td><span id="socialScienceAnnualPercentMarks_span"></span></td>
                     <td><span id="socialScienceFinalResult_span"></span></td>
                    </tr>
                    <tr>
                     <td>7</td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                    </tr>
                    <tr>
                     <td colspan="2"><s:text name="global.label.schAssRepoTotal"/></td>
                     <td></td>
                     <td></td>
                     <td><span id="firstTestTotal_span"></span></td>
                     <td></td>
                     <td></td>
                     <td><span id="secondTestTotal_span"></span></td>
                     <td></td>
                     <td></td>
                     <td><span id="thirdTestTotal_span"></span></td>
                     <td></td>
                     <td></td>
                     <td><span id="fourthTestTotal_span"></span></td>
                     <td></td>
                     <td><span id="querterlyTotal_span"></span></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td><span id="finalResultTotal_span"></span></td>
                    </tr>
                </table>
                <table>
                    <tr>
                     <td><s:text name="global.label.schAssRepoNumUTCond"/></td>
                     <td><span id="noOfUTConductedValue_span"></span></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.schAssRepoNumUTAtte"/></td>
                     <td><span id="noOfUTAttendedValue_span"></span></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.schAssRepoNumExamCond"/></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.schAssRepoNumExamAtte"/></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.schAssRepoGrade"/></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.schAssRepoDivRank"/></td>
                    </tr>
                    <tr>
                     <td><s:text name="global.label.schAssRepoPassFail"/></td>
                    </tr>
                </table>
                <table>
                      <tr><td><s:text name="global.label.schAssRepoGenBy"/></td><td><span id="userNameLabel_span"></span></td>
                          <td><s:text name="global.label.schAssRepoOn"/></td><td><span id="creationDate_span"></span></td></tr> 
                      <tr><td colspan="5"><input type="button" id="prbutton" value="Print this page" onclick="prdi('print_div')"/></td></tr>
                </table></center>
        </div>   
        <script type="text/javascript">
                       function prdi(divID)
    {
        var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var larPage = document.getElementById(divID).innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML = 
              "<html><head><title></title></head><body>" + 
              divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML =larPage;

    }
                       </script>
             </div>
        
    </body>
</html>