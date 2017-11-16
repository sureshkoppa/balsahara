<%-- 
    Document   : ICP_PreRelease
    Created on : 11 Oct, 2012, 1:03:25 PM
    Author     : suresh
--%>



  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<html>
   
    <head>
         <sx:head/>
          <script type="text/javascript">            
              <jsp:include page="../../javascripts/ICP_PreRelease_Valid.jsp"></jsp:include> 
          </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual Care Plan Pre Release Details</title>
        <script>
            function fin_trans(f1)
            {
               // alert("inside");
               var value = f1.value;
               //alert("---"+value);
              
               if (value=='fr') {
                        document.getElementById("icpTrans_div").style.visibility="hidden";
                        $("#icpTrans_div").slideUp("fast");	//Slide Up Effect
               }
               else if(value=='tr')
                   {
                        document.getElementById("icpTrans_div").style.visibility="visible";
                        $("#icpTrans_div").slideDown("fast");	//Slide Up Effect 
                           
                     
                     
                   }
               }
                function start()
               {
                   //alert("start");
                   //document.getElementById("release_type").value='fr';
                   document.getElementById("icpTrans_div").style.visibility="hidden";
                   $("#icpTrans_div").slideUp("fast");	//Slide Up Effect
              
                   
               }
        </script>
        
        
    </head>  

 <body onload="javascript:start();document.getElementById('dialog-form_ICPPre_preview').style.visibility='hidden';">
<center>
    <h1><caption><s:text name="global.heading.preRelease"/></caption></h1>
                        
    <s:form name="icp_preRelease" action="ICP-PreRelease-Save" method="POST" theme="css_xhtml" id="icp_preRelease">
                            <s:hidden name="formName" value="icp_preRelease"/>
                            
                            <table cellspacing="0">
              
                
                            <tr><td align="right"><s:text name="label.profileId"/>:</td>
                                <td><select name="childProfileId" id="childProfileId" >
                                        <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                        <c:forEach items="${childrenListInAHome}" var="obj">
                                            <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                        </c:forEach>  
                                    </select> 
                                </td></tr>
                            </table>     
                 <table>
                      <tr><td colspan="2" align="center">
                              <input type="radio"  id="releaseTypefr" name="releaseType" theme="css_xhtml" value="fr" onclick="javascript:fin_trans(this);"  checked="true"/><s:text name="global.icp.release"/>
                              <input type="radio"  id="releaseTypetr" name="releaseType" theme="css_xhtml" value="tr" onclick="javascript:fin_trans(this);" /><s:text name="global.icp.transfer"/>
                      </td></tr>
                    </table>    
                             <div id="icpTrans_div">
                    <table>       
                        <tr><td align="right"><s:text name="global.label.detailsPlaceTrans"/></td><td><s:textarea name="detailsPlaceTrans" id="detailsPlaceTrans" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                        <tr><td align="right"><s:text name="global.label.concernAuthResp"/></td><td><s:textarea name="concernAuthority" id="concernAuthority" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    </table>  
                       </div>
                    
                    
                    <table> 
                       <tr><td align="right"><s:text name="global.label.detailPlaDiff"/>:</td><td><s:textarea name="detailsPlacement" id="detailsPlacement" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><td align="right"><s:text name="global.label.dateOfRelTrans"/>:</td><td><s:textfield name="dateRelease_1" id="datepicker" readonly="true" /></td></tr>
                       <tr><td align="right"><s:text name="global.label.dateOfRepart"/>:</td><td><s:textfield name="dateRepatriation_1" id="datepicker1" readonly="true"/></td></tr> 
                    
                       <tr><td align="right"><s:text name="global.label.reqEscortIfReq"/>:</td><td><s:textarea name="requisitionEscort" id="requisitionEscort" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><td align="right"><s:text name="global.label.identOfEscort"/>:</td><td><s:textarea name="identifyEscort" id="identifyEscort" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><td align="right"><s:text name="global.label.recomRehPlanIncPlace"/>:</td><td><s:textarea name="rehabilationPlan" id="rehabilationPlan" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><td align="right"><s:text name="global.label.sponReq"/> :</td><td><s:textarea name="sponserReqment" id="sponserReqment" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><td align="right"><s:text name="global.label.identPOCWetc"/>:</td>
                           <td align="center"><table>
                                    <tr><td><input type="radio"  id="identOffPostrel" name="identOffPostrel" theme="css_xhtml"  value="<s:text name="global.label.po"/>"  /><s:text name="global.label.po"/></td></tr>
                                    <tr><td><input type="radio"  id="identOffPostrel" name="identOffPostrel" theme="css_xhtml" value="<s:text name="global.label.cw"/>"/><s:text name="global.label.cw"/></td></tr>
                                    <tr><td><input type="radio"  id="identOffPostrel" name="identOffPostrel" theme="css_xhtml" value="<s:text name="global.label.sw"/>"  /><s:text name="global.label.sw"/></td></tr>
                                    <tr><td><input type="radio"  id="identOffPostrel" name="identOffPostrel" theme="css_xhtml" value="<s:text name="global.label.ngo"/>" /><s:text name="global.label.ngo"/></td></tr>
                              </table>
                          </td></tr>
                      <tr><td align="right"><s:text name="global.label.mouWtNGOforPRel"/> :</td><td><s:textarea name="mouPostrel" id="mouPostrel" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.identPOCWetc"/> :</td><td><s:textarea name="identOfSponser" id="identOfSponser" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr> 
                      <tr><td align="right"><s:text name="global.label.mouSaOrIa"/> :</td><td><s:textarea name="mouSponser" id="mouSponser" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.detOfSaveAcc"/>:</td><td><s:textarea name="detailsSavAcc" id="detailsSavAcc" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.detChildEarn"/>:</td><td><s:textarea name="detailsEarnBel" id="detailsEarnBel" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.detAwaRewa"/>:</td><td><s:textarea name="detailsAwards" id="detailsAwards" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.optOfChild"/>:</td><td><s:textarea name="optionChild" id="optionChild" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      <tr><td align="right"><s:text name="global.label.anyOtherInfo"/>:</td><td><s:textarea name="anyOtherInfo" id="anyOtherInfo" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                      
                 </table>
                 
            
            <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>
        
                  
                 
                </s:form> 
                  <br/><br/>
                  
                  <div id="dialog-form_ICPPre_preview" title="ICP Pre Release Preview">
	<form name="icppre_prevwindow">
            <table border="1">
                <tr><td align="right"><s:text name="label.profileId"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.releaseType"/>:</td><td><span id="releaseType_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.detailsPlaceTrans"/>:</td><td><span id="detailPlTrans_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.concernAuthResp"/>:</td><td><span id="concAuthRes_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.detailPlaDiff"/>:</td><td><span id="placeEarns_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.dateOfRelTrans"/>:</td><td><span id="dateRel_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.dateOfRepart"/>:</td><td><span id="dateReptr_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.reqEscortIfReq"/>:</td><td><span id="reqEssIfReq_span"></span></td></tr>
                
                <tr><td align="right"><s:text name="global.label.identOfEscort"/>:</td><td><span id="identEss_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.recomRehPlanIncPlace"/> :</td><td><span id="reccRehab_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.sponReq"/>:</td><td><span id="sponReq_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.identPOCWetc"/>:</td><td><span id="idenSpl_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.mouWtNGOforPRel"/>:</td><td><span id="ngoMou_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.identPOCWetc"/>:</td><td><span id="idenOff_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.mouSaOrIa"/>:</td><td><span id="sponMou_span"></span></td></tr>      
                <tr><td align="right"><s:text name="global.label.detOfSaveAcc"/>:</td><td><span id="detSave_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.detChildEarn"/>:</td><td><span id="childEarn_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.detAwaRewa"/>:</td><td><span id="awarRewa_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.optOfChild"/>:</td><td><span id="optChild_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.anyOtherInfo"/>:</td><td><span id="othInfo_span"></span></td></tr>
            </table>
        </form>
           </div>
             
</center>
 </body>
</html>                            