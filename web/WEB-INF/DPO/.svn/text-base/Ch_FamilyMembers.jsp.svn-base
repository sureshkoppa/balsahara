<%-- 
    Document   : childdetails_cwcorjjb
    Created on : May 26, 2011, 5:13:05 PM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <sx:head/>
       <script>
    function show_details(val) {
         // alert("djgsdhgksdfh");
        if(val.value!=1){
        document.getElementById('div_form').style.display='none';
        dojo.event.topic.publish("show_homes");
        }
        
          }
          
     function show_details2(val){

        if(val.value!=1){
            
            dojo.event.topic.publish("show_childpid");
        }
           
        
             }
       function show_details3(val){
            //  alert(val.value);
           document.getElementById('div_form').style.display='block';
           document.getElementById('child_id').value=val.value;
             
        
             }
             
             <jsp:include page="../../javascripts/SIChildFamilyMember_validation.jsp"></jsp:include>
 </script>
       
    <body onload="document.getElementById('dialog-form_ch_familymember_preview').style.visibility='hidden'">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.chFamMembersDet"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="sifmd" action="SIFMD-Save" method="POST"  theme="css_xhtml" id="f1"> 
                    
                    
       
                <table border="1">
                 <tr>
                    
                     <td><s:text name="package.label.enquiryRepoSelDist" />:
                     </td>
                    <td>
                        <select name="userDistrictId" id="userDistrictId" onchange="javascript:show_details(this);return false;">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${districtList}" var="obj">
                                       <option value=${obj.districtId}>${obj.districtName}</option>
                                   </c:forEach>
                               </select><%--s:select name="userDistrictId" id="userDistrictId" list="districtList"  listKey="districtId" listValue="districtName" headerValue="-- Please Select --" headerKey="1" onchange="javascript:show_details(this);return false;" >
                        </s:select--%>
                    </td>
                </tr>
                <tr>
                    <td><s:text name="package.label.enquiryRepoSelHome" />: </td>
            
                  <td><s:url id="d_url" action="DPO-FM-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                   <td><s:text name="package.label.enquiryRepoSelProfId" />:  </td>
            
                  <td><s:url id="d_url1" action="DPO-FM-FetchChildDetail"/>
                  
                      <sx:div id="details1" href="%{d_url1}" listenTopics="show_childpid" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>  
                </table>               
             <table>
                              
                <tr><td align="right"></td>
                    <td>
                        <%--
                 <s:url id="d_url2" action="DPO-SICD-FetchChildData"/>
                  
                      <sx:div id="details2" href="%{d_url2}" listenTopics="show_childdata" formId="f1" showLoadingText="true">
                      </sx:div></td>>
                        --%>
                </tr>
                <tr><td align="right"></td>
                     
                 </tr>   
                </table><br/>
                      
                
                </s:form>
                <!--/s:if-->
                 <div id="div_form" style="display: none"> 
                <!--s:else-->
                <%--s:if test="userDistrictId != null"--%>
                <s:form action="SIFMD-Save" method="POST" name="sifmd1" id="sifmd1" theme="css_xhtml"> <!--new action = SICD-Save-->
                                   <!--s:hidden name="formname" value="sicd"/-->
                    <%--session.setAttribute("formname", "sifmd1");--%>
                    <s:hidden name="formname" value="sifmd1"/>
                    <s:hidden id="child_id" name="child_id"/>
                               
                        <!--s:textfield name="childProfileId" value="%{childProfileId}"/-->
                    <%--table border="1" id="FMD">
                         <thead>
                            
                <tr><th>Select</th><th>Relationship</th><th>Name</th><th>Age</th><th>Health</th><th>Occupation</th><th>Disability</th><th>Habits</th><th>Wages,if any</th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                        <td><s:textarea id="relation" name="relation" rows="1" cols="5"/></td>
                        <td><s:textarea id="name" name="name" rows="1" cols="5"/></td>
                        <td><s:textarea id="age" name="age" rows="1" cols="5"/></td>
                        <td><s:textarea id="health" name="health" rows="1" cols="5"/></td>
                    <td><s:textarea id="occupation" name="occupation" rows="1" cols="5"/></td>
                    <td><s:textarea id="disability" name="disability" rows="1" cols="5"/></td>
                    <td><s:textarea id="habits" name="habits" rows="1" cols="5" wrap="true"/></td>
                     <td><s:textarea id="wages" name="wages" rows="1" cols="5" wrap="true"/></td>
                   </tr>
                 </table--%>
                   
                   
                   <table border="1" id="FMD">
                         <thead>
                             <tr><th><s:text name="package.label.chFamMemSelect" /></th> <th><s:text name="package.label.chFamMemRecords" /></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                             
                        <td>
                            <table> 
                         
                        <tr><th><s:text name="package.label.chFamMemRelation" /></th><td><s:textarea id="relation" name="relation" rows="1" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="package.label.chFamMemName" /></th><td><s:textfield id="name" name="name" rows="1" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="package.label.chFamMemAge" /></th><td><s:textfield id="age" name="age"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="package.label.chFamMemHealth" /></th><td><s:textarea id="health" name="health" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                        <tr><th><s:text name="package.label.chFamMemOccu" /></th><td><s:textarea id="occupation" name="occupation" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                        <tr><th><s:text name="package.label.chFamMemDisab" /></th><td><s:textarea id="disability" name="disability" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="package.label.chFamMemHabits" /></th><td><s:textarea id="habits" name="habits" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                        <tr><th><s:text name="package.label.chFamMemWages" /></th><td><s:textfield id="wages" name="wages" rows="2" cols="15" wrap="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                            </table>
                       </td>
                     </tr>
                 </table> 
                     <INPUT type="button" value="<s:text name="global.button.AddRow"/>" onclick="addRow('FMD')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="global.button.DeleteRow"/>" onclick="deleteRow('FMD')"/>
                    <table>
                    <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td></tr>
                    </table>                    
                    
                </s:form>
                 </div>  
                 <div id="dialog-form_ch_familymember_preview" title="<s:text name="js.preview.dpo.chFaMem"/>">
	<form name="ch_familymember_prevwindow">
             
             <s:text name="package.label.selectedChProfId" /> :<span id="childProfileId_span"></span>
           <table border="1" id="chfm_span">
            <thead>
             <tr>
               <td><b><s:text name="package.label.chFamMemSNO" /></b></td>
                <td><b><s:text name="package.label.chFamMemRelation" /></b></td>
                <td><b><s:text name="package.label.chFamMemName" /></b></td>
                <td><b><s:text name="package.label.chFamMemAge" /></b></td>
                <td><b><s:text name="package.label.chFamMemHealth" /></b></td>
                <td><b><s:text name="package.label.chFamMemOccu" /></b></td>
                <td><b><s:text name="package.label.chFamMemDisab" /></b></td>
                <td><b><s:text name="package.label.chFamMemHabits" /></b></td>
                <td><b><s:text name="package.label.chFamMemWages" /></b></td>
             </tr>
            </thead>
            <tbody>
             <tr>
             </tr>
            </tbody>
        </table>
            
            
	</form>
        </div>
                
                
                
                <%--/s:if--%>
                  
                <!--/s:else-->
            
        </center>
    </body>
</html>
