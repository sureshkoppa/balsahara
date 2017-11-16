<%-- 
    Document   : CH_AdolescenceHistory
    Created on : Jun 23, 2011, 4:25:12 PM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Child Adolescence History</title>
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/CH_AdolescenceHistory_Validation.jsp"></jsp:include> 
        </script>
    </head>  
    <body onload="document.getElementById('dialog-form_CHAdolescence').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.childAdolHis"/></b></font></CAPTION> 
            
           
              <s:form action="CH-Adolescence-Save" method="POST" name="chadol" id="chadol" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chadol"/>
                <table cellspacing="0">
       
                <tr><h3></h3></tr>
                <tr><td align="right"><s:text name="label.profileId"/>:</td>
                    <td>    <select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}</option>
                                   </c:forEach>
                            </select>
                    </td></tr>
                       </table>   
                       <table>
                         <tr><td align="right"><s:text name="label.puberty"/> :</td><td>
                                 <select name="puberty" id="puberty" headerKey="1" headerValue="--<s:text name="global.option.headerKey"/>--">
                                     <option value="<s:text name="option.early"/>"><s:text name="option.early"/></option>
                                     <option value="<s:text name="option.middleAge"/>"><s:text name="option.middleAge"/></option>
                                     <option value="<s:text name="option.late"/>"><s:text name="option.late"/></option>
                                     <option value="NA"><s:text name="option.notApplicable"/></option>
                                 </select> </td>
                         </tr>        
                         <tr><td align="right"><s:text name="label.detDelBehaveAny"/> :</td>
                             <td><select name="deliquentBehaviour" id="deliquentBehaviour" headerKey="1" headerValue="--<s:text name="global.option.headerKey"/>--" onchange="CH_other_dynamic(this,this.id);">
                                     <option value="<s:text name="option.stealing"/>"><s:text name="option.stealing"/></option>
                                     <option value="<s:text name="option.pickPockting"/>"><s:text name="option.pickPockting"/></option>
                                     <option value="<s:text name="option.arrackSell"/>"><s:text name="option.arrackSell"/></option>
                                     <option value="<s:text name="option.drugPeddling"/>"><s:text name="option.drugPeddling"/></option>
                                     <option value="<s:text name="option.pettyOffences"/>"><s:text name="option.pettyOffences"/></option>
                                     <option value="<s:text name="option.violentCrime"/>"><s:text name="option.violentCrime"/></option>
                                     <option value="<s:text name="option.rape"/>"><s:text name="option.rape"/></option>
                                     <option value="<s:text name="option.notApplicable"/>"><s:text name="option.notApplicable"/></option>
                                     <option value="<s:text name="option.vitBehavior"/>"><s:text name="option.vitBehavior"/></option>
                                     <option value="Others"><s:text name="option.other"/></option>
                                 </select>  </td></tr>
                         <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="deliquentBehaviour_other" id="deliquentBehaviour_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                         <tr><td align="right"><s:text name="label.reaForDelBehave"/>:</td>
                             <td><select name="reasonDeliquentBehaviour" id="reasonDeliquentBehaviour" headerKey="1" headerValue="--<s:text name="global.option.headerKey"/>--" onchange="CH_other_dynamic(this,this.id);">
                                     <option value="<s:text name="option.parNeglect"/>"><s:text name="option.parNeglect"/></option>
                                     <option value="<s:text name="option.parOverProt"/>"><s:text name="option.parOverProt"/></option>
                                     <option value="<s:text name="option.parCrimBehave"/>"><s:text name="option.parCrimBehave"/></option>
                                     <option value="<s:text name="option.parInfNegative"/>"><s:text name="option.parInfNegative"/></option>
                                     <option value="<s:text name="option.peetGrpInfluence"/>"><s:text name="option.peetGrpInfluence"/></option>
                                     <option value="<s:text name="option.toBuyDrugsAlcohol"/>"><s:text name="option.toBuyDrugsAlcohol"/></option>
                                     <option value="Others"><s:text name="option.others"/></option>
                                 </select> </td></tr>
                         <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="reasonDeliquentBehaviour_other" id="reasonDeliquentBehaviour_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                         <tr><td align="right"><s:text name="label.habits"/>:</td>
                             <td><select name="habits"  id="habits" multiple="true" size="4" headerKey="1" value="1" headerValue="-- <s:text name="global.option.headerKey"/> --" >
                                     <option value="<s:text name="option.smoking"/>"><s:text name="option.smoking"/></option>
                                     <option value="<s:text name="option.drinking"/>"><s:text name="option.drinking"/></option>
                                     <option value="<s:text name="option.drugAbuse"/>"><s:text name="option.drugAbuse"/></option>
                                     <option value="<s:text name="option.gambling"/>"><s:text name="option.gambling"/></option>
                                     <option value="<s:text name="option.prostitutn"/>"><s:text name="option.prostitutn"/></option>
                                     <option value="<s:text name="option.gutka"/>"><s:text name="option.gutka"/></option>
                                     <option value="<s:text name="option.whitener"/>"><s:text name="option.whitener"/></option>
                                     <option value="<s:text name="option.noneOfAbove"/>"><s:text name="option.noneOfAbove"/></option>
                                 </select></td></tr>
                         <tr><td align="right"><s:text name="label.drugAbuseSpec"/>:</td><td><s:textfield name="drugAbuse" id="drugAbuse" theme="css_xhtml"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                         <tr><td align="right"><s:text name="label.hobbies"/>:</td><td><select name="hobbies"  id="hobbies" multiple="true" size="4" headerKey="1" value="1" headerValue="-- <s:text name="global.option.headerKey"/> --">
                                     <option value="<s:text name="option.watchTV"/>"><s:text name="option.watchTV"/></option>
                                     <option value="<s:text name="option.goToMovies"/>"><s:text name="option.goToMovies"/></option>
                                     <option value="<s:text name="option.readBooks"/>"><s:text name="option.readBooks"/></option>
                                     <option value="<s:text name="option.relActivities"/>"><s:text name="option.relActivities"/></option>
                                     <option value="<s:text name="option.playGames"/>"><s:text name="option.playGames"/></option>
                                     <option value="<s:text name="option.listenMusic"/>"><s:text name="option.listenMusic"/></option>
                                     <option value="<s:text name="option.drawing"/>"><s:text name="option.drawing"/></option>    
                                     <option value="<s:text name="option.dancing"/>"><s:text name="option.dancing"/></option>    
                                     <option value="<s:text name="option.noneOfAbove"/>"><s:text name="option.noneOfAbove"/></option>   
                                          
                                 </select> </td></tr>
                         <tr><td align="right"><s:text name="label.detOfIncomeUtiliz"/>:</td>
                             <td><select name="incomeUtilization"  id="incomeUtilization"  headerKey="1" headerValue="-- <s:text name="global.option.headerKey"/> --">
                                     <option value="<s:text name="option.sentToFamOutSideNeeds"/>"><s:text name="option.sentToFamOutSideNeeds"/></option>
                                     <option value="<s:text name="option.forDressMat"/>"><s:text name="option.forDressMat"/></option>
                                     <option value="<s:text name="option.forGambling"/>"><s:text name="option.forGambling"/></option>
                                     <option value="<s:text name="option.forProst"/>"><s:text name="option.forProst"/></option>
                                     <option value="<s:text name="option.forAlcohol"/>"><s:text name="option.forAlcohol"/></option>
                                     <option value="<s:text name="option.forDrug"/>"><s:text name="option.forDrug"/></option>
                                     <option value="<s:text name="option.forSmoking"/>"><s:text name="option.forSmoking"/></option>    
                                     <option value="<s:text name="option.dancing"/>"><s:text name="option.dancing"/></option>
                                     <option value="<s:text name="option.savings"/>"><s:text name="option.savings"/></option>    
                                 </select> </td></tr>
                                     <tr><td align="right"><s:text name="label.detSavings"/>:</td><td><select name="savingDetails"  id="savingDetails"   headerKey="1" headerValue="-- <s:text name="global.option.headerKey"/> --" onchange="CH_other_dynamic(this,this.id);">
                                                 <option value="<s:text name="option.withEmployers"/>"><s:text name="option.withEmployers"/></option>    
                                                 <option value="<s:text name="option.withFriends"/>"><s:text name="option.withFriends"/></option>
                                                 <option value="<s:text name="option.bankOrPO"/>"><s:text name="option.bankOrPO"/></option>
                                                 <option value="Others"><s:text name="option.others"/></option>
                                               
                                             </select> </td></tr>
                         <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><s:textfield name="savingDetails_other" id="savingDetails_other" theme="css_xhtml" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>             
                         <tr><td align="right"><s:text name="label.durWorkHours"/>:</td><td><select name="workingHours"  id="workingHours"  headerKey="1" headerValue="-- <s:text name="global.option.headerKey"/> --">
                                                <option value="<s:text name="option.lessThan6hours"/>"><s:text name="option.lessThan6hours"/></option>
                                                <option value="<s:text name="option.bet6and8hours"/>"><s:text name="option.bet6and8hours"/></option>
                                                <option value="<s:text name="option.moreThan8hours"/>"><s:text name="option.moreThan8hours"/></option>     
                                               
                                 </select> </td></tr> 
                       </table>
                         <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>    
              </s:form>
                         
                         <div id="dialog-form_CHAdolescence" title="<s:text name="js.preview.childAdlHis"/>">
	<form name="CHAdoloscence_prevwindow">
             <table border="1">
                 <tr><td align="right"><s:text name="global.label.childProID"/>:</td><td><span id="childProfileId_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.puberty"/>:</td><td><span id="puberty_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.detDelBehaveAny"/>:</td><td><span id="deliquentBehaviour_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="deliquentBehaviour_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.reaForDelBehave"/>:</td><td><span id="reasonDeliquentBehaviour_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="reasonDeliquentBehaviour_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.habits"/>:</td><td><span id="habits_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.drugAbuseSpec"/>:</td><td><span id="drugAbuse_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.hobbies"/>:</td><td><span id="hobbies_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.detOfIncomeUtiliz"/>:</td><td><span id="incomeUtilization_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.detSavings"/>:</td><td><span id="savingDetails_span"></span></td></tr>
                <tr><td align="right"><s:text name="global.label.plsSpec"/>:</td><td><span id="savingDetails_other_span"></span></td></tr>
                <tr><td align="right"><s:text name="label.durWorkHours"/>:</td><td><span id="workingHours_span"></span></td></tr>
              
               </table>  
	</form>
        </div>
                         
                         
                         
        </center>
    </body>
</html>