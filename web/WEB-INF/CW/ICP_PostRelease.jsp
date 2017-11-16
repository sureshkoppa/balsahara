<%-- 
    Document   : ICP_PostRelease
    Created on : 11 Oct, 2012, 1:04:12 PM
    Author     : suresh
--%>

  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
   
    <head>
         <sx:head/>
         <script type="text/javascript">            
             <jsp:include page="../../javascripts/ICP_PostRelease_Valid.jsp"></jsp:include> 
          </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual Care Plan Post Release Details</title>
        <script>
        function school_admit(f1)
            {
               // alert("inside");
               var value = f1.value;
               //alert("---"+value);
              
               if (value=='n') {
                        document.getElementById("icpSchool_div").style.visibility="hidden";
                        $("#icpSchool_div").slideUp("fast");	//Slide Up Effect
               }
               else if(value=='y')
                   {
                        document.getElementById("icpSchool_div").style.visibility="visible";
                        $("#icpSchool_div").slideDown("fast");	//Slide Up Effect 
                           
                     
                     
                   }
               }
                function start()
               {
                   //alert("start");
                   document.getElementById("icpSchool_div").style.visibility="hidden";
                   $("#icpSchool_div").slideUp("fast");	//Slide Up Effect
              
                   
               }
     </script>
    </head>  

 <body onload="start();document.getElementById('dialog-form_ICPPost_preview').style.visibility='hidden'">
<center>
    <caption><h1><s:text name="global.heading.postRelease"/></h1></caption>
                        
    <s:form name="icp_postRelease" action="ICP-PostRelease-Save" method="POST" theme="css_xhtml" id="icp_postRelease">
                            <s:hidden name="formName" value="icp_postRelease"/>
                            
                            <table cellspacing="0">
              
                <tr><h3></h3></tr>
                            <tr><td align="right"><s:text name="label.profileId"/>:</td>
                                <td>
                                    <select name="childProfileId" id="childProfileId" >
                                        <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                        <c:forEach items="${childrenListInAHome}" var="obj">
                                            <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                        </c:forEach>  
                                    </select>
                                    
                                </td></tr>
                            </table>   
                            
                            
              <table>
                      <tr><td align="right"><s:text name="global.label.staBankAcc"/></td><td>
                              <input type="radio"  id="statusBankAcc" name="statusBankAcc" theme="css_xhtml"  value="cl"  /><s:text name="global.label.closed"/><br/>
                              <input type="radio"  id="statusBankAcc" name="statusBankAcc" theme="css_xhtml"  value="tr"  /><s:text name="global.label.transffered"/>
                         
                          </td></tr>
                      <tr><td></td><td></td></tr>
                      <tr><td align="right"><s:text name="global.label.earnAndBelong"/></td>
                          <td>
                              <input type="radio"  id="earningsHandedOver" name="earningsHandedOver" theme="css_xhtml"  value="y"  /> <s:text name="global.label.yes"/>  
                              <input type="radio"  id="earningsHandedOver" name="earningsHandedOver" theme="css_xhtml"  value="n"  /> <s:text name="global.label.no"/>  
                          </td></tr>
                      <tr><td align="right"><s:text name="global.label.placeOfJuvOrChild"/>:</td><td><s:textarea name="placementChild" id="placementChild" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.famTowChild"/>:</td><td><s:textarea name="familyBehaviour" id="familyBehaviour" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.socMilOfChild"/>:</td><td><s:textarea name="socialMilieuChild" id="socialMilieuChild" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.howChildUsingSkills"/></td><td><s:textarea name="childUsingSkills" id="childUsingSkills" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    
                      <tr><td align="right"><s:text name="global.label.whetherChildAdm"/>:</td>
                          <td>
                              <input type="radio"  id="childAdmitSchool" name="childAdmitSchool" theme="css_xhtml"  value="y"  onclick="javascript:school_admit(this);"/> <s:text name="global.label.yes"/>  
                              <input type="radio"  id="childAdmitSchool" name="childAdmitSchool" theme="css_xhtml"  value="n"  onclick="javascript:school_admit(this);"/> <s:text name="global.label.no"/>  
                              </td></tr>
                         </table>
                      <div id="icpSchool_div">
                          <table>    
                      <tr><td align="right"><s:text name="global.label.dateOfAdm"/>:</td><td><s:textfield name="dateAdmit_1" id="datepicker" readonly="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.nameOfSchool"/>:</td><td><s:textarea name="nameSchool" id="nameSchool" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                          </table>
                      </div>
              
                 
            
                      <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>
        
                </s:form> 
                         <br/><br/>
                      
                         <div id="dialog-form_ICPPost_preview" title="<s:text name="js.preview.icpPostRel"/>">
	<form name="icppost_prevwindow">
            <table border="1">
                <tr><td align="right"><s:text name="label.profileId"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.staBankAcc"/>:</td><td><span id="statusBankAcc_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.earnAndBelong"/>:</td><td><span id="earningsHandedOver_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.placeOfJuvOrChild"/>:</td><td><span id="placementChild_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.famTowChild"/>:</td><td><span id="familyBehaviour_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.socMilOfChild"/>:</td><td><span id="socialMilieuChild_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.howChildUsingSkills"/>:</td><td><span id="childUsingSkills_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.whetherChildAdm"/>:</td><td><span id="childAdmitSchool_span"></span></td></tr>
              
            </table>
        </form>
           </div>
                                   
             
</center>
 </body>
</html>                            