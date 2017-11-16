<%-- 
    Document   : ViewSchoolChildReport
    Created on : 6 Feb, 2012, 4:33:10 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html>
<html>
    <head>
         <sx:head/>
        <script>
            var schoolArray = new Array();
              
            function prepareSchoolMap(){
                
                <s:iterator value="allSchools" status="status">
            schoolArray[<s:property value="schoolId"/>] = '<s:property value="schoolAddress"/>';
               </s:iterator>
               
             
                //alert(schoolArray[6] +'---'+schoolArray[7]);
            }
            
            function showSchoolDetails(id)
            {
                //alert(id);
                document.getElementById('schoolAddress').innerHTML = " "+schoolArray[id.value]+" ";
                
                //remove the content from the school div
                document.getElementById('details').innerHTML = "";
                
                document.getElementById('eduStatus').options[0].selected=true;
                
            }
            
            function showDetails(val) {
            //alert('------1>'+val.value );
            if(val.value!=-1)
            dojo.event.topic.publish("show_detail");

            }
        </script>
    </head>
    <body onload="prepareSchoolMap()">
        <s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th','Inter I yr':'Inter I yr','Inter II yr':'Inter II yr'}" />
        <center>
        <h1><u><s:text name="global.heading.viewSchChRepo"/></u></h1>
       
        
        <s:form theme="simple" id="eduSchoolClassForm" method="POST">
        <br/><br/>
        <s:text name="package.label.viewSchSelSch"/>:
        <select name="schoolId" onchange='showSchoolDetails(this)'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="allSchools">
        <option value='<s:property value='schoolId'/>'><s:property value='schoolName' escape="false"/></option>
    </s:iterator>
    </select><%--s:select name="schoolId"  theme="simple" list="allSchools" listKey="schoolId" listValue="schoolName" headerKey="-1" headerValue="----Please select----" onchange='showSchoolDetails(this)'/--%><br/> 
        <br/> 
        <span id="schoolAddress" style="background-color : yellow;font-size: 30;"></span>
        <br/> <br/> 
        <s:text name="package.label.viewSchSelCla"/>:
        <select name="eduStatus" id="eduStatus" onchange='showDetails(this)'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name="eduStatus" id="eduStatus" theme="simple" list="list1" listKey="key" listValue="value" headerKey="-1" headerValue="----Please select----" onchange='showDetails(this)'/--%><br/> 
        <br/> <br/> 
        <s:url id="d_url" action="HM-StudentList-On-School-Class" />
        <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="eduSchoolClassForm" showLoadingText="true">
        </sx:div>
        
        </s:form>
        
        </center>
    </body>
</html>
