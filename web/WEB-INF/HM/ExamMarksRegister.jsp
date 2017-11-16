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
if(val.value!=-1)
dojo.event.topic.publish("show_detail");

}

function setNotFilledValues()
{
    /************Code to implement trim() in IE START*************/
    if(typeof String.prototype.trim !== 'function') {
        String.prototype.trim = function() {
        return this.replace(/^\s+|\s+$/g, ''); 
            }
        }
    /************Code to implement trim() in IE END*************/  
    
    //alert('val -- -> ');
    var marks=document.getElementsByName("marksObtained_entry");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< marks.length;i++)
        {
            //alert('val -- -> '+marks[i].value);
            if(marks[i].value.trim()==''|| marks[i].value.trim() == -1)
                marks[i].value=-1;
                
        }
    
}
 
</script>





    </head>
    <body>
        
        <center><h2><u><s:text name="global.heading.ExamMarksReg"/></u></h2></center>
        <s:form name="examMarksSave" theme="css_xhtml" action="HM-Exam-Marks-Save" id="f1" method="POST">
            <table align="center">
                  
                
                <tr>
                <td><s:text name="package.label.ExamMarksSelExam" /></td>
                    <td>
                        <select name="examId" id="examId" onchange="return show_details(this);">
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="examMasterList">
        <option value='<s:property value='examId'/>'><s:property value='class1'/>--<s:property value='subject'/>--<s:property value='examType'/>--<s:property value='examDate'/></option>
    </s:iterator>
    </select><%--s:select name="examId" list="examMasterList" listKey="examId" listValue="%{class1+'--'+subject+'--'+examType+'--'+examDate}" headerKey="-1" headerValue="----please select----" onchange="return show_details(this);"/--%>
                    </td>
                </tr>
                
           
                  </table>        
             
             <s:url id="d_url" action="HM-Exam-Marks-Entry" />
             <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="f1" showLoadingText="true">
             </sx:div> 
                        
            
               


            
          
             
        </s:form>
        
    </body>
</html>
