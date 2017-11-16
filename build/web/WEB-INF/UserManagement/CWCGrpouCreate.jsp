<%-- 
    Document   : CWCGroupCreate
    Created on : 10 Jun, 2011, 11:55:29 AM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html>
<html>
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<sx:head/>
<script>
function show_details(val) {
//alert('------1>'+val.value );
if(val.value!=-1)
    {
        dojo.event.topic.publish("show_detail");
        //document.getElementById('dateDiv').style.visibility='visible';
    }


}
</script>
</head>
   
    <body>
      <center>
          <h2><u>CWC Group Creation Register</u></h2>
          <br><br>
        
        <s:form name="createCWCGroupForm" id="createCWCGroupForm" action="UM-CWC-Group-Save" method="POST" theme="css_xhtml">
            
            <s:hidden name="userType" value="cwc_jjb"/>
            Select District:<s:select  name="districtId" id="districtId" list="districtList" headerKey="-1" headerValue="-----please select-------" listKey="districtId" listValue="districtName" onchange="javascript:show_details(this);return false;"/>            
           <%-- <br>
            Select Home Type:<s:select name="homeType" list="#{'all':'All Homes','oh':'Observation Homes','sh':'Spatial Homes','ruch':'Attached Reception Units and Child Homes'}" headerValue="--- Please Select ---" headerKey="1" onchange="javascript:show_details(this);return false;"/>
            --%>
            <br><br><hr/>
            
             <%--date--%>
             <div id='dateDiv'>
        <table>
            <tr>
                <td>Start Date:</td><td class="demo"><s:textfield name="roleStartDate" readonly="true" id="datepicker"/></td><%--td><s:textfield name="roleStartDate" /></td--%>
           </tr>
           <tr>
               <td>End Date:</td><td class="demo"><s:textfield name="roleEndDate" readonly="true" id="datepicker1"/></td><%--td><s:textfield name="roleEndDate" /></td--%>
           </tr>
        </table>
             </div>
            
            
                <s:url id="d_url" action="UM-GetHomeList-CWC-GroupCreation"/>
                <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="createCWCGroupForm" showLoadingText="true">
                </sx:div>
            
               
        </s:form>
      </center>
    </body>
</html>
