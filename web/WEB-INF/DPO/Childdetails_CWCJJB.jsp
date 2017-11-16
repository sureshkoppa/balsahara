<%-- 
    Document   : childdetails_cwcorjjb
    Created on : May 26, 2011, 5:13:05 PM
    Author     : Ramu Parupalli
--%>
<%@page import="com.cdac.usermanagement.ORM.ChildDetails"%>
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
          
        if(val.value!=1){
        document.getElementById('p').style.visibility='hidden';
        dojo.event.topic.publish("show_homes");
        }
        
          }
          
     function show_details2(val){

        if(val.value!=1){
            
            dojo.event.topic.publish("show_childpid");
        }
           
        
             }
       function show_details3(val){

          if(val.value!=1)
          {   
              document.sicd.action = 'DPO-SICD-FetchChildData';
              document.sicd.submit();
              document.getElementById('p').style.visibility='visible';
              //dojo.event.topic.publish("show_childdata");
          }
           
        
             }
             
             <jsp:include page="../../javascripts/SIch_cwcjjb_validation.jsp"></jsp:include>
 </script>
    </head>
    <body onload="document.getElementById('dialog-form_ch_cwcjjb_preview').style.visibility='hidden'">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.chDetCWCJJB"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="sicd" action="SICD-Save" method="POST"  theme="css_xhtml" id="f1"> <!--old action = SICD-Save-->
                     <s:hidden name="formname" value="sicd"/>
                    
       
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
            
                  <td><s:url id="d_url" action="DPO-SICD-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                   <td><s:text name="package.label.enquiryRepoSelProfId" />:  </td>
            
                  <td><s:url id="d_url1" action="DPO-SICD-FetchChildDetail"/>
                  
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
                </table>                     
                
                </s:form>
                <!--/s:if-->
                <div id="p" style="visibility: 'hidden'">
                <!--s:else-->
                <s:if test="userDistrictId != null">
                    <% 
ChildDetails temp_chDet=null;
System.out.println(session.getAttribute("ChildProfList")+"in jsp");
temp_chDet= session.getAttribute("ChildProfList")!=null? (ChildDetails)session.getAttribute("ChildProfList"): null;
//temp_chDet.getChildMaster().getGender()
%>
                    <s:form action="SICD-Save" method="POST" name="sicd1" theme="css_xhtml" id="sicd1" > <!--new action = SICD-Save-->
                                   <s:hidden name="formname" value="sicd1"/>
                    <%--session.setAttribute("formname", "sicd1");--%>
                    
                                                                   
                     <table>
                         <%--s:property value="childProfileId"/><br --%> 
                          <!--s: name="hiddenChildProfileId" value="%{childProfileId}"/-->  
                    
                    <tr><td align="right"><s:text name="package.label.selectedChProfId" />:</td><td><%--s:textfield id="childProfileId" name="childProfileId" value="%{childProfileId}" readonly="true"/--%><input type="text" id="childProfileId" name="childProfileId" value="<%=temp_chDet.getChildDetailsPK().getChildProfileId()%>" readonly="true"></input></td></tr>
         
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBOrdNo" />:</td><td><s:textfield id="cwcJjbOrderNo" name="cwcJjbOrderNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBOrdDat" />:</td><td><s:textfield name="orderDate_String" id="datepicker1"/></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBUndSec" />:</td><td><s:textfield  id="undersection" name="undersection" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBOffNat" />:</td><td><s:textarea  id="natureOffence" name="natureOffence" cols="20" rows="4" value="In conflict with Law" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBFirsNam" />:</td><td><%--s:textfield  id="childName" name="childName" value="%{childDetails.childName}"/--%><input type="text" id="childName" name="childName" value="<%=temp_chDet.getChildName()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBLastNam" />:</td><td><%--s:textfield  id="childSurname" name="childSurname" value="%{childDetails.childSurname}"/--%><input type="text" id="childSurname" name="childSurname" value="<%=temp_chDet.getChildSurname()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBFathNam" />:</td><td><%--s:textfield id="fatherName" name="fatherName" value="%{childDetails.fatherName}"/--%><input type="text" id="fatherName" name="fatherName" value="<%=temp_chDet.getFatherName()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBDob" />:</td><td><s:date name="%{childDetails.dob}" format="dd/MM/yyyy"  var="mydate"/><s:textfield name="dob_String" id="datepicker"  value="%{#mydate}"/></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBReli" />:</td><td><%--s:select id="religion" name="religion"  value="%{childDetails.religion}" headerKey="1" headerValue="-- Please Select --" list="#{'Hindu':'Hindu','Muslim':'Muslim','Christian':'Christian','Jain':'Jain','Other':'Other'}" onchange="casework_dynamic(this);"/--%>
                                                                                                    <select id="religion" name="religion" onchange="casework_dynamic(this);">
                                                                                                        <s:if test="%{#session.ChildProfList.getReligion()=='1'}"><option value="1" selected>--<s:text name='global.selectOption.admregPleaSel'/>--</option></s:if>
                                                                                                        <s:else><option value="1">--<s:text name='global.selectOption.admregPleaSel'/>--</option></s:else>
                                                                                                        <s:if test="%{#session.ChildProfList.getReligion()==getText('global.selectOption.chDet_cwcjjbHin')}"><option value="<s:text name='global.selectOption.chDet_cwcjjbHin'/>" selected><s:text name="global.selectOption.chDet_cwcjjbHin"/></option></s:if>
                                                                                                        <s:else><option value="<s:text name='global.selectOption.chDet_cwcjjbHin'/>"><s:text name="global.selectOption.chDet_cwcjjbHin"/></option></s:else>
                                                                                                        <s:if test="%{#session.ChildProfList.getReligion()==getText('global.selectOption.chDet_cwcjjbMus')}"><option value="<s:text name='global.selectOption.chDet_cwcjjbMus'/>" selected><s:text name="global.selectOption.chDet_cwcjjbMus"/></option></s:if>
                                                                                                        <s:else><option value="<s:text name='global.selectOption.chDet_cwcjjbMus'/>"><s:text name="global.selectOption.chDet_cwcjjbMus"/></option></s:else>
                                                                                                        <s:if test="%{#session.ChildProfList.getReligion()==getText('global.selectOption.chDet_cwcjjbChr')}"><option value="<s:text name='global.selectOption.chDet_cwcjjbChr'/>" selected><s:text name="global.selectOption.chDet_cwcjjbChr"/></option></s:if>
                                                                                                        <s:else><option value="<s:text name='global.selectOption.chDet_cwcjjbChr'/>"><s:text name="global.selectOption.chDet_cwcjjbChr"/></option></s:else>
                                                                                                        <s:if test="%{#session.ChildProfList.getReligion()==getText('global.selectOption.chDet_cwcjjbJai')}"><option value="<s:text name='global.selectOption.chDet_cwcjjbJai'/>" selected><s:text name="global.selectOption.chDet_cwcjjbJai"/></option></s:if>
                                                                                                        <s:else><option value="<s:text name='global.selectOption.chDet_cwcjjbJai'/>"><s:text name="global.selectOption.chDet_cwcjjbJai"/></option></s:else>
                                                                                                        <s:if test="%{#session.ChildProfList.getReligion()=='Other'}"><option value="Other" selected><s:text name="global.selectOption.chDet_cwcjjbOth"/></option></s:if>
                                                                                                        <s:else><option value="Other"><s:text name="global.selectOption.chDet_cwcjjbOth"/></option></s:else>
                                                                                                   </select></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBRelSpe" />:</td><td><s:textfield name="religion_other" id="religion_other" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBCast" />:</td><td><%--s:textfield id="caste" name="caste"  value="%{childDetails.caste}"/--%><input type="text" id="caste" name="caste" value="<%=temp_chDet.getCaste()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBAge" />:</td><td><%--s:textfield id="age" name="age" value="%{childDetails.age}"/--%><input type="text" id="age" name="age" value="<%=temp_chDet.getAge()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBGen" />:</td><td>
                            <s:if test="%{#session.ChildProfList.getChildMaster().getGender()=='M'}"><input type="radio" id="gender" name="gender" value="M" checked/><s:text name="global.radLabel.chDet_cwcjjbMale"/><input type="radio" id="gender" name="gender" value="F"/><s:text name="global.radLabel.chDet_cwcjjbFem"/></s:if>
                        <s:else><input type="radio" id="gender" name="gender" value="M"/><s:text name="global.radLabel.chDet_cwcjjbMale"/><input type="radio" id="gender" name="gender" value="F" checked/><s:text name="global.radLabel.chDet_cwcjjbFem"/></s:else>
                            <%--s:radio id="gender" name="gender" list="#{'M':'Male','F':'Female'}" value="%{childDetails.gender}"/--%></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBPerAdd" />:</td><td><%--s:textarea name="permanentAddress" id="addrParents" cols="20" rows="4" value="%{childDetails.addrParents}"/--%><textarea name="permanentAddress" id="addrParents" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'><%=temp_chDet.getAddrParents()%></textarea></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBAddBefCha" />:</td><td><s:textarea  id="presentAddress" name="presentAddress" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBPreInsDet" />:</td><td><s:textarea id="previousInstiDetails" name="previousInstiDetails" cols="20" rows="4"  value="if any" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>  
                    </table><br> 
                    <table>
                        <tr><td align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td><td align="center"><input type="reset" value="<s:text name="global.button.clear"/>"/></td></tr> 
                        
                    </table>
                 
                  
                </s:form>
                 
                    
                    
                    
                </s:if>
                </div>  
                
                
                <div id="dialog-form_ch_cwcjjb_preview" title="<s:text name="js.preview.dpo.cwcjjb"/>">
	<form name="ch_cwcjjb_prevwindow">
             <table border="1">
                    <tr><td align="right"><s:text name="package.label.selectedChProfId" />:</td><td><span id="childProfileId_span"></span></td></tr>
                   <tr><td align="right"><s:text name="package.label.chDetCWCJJBOrdNo" />:</td><td><span id="cwcJjbOrderNo_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBOrdDat" />:</td><td><span id="orderDate_String_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBUndSec" />:</td><td><span id="undersection_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBOffNat" />:</td><td><span id="natureOffence_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBFirsNam" />:</td><td><span id="childName_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBLastNam" />:</td><td><span id="childSurname_span"></span></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBFathNam" />:</td><td><span id="fatherName_span"></span></td></tr>
                  <tr><td align="right"><s:text name="package.label.chDetCWCJJBDob" />:</td><td><span id="dob_String_span"></span></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBReli" />:</td><td><span id="religion_span"></span></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBRelSpe" />:</td><td><span id="religion_other_span"></span></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBCast" />:</td><td><span id="caste_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBAge" />:</td><td><span id="age_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBGen" />:</td><td><span id="gender_span"></span></td></tr>
                     <tr><td align="right"><s:text name="package.label.chDetCWCJJBPerAdd" />:</td><td><span id="addrParents_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBAddBefCha" />:</td><td><span id="presentAddress_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.chDetCWCJJBPreInsDet" />:</td><td><span id="previousInstiDetails_span" ></span></td></tr>  
                 
                
                 </table>  
	</form>
        </div>
                
                
                <!--/s:else-->
            
        </center>
    </body>
</html>
