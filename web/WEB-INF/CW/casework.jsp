<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
   <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.*;"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/casework_validation.jsp"></jsp:include> 
            </script>
         <sx:head/>
        <title>Casework Sheet</title>
        <script>
            function show_details(val) {
                //alert(document.getElementById('details').style.display);
                //document.getElementById('details').style.visibility = 'hidden';
               // alert(val.value);
              //  dojo.event.topic.publish("show_childdetails");
               if(val.value!=1){
            dojo.event.topic.publish("show_childdetails");
            
            console.log($('#dataDiv'));
            
            
                     }
            }
            
            
            $(function() {
            console.log("page loaded");
           $('#childProfileId').click(function(){
                console.log('----->'+$('#childProfileId option:selected').text());
            });
});
            
            
               
        </script>
    </head>  
 <!--body onload="document.getElementById('dialog-form_adm_reg').style.visibility='hidden'"-->
 <body onload="document.getElementById('dialog-form_casework_preview').style.visibility='hidden'">
<center>
                <h2><s:text name="heading.casework"/></h2>
              <!--%session.setAttribute("form_name", "casework");%-->
                <s:form name="casework" action="CW-Casework-Save" method="POST" theme="simple" id="casework">
                    <s:hidden name="formName" value="casework"/>
                   <%-- date:<input type="text" id="datepicker"> --%>
                <table id="caseWorktable">
                 <tr>
                     <td align="right"><s:text name="label.childProId"/>:</td>
                      <td><select name="childProfileId" id="childProfileId" onchange="javascript:show_details(this);return false;">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childrenListInAHome}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                   </c:forEach>
                          </select>
                 
                      </td>
                   </tr></table>
                 
                 <s:url id="d_url" action="CW-Casework-Fetch-Child"/>                  
                 <%--<sx:div id="details" href="%{d_url}" listenTopics="show_childdetails" formId="casework" showLoadingText="true">
                
                 </sx:div>--%>
                <s:div id="dataDiv" formId="casework"/>
                <sx:bind targets="dataDiv" formId="casework" listenTopics="show_childdetails" href="%{#d_url}" showLoadingText="true"/>
                
                </s:form>   
               
              <div id="dialog-form_casework_preview" title="<s:text name="js.preview.CWDet"/>">
	<form name="casework_prevwindow">
             <table border="1">
                 <tr><td align="right"><s:text name="label.childProId"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.fName"/>:</td><td><span id="childName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.lName"/>:</td><td><span id="childSurname_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.relg"/>:</td><td><span id="religion_span"></span></td></tr>
                 <tr><td align="right">Specify Other Religion:</td><td><span id="religion_other_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.caste"/>:</td><td><span id="caste_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.subCaste"/>:</td><td><span id="subcaste_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.age"/>:</td><td><span id="age_span"></span></td></tr>
                 <%--  <tr><td align="right"><s:text name="global.label.dateOfBir"/>:</td><td><span id="childDetails_dob_span"></span></td></tr>   --%>
                 <tr><td align="right"><s:text name="global.label.fatName"/>:</td><td><span id="fatherName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.fatOccup"/>:</td><td><span id="fatherOccup_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.matName"/>:</td><td><span id="motherName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.matOccup"/>:</td><td><span id="motherOccup_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfBro"/>:</td><td><span id="noBrothers_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.noOfSis"/>:</td><td><span id="noSister_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.langKnown"/>:</td><td><span id="languagesKnown_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.addrParGuar"/>:</td><td><span id="addrParents_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.intRelIfAny"/></td><td><span id="intrRelatives_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.eduStatus"/>:</td><td><span id="eduStatus_span"></span></td></tr>
                 <tr><td align="right"><s:text name="global.label.identProbIss"/>:</td><td><span id="identifiedProblemsChild_span"></span></td></tr>
                 </table>  
	</form>
        </div>

         <%--  </s:elseif--%>
        </center>
 </body>
</html>