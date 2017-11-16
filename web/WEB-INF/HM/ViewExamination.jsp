<%-- 
    Document   : ViewExamination
    Created on : 5 Jul, 2011, 10:19:44 AM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script>
            function replaceDivInExamView(val)
            {
                /************Code to implement trim() in IE START*************/
                if(typeof String.prototype.trim !== 'function') {
                  String.prototype.trim = function() {
                  return this.replace(/^\s+|\s+$/g, ''); 
                                                     }
                                                                }
                /************Code to implement trim() in IE END*************/                                                 

                //alert('------- '+val.value.trim());
                
                //clear the date fields
                document.getElementById('datepicker1').value='';
                document.getElementById('datepicker2').value='';
                
                //Show the div
                switch(val.value)
                {
                    case 'Type':
                        //alert(1);
                        document.getElementById('insertDiv').innerHTML=document.getElementById('typeDiv').innerHTML;
                        document.getElementById('dateDiv').style.visibility="visible";
                        document.getElementById('submitTD').style.visibility="visible";                       
                        document.getElementById('marksTab').border='1';
                        break;
                    
                    case 'Class':
                        //alert(2);
                        document.getElementById('insertDiv').innerHTML=document.getElementById('classDiv').innerHTML;
                        document.getElementById('dateDiv').style.visibility="visible";
                        document.getElementById('submitTD').style.visibility="visible";                       
                        document.getElementById('marksTab').border='1';
                        break;
                    
                    case 'Subject':
                        //alert(3);
                        document.getElementById('insertDiv').innerHTML=document.getElementById('subjectDiv').innerHTML;
                        document.getElementById('dateDiv').style.visibility="visible";
                        document.getElementById('submitTD').style.visibility="visible";                       
                        document.getElementById('marksTab').border='1';
                        break;
                    default:
                        //alert(4);
                        document.getElementById('insertDiv').innerHTML='';
                        document.getElementById('dateDiv').style.visibility="hidden";
                        document.getElementById('submitTD').style.visibility="hidden";                       
                        document.getElementById('marksTab').border='0';
                        
                    
                }
                /*if(val.value == 'Type')
                    {
                      alert(1);  
                    }*/
                
            }
            
            <jsp:include page="../../javascripts/HM_viewExamRegister_Validation.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <center>
        <s:form name="viewExamRegister" id="viewExamRegister" action="HM-Exam-View-1-Action">
            <s:hidden name="formName" value="viewExamRegister"/>
            <table id="marksTab" border="0">
                <tr>
                    <td>
                        <s:text name="global.label.ViewExamSearchOn"/>:<select name="searchBy" id="searchBy" onchange="return replaceDivInExamView(this);">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="Type"><s:text name='global.selectOption.viewExamType'/></option>
                              <option value="Class"><s:text name='global.selectOption.viewExamClass'/></option>
                              <option value="Subject"><s:text name='global.selectOption.viewExamSubj'/></option>
                          </select><%--s:select name="searchBy" id="searchBy" list="#{'Type':'Type','Class':'Class','Subject':'Subject'}" headerKey="-1" headerValue="----Please Select-----"  onchange="return replaceDivInExamView(this);" theme="simple"/--%>  
                    </td>
                </tr>
                
                <tr>
                    <td align="center">
                        <br>
                        
                      <div id="insertDiv"></div><br>
                <div id="dateDiv" style="visibility: hidden">
             <s:text name="global.label.ViewExamFrom"/>:<s:textfield name="fromDate"  id="datepicker1" theme="simple"/><br><br>
               <s:text name="global.label.ViewExamTo"/>:&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="toDate" id="datepicker2" theme="simple"/>      
                <div>
                    </td>
                </tr>
                 <tr>
                     <td align="center">
                         <div  id="submitTD" style="visibility: hidden">
                             <input type="submit" value="<s:text name="global.button.hmSearch"/>"/>
                         </div>
                         
                    </td>
                </tr>
                
            </table>
            
            
            
            
            
        </s:form>
                </center>
            <div id="typeDiv" style="visibility: collapse">
           
                    <s:text name="global.label.ExamAttenExamTyp"/>:<select name="examType" id="examType">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.examConRegAssi'/>"><s:text name='global.selectOption.examConRegAssi'/></option>
                              <option value="<s:text name='global.selectOption.examConRegUnTe'/>"><s:text name='global.selectOption.examConRegUnTe'/></option>
                              <option value="<s:text name='global.selectOption.examConRegQuar'/>"><s:text name='global.selectOption.examConRegQuar'/></option>
                              <option value="<s:text name='global.selectOption.examConRegHaYe'/>"><s:text name='global.selectOption.examConRegHaYe'/></option>
                              <option value="<s:text name='global.selectOption.examConRegAnnu'/>"><s:text name='global.selectOption.examConRegAnnu'/></option>
                          </select><%--s:select name="examType" id="examType" list="#{'Assignment':'Assignment','Unit Test':'Unit Test','Quarterly':'Quarterly','Half Yearly':'Half Yearly','annual':'Annual'}" headerKey="-1" headerValue="----Select Exam Type-----" theme="simple"/--%>                             
             </div>
        
        <div id="classDiv" style="visibility: collapse">
          <s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th'}" />
                   <s:text name="global.label.ExamAttenClass"/>:<select name="class1" id="class1">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name="class1" id="class1" label="Select class" labelposition="top" list="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th'}" headerKey="-1" headerValue="----Select a Class-----" theme="simple"/--%>
       
        </div>
        
        <div id="subjectDiv" style="visibility: collapse">           
                    <s:text name="global.label.ExamConExamSubj"/>:<select name="subject" id="subject">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.examConRegTel'/>"><s:text name='global.selectOption.examConRegTel'/></option>
                              <option value="<s:text name='global.selectOption.examConRegHin'/>"><s:text name='global.selectOption.examConRegHin'/></option>
                              <option value="<s:text name='global.selectOption.examConRegEng'/>"><s:text name='global.selectOption.examConRegEng'/></option>
                              <option value="<s:text name='global.selectOption.examConRegMat'/>"><s:text name='global.selectOption.examConRegMat'/></option>
                              <option value="<s:text name='global.selectOption.examConRegGSc'/>"><s:text name='global.selectOption.examConRegGSc'/></option>
                              <option value="<s:text name='global.selectOption.examConRegSSc'/>"><s:text name='global.selectOption.examConRegSSc'/></option>
                          </select><%--s:select name="subject" id="subject" label="Select Subject" labelposition="top" list="#{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'}" headerKey="-1" headerValue="----Select a Subject-----" theme="simple"/--%>                    
                              
        </div>
                    
    </body>
</html>
