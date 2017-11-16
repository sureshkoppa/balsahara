<%-- 
    Document   : ChildCurrentStatus
    Created on : Jul 7, 2011, 10:28:40 AM
    Author     : Ramu Parupalli
--%>

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
   
    <head>
         <sx:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Child Status Update Register</title>
         <script>
    
         $(document).ready(function(){
	 $("#missing").css("display","none");
         $("#nonmissing").css("display","none");
         $("#missingfir").css("display","none");
            
        $("#type").change(function(){
               
    	if (( ($("#type").val()=='runawaycameback')) ||($("#type").val()=='missingfound') ) {
            document.getElementById("rea_fir").textContent = '<s:text name="package.label.chStaReason"/>'
                $("#missingfir").slideUp("fast");
                $("#missing").slideDown("fast"); //Slide Down Effect  
                $("#nonmissing").slideUp("fast");            
        } else if (((($("#type").val()=='shortleave') ||($("#type").val()=='residential'))|| ($("#type").val()=='shortleavereturn')) ||($("#type").val()=='residentialreturned') ) {
            document.getElementById("rea_fir").textContent = '<s:text name="package.label.chStaReason" searchValueStack="false"/>' 
            $("#nonmissing").slideDown("fast");
            $("#missing").slideUp("fast");	//Slide Up Effect            
            $("#missingfir").slideUp("fast");
        }
        else if (($("#type").val()=='runaway') ||($("#type").val()=='missing') ) {
            document.getElementById("rea_fir").textContent = '<s:text name="label.FirDetails"/>'
            $("#missing").slideDown("fast");
            $("#missingfir").slideDown("fast");	//Slide Up Effect
            $("#nonmissing").slideUp("fast");            
        }
        else if ($("#type").val()=='1')  {
           $("#missing").css("display","none");
           $("#nonmissing").css("display","none");
           $("#missingfir").css("display","none");
        }
     });            
});
         
         <jsp:include page="../../javascripts/SU_Childstatus_Validation.jsp"></jsp:include>
    </script>
         </head>  

 <body onload="document.getElementById('dialog-form_Childstatus_preview').style.visibility='hidden'">
<center>
    <caption><h1><s:text name="global.heading.chStatusUpdateReg"/></h1></caption>
                        
    <s:form name="su_childstatus" action="SU-ChildStatus-Save" method="POST" theme="css_xhtml" id="su_childstatus">
                            <s:hidden name="formName" value="su_childstatus"/>
                                     
                            <table cellspacing="0">
                 <tr><h3></h2></tr>
                <tr><td align="right"><s:text name='package.label.chStaSelProfId'/>:</td>
                    <td><select name="childProfileId" id="childProfileId">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${childrenListInAHome_status}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName} ${obj.childSurname}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--<s:select name="childProfileId" id="childProfileId" labelposition="left" headerKey="1" headerValue="--Please Select--" list="childrenListInAHome_status" listKey="childProfileId" listValue="%{childName+' '+childSurname+'---->'+childProfileId}" />--%></td></tr>
                <tr><td align="right"><s:text name='package.label.chStaSelCase'/>:</td>
                    <td><select name="type" id="type">
                              <option value="1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="runaway"><s:text name='package.selectOption.chStaRunaway'/></option>
                              <option value="missing"><s:text name='package.selectOption.chStaMissing'/></option>
                              <option value="shortleave"><s:text name='package.selectOption.chStaShortLea'/></option>
                              <option value="residential"><s:text name='package.selectOption.chStaResiden'/></option>
                              <option value="runawaycameback"><s:text name='package.selectOption.chStaRunCameBack'/></option>
                              <option value="missingfound"><s:text name='package.selectOption.chStaMissFound'/></option>
                              <option value="shortleavereturn"><s:text name='package.selectOption.chStaShoLeaRet'/></option>
                              <option value="residentialreturned"><s:text name='package.selectOption.chStaResiRet'/></option>
                          </select><%--<s:select name="type" id="type" labelposition="left" headerKey="1" headerValue="--Please Select--" list="#{'runaway':'Runaway','missing':'Missing','shortleave':'Short Leave','residential':'Residential School','runawaycameback':'Run away cameback','missingfound':'Found Missing Child','shortleavereturn':'Short Leave returned','residentialreturned':'Residential Returned'}"/>--%></td></tr>
                            </table>
              <!--edited by SURESH for FIR on 12/7/12 start-->              
                <div id="missing">
                    <table>
                        <tr><td align="right"><s:text name='package.label.chStaMRRCFMDate1'/><br><s:text name='package.label.chStaMRRCFMDate2'/><br><s:text name='package.label.chStaMRRCFMDate3'/>:</td><td><s:textfield  name="missingdate_string" id="datepicker"  readonly="true" /></td></tr>
                        
                   </table></div>
                        
                 <div id="missingfir">
                    <table>
                        <tr><td align="right"><s:text name='package.label.chStaFIRDate'/>:</td><td><s:textfield  name="date_fir" id="datepicker3"  readonly="true" /></td></tr>                        
                </table></div>
              
              
                <div id="nonmissing">
                    <table>
                        <tr><td align="right"><s:text name='global.label.viewopregFromDate'/>:</td><td><s:textfield  name="fromdate_string" id="datepicker1" readonly="true"  /></td></tr>
                        <tr><td align="right"><s:text name='global.label.viewopregToDate'/>:</td><td><s:textfield  name="todate_string" id="datepicker2"  readonly="true" /></td></tr>                    
                        
                    </table> </div>
             <!--edited by SURESH for FIR on 12/7/12 ends-->              
                <table>
                    <tr><td align="right" id="rea_fir"><s:text name='package.label.chStaReason'/>:</td><td><s:textarea rows="2" cols="20"  name="reason" id="reason" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>  
                <tr><td align="right"><s:text name='package.label.chStaResiAddr'/>:</td><td><s:textarea rows="2" cols="20"  name="address" id="address" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name='package.label.chStaRemarks'/>:</td><td><s:textarea rows="2" cols="20"  name="remarks" id="remarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>              
                  </table>     
                           
                  <center> <input type="submit" value="<s:text name="global.button.submit"/>"/><input type="reset" value="<s:text name="global.button.clear"/>"/>  </center>
        
                </s:form> 
                  
                  <div id="dialog-form_Childstatus_preview" title="<s:text name="global.heading.chStatusUpdateReg"/> <s:text name="global.heading.preview"/>">
	<form name="childstatus_prevwindow">
             <table border="1">
                 <tr><td align="right"><s:text name='package.label.chStaChProfId'/>:</td><td><span id="childProfileId_span"></span></td></tr>
                 <tr><td align="right"><s:text name='package.label.chStaCaseType'/>:</td><td><span id="type_span"></span></td></tr>
                 <tr><td align="right"><s:text name='package.label.chStaMRRCFMDate1'/><br><s:text name='package.label.chStaMRRCFMDate2'/><br><s:text name='package.label.chStaMRRCFMDate3'/>:</td><td><span id="missingdate_string_span"></span></td></tr>
                 <tr><td align="right"><s:text name='package.label.chStaFIRDate'/>:</td><td><span id="firdate_string_span"></span></td></tr>
                 <tr><td align="right"><s:text name='global.label.viewopregFromDate'/>:</td><td><span id="fromdate_string_span"></span></td></tr>
                 <tr><td align="right"><s:text name='global.label.viewopregToDate'/>:</td><td><span id="todate_string_span"></span></td></tr>
                 <tr><td align="right"><s:text name='package.label.chStaReason'/>:</td><td><span id="reason_span"></span></td></tr>
                 <tr><td align="right"><s:text name='package.label.chStaResiAddr'/>:</td><td><span id="address_span"></span></td></tr>
                 <tr><td align="right"><s:text name='package.label.chStaRemarks'/>:</td><td><span id="remarks_span"></span></td></tr>
                   </table>  
	</form>
        </div>     
                  
            
                  </center>
 </body>
</html>