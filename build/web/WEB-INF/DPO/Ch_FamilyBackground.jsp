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
        //document.getElementById('div_form').style.visibility='hidden';
        dojo.event.topic.publish("show_homes");
        }
        
          }
          
     function show_details2(val){

        if(val.value!=1){
            
            dojo.event.topic.publish("show_childpid");
        }
           
        
             }
       function show_details3(val){
          //    alert(val.value);
           document.getElementById('div_form').style.display='block';
           document.getElementById('child_id').value=val.value;
             
        
             }
             
             <jsp:include page="../../javascripts/SIChildbackgroundDetails_validation.jsp"></jsp:include>
 </script>
       
    <body onload="document.getElementById('dialog-form_ch_background_preview').style.visibility='hidden'">
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.chFamBackDet"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="sifbg" action="SIFBG-Save" method="POST"  theme="css_xhtml" id="f1"> 
                    
                    
       
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
            
                  <td><s:url id="d_url" action="DPO-FB-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                   <td><s:text name="package.label.enquiryRepoSelProfId" />:  </td>
            
                  <td><s:url id="d_url1" action="DPO-FB-FetchChildDetail"/>
                  
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
                 <div id="div_form" style="display:none"> 
                <!--s:else-->
                <%--s:if test="userDistrictId != null"--%>
                <s:form action="SIFBG-Save" method="POST" name="sifbg1" id="sifbg1" theme="css_xhtml"> <!--new action = SICD-Save-->
                                   <!--s:hidden name="formname" value="sicd"/-->
                    <%--session.setAttribute("formname", "sifmd1");--%>
                    <s:hidden name="formname" value="sifbg1"/>
                    <s:hidden id="child_id" name="child_id"/>
                               
                        <!--s:textfield name="childProfileId" value="%{childProfileId}"/-->
                    <table border="1">
                <tr><td align="right"><s:text name="package.label.ifMarrRelePat" />:</td><td><s:textfield id="marriedPerticulars" name="marriedPerticulars" labelposition="left" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.interRelaAgen" />:</td><td><s:textfield name="relativesIntrested" id="relativesIntrested" labelposition="left" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.attToRelMorEth1" /><br/><s:text name="package.label.attToRelMorEth2" />:</td><td><s:textfield id="attitudeReligion" name="attitudeReligion" labelposition="left" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.socEcoStat" />:</td><td><s:textarea id="socialStatus"  name="socialStatus" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.famDeliqReco" />:</td><td><s:textarea id="delinquencyFamily"  name="delinquencyFamily" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.preLivinCondi" />:</td><td><s:textarea  id="presentLivingCondition" name="presentLivingCondition" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.pareToChRela1" /><br/><s:text name="package.label.pareToChRela2" /><br/><s:text name="package.label.pareToChRela3" />:</td><td><s:textarea id="relationBwParents"  name="relationBwParents" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                <tr><td align="right"><s:text name="package.label.othImpFact" />:</td><td><s:textarea  id="otherFacts" name="otherFacts" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
         <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td></tr>
        </table>
                
                </s:form>
                 </div>      
                
        <div id="dialog-form_ch_background_preview" title="<s:text name="js.preview.dpo_chFamBg"/>">
	<form name="ch_background_prevwindow">
             <table border="1">
                    <tr><td align="right"><s:text name="package.label.selectedChProfId" />:</td><td><span id="childProfileId_span"></span></td></tr>
                    <tr><td align="right"><s:text name="package.label.ifMarrRelePat" />:</td><td><span id="marriedPerticulars_span" ></span></td></tr>
                <tr><td align="right"><s:text name="package.label.interRelaAgen" />:</td><td><span id="relativesIntrested_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.attToRelMorEth1" /><br/><s:text name="package.label.attToRelMorEth2" />:</td><td><span id="attitudeReligion_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.socEcoStat" />:</td><td><span id="socialStatus_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.famDeliqReco" />:</td><td><span id="delinquencyFamily_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.preLivinCondi" />:</td><td><span id="presentLivingCondition_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.pareToChRela1" /><br/><s:text name="package.label.pareToChRela2" /><br/><s:text name="package.label.pareToChRela3" />:</td><td><span id="relationBwParents_span"></span></td></tr>
                <tr><td align="right"><s:text name="package.label.othImpFact" />:</td><td><span id="otherFacts_span"></span></td></tr>
                 
                
                 </table>  
	</form>
        </div>
                
                <%--/s:if--%>
                  
                <!--/s:else-->
            
        </center>
    </body>
</html>
