<%-- 
    Document   : CWC_MeetingsMinutes
    Created on : Jul 1, 2011, 11:43:49 AM
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
        <script>
            <jsp:include page="../../javascripts/CWC_MeetingsMins_Validation.jsp"></jsp:include>
        </script>
        <script type="text/javascript">
            function execDiv(v)
            {
                //alert("*****"+v);
                //alert("hi"+v.toString());
                //alert("hi"+v.toSource().appendText("&&&&&"));
                //alert("hi"+v.valueOf());
                  if($( "#orderIssued" ).val()==='-1')
                    {
                        document.getElementById("d2").style.display="none";
                        document.getElementById("d1").style.display="none";
                        document.getElementById("d3").style.display="none";
                        document.getElementById("d4").style.display="none";
                        //$("#d1").slideDown(10, function(){});
                    }
               else
                if($( "#orderIssued" ).val()==='Interviewagian')
                    {
                        document.getElementById("d2").style.display="none";
                        document.getElementById("d1").style.display="block";
                        document.getElementById("d3").style.display="none";
                        document.getElementById("d4").style.display="none";
                       // $("#d1").slideDown(10, function(){});
                    }
               else if($( "#orderIssued" ).val()==='transfer')
                    {
                          document.getElementById("d3").style.display="none";
                          document.getElementById("d4").style.display="none";
                          document.getElementById("d1").style.display="none";
                          document.getElementById("d2").style.display="block";
                          //$("#d2").slideDown(10, function(){});
                    }
               else if($( "#orderIssued" ).val()==='handover')
                    {
                          document.getElementById("d3").style.display="block";
                          document.getElementById("d4").style.display="none";
                          document.getElementById("d1").style.display="none";
                          document.getElementById("d2").style.display="none";
                          //$("#d2").slideDown(10, function(){});
                    }
                else if($( "#orderIssued" ).val()==='callfordpo')
                    {
                          document.getElementById("d3").style.display="none";
                          document.getElementById("d4").style.display="block";
                          document.getElementById("d1").style.display="none";
                          document.getElementById("d2").style.display="none";
                          //$("#d2").slideDown(10, function(){});
                    }    
             /*    else if($( "#orderIssued" ).val()==="handover")
                    {
                document.getElementById("d1").innerHTML="<p>division tag</p>:handover";
                    }
                else if($( "#orderIssued" ).val()==="otherstate")
                    {
                document.getElementById("d1").innerHTML="<p>division tag</p>:otherstate";
                    }
                 else if($( "#orderIssued" ).val()==="callfordpo")
                    {
                document.getElementById("d1").innerHTML="<p>division tag</p>:callfordpo";
                    } */   
            }
        </script>    
    </head>
    <body onload="document.getElementById('dialog-form_CWCMeetingsminutes').style.visibility='hidden'">
    
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.CWCMeetMinsReg"/>(Form32)</b></font></CAPTION> 
            
           
              <s:form action="CWCMeetings-Save" method="POST" name="cwcmeets" id="cwcmeets" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="cwcmeets"/>
                <table cellspacing="0">
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinMeetDate" />:</td><td><s:textfield name="dateofcwcmeeting" id="datepicker" readonly="true" /></td></tr>
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinVenue" />:</td><td><s:textfield name="venue" id="venue" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinMemNo" />:</td><td><s:textfield name="noOfMembers" id="noOfMembers" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                                <tr><td align="right">CWC District:</td><td><select name="cwcdistrict">
                                            <option value="cwcadilabad">CWC Adilabad</option>
                                            <option value="cwcjagityal">CWC Jagityal</option>
                                            <option value="cwchyderabad">CWC Hyderabad</option>
                                            <option value="cwcvikarabad">CWC Vikarabad</option>
                                            <option value="cwcwarangal">CWC Warangal</option>
                            </select></td></tr>
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinChaPer" />:</td><td><s:textfield name="designation" id="designation" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                </table>   
                  <table border="1" id="CWCMeet">
                         <thead>
                             <tr><th><s:text name="package.label.CWCMeetMinSelect" /></th> <th><s:text name="package.label.CWCMeetMinRecs" /></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                             
                        <td>
                            <table> 
                                <%--                                     
                       <tr><th><s:text name="package.label.CWCMeetMinChProfId" /></th><td><select name="childProfileId_cwc" id="childProfileId_cwc">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${childrenListInAHome}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
</select>--%><%--s:select name="childProfileId_cwc" id="childProfileId_cwc" labelposition="left" headerKey="1" headerValue="--Please Select--" list="childrenListInAHome" listKey="childProfileId" listValue="%{childName+'-->'+childProfileId}"/--%>
                                <%--   </td></tr>
                                --%>
                       
                       <tr><th><s:text name="package.label.CWCMeetMinObser" /></th><td><s:textarea id="observations" name="observations" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="package.label.CWCMeetMinActTake" /></th><td><s:textarea id="actiontobeTaken" name="actiontobeTaken" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                        <tr><th><s:text name="package.label.CWCMeetMinFollUp" /></th><td><s:textarea id="followUp" name="followUp" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                        <tr><th><s:text name="package.label.CWCMeetMinOrdIssu" /></th><td><select id="orderIssued" name="orderIssued" onchange="execDiv(this)">
                              <option value="1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='package.selectOption.CWCMeetMinICAVal'/>"><s:text name='package.selectOption.CWCMeetMinICA'/></option>
                              <option value="<s:text name='package.selectOption.CWCMeetMinTOHVal'/>"><s:text name='package.selectOption.CWCMeetMinTOH'/></option>
                              <option value="<s:text name='package.selectOption.CWCMeetMinHOPVal'/>"><s:text name='package.selectOption.CWCMeetMinHOP'/></option>
                              <option value="<s:text name='package.selectOption.CWCMeetMinCDRVal'/>"><s:text name='package.selectOption.CWCMeetMinCDR'/></option>
                                </select><%--s:select id="orderIssued" name="orderIssued" headerKey="1" headerValue="---Please select----" list="#{'Interviewagian':'Interview the child again','transfer':'Transfer to other home','handover':'Hand over to parents','otherstate':'Transfer to other State','callfordpo':'Call for DPO Report'}"/--%></td></tr>
                            </table>       
                         
                            <div id="d1" style="display: none">
                                <centre><u>ORDER OF PLACEMENT OF A CHILD IN AN INSTITUTION(FORM 19)</u>
                                    <br/>
                                    (Children’s Home/Fit Facility/SAA)
                                    </centre>
                                
                               <br/> To,<br/>
The Officer in charge,<br/>
<br/>Whereas on the<input type="text" name="cipiDay"/>day of 20<input type="text" name="cipiYear"/>, <input type="text" name="cName"/>(Name of the child), son/ daughter
of<input type="text" name="cpFat"/>aged<input type="text" name="cAge"/>,residing at <input type="text" name="cVil"/> being in care and protection under the Juvenile Justice(Care and Protection) Act 2015 is ordered by the Child Welfare Committee....to be kept in the Children's Home/SAA/Fit Facility..... for a period of <input type="text" name="cpPer"/>
<br/>
This is to authorize and require you to receive the said child into your charge, and to keep him in
the Children's Home/Fit Facility/SAA<input type="text" name="cpHome"/> for the aforesaid order to be carried into execution according to law.
The concerned official shall upload the details in case of an orphan or abandoned child in the TrackChild/ relevant Web Portal.<br/>
Given under my hand and the seal of Child Welfare Committee.<br/>
This <input type="text" name="cpDay"/> day of <input type="text" name="cpMon"/> 20<input type="text" name="cpYr"/>
<%--
<font style="font-size: x-large;">
                                 (Signature)
                                 Chairperson/Member
                                 Child Welfare Committee
                             </font>
--%>
                            </div>
                            <div id="d2" style="display: none">
                                <u> SUPERVISION ORDER</u><br/>
                            
                            </div>
                             <div id="d3" style="display: none">
                             <u>UNDERTAKING BY THE PARENT OR GUARDIAN OR 'FIT PERSON'(FORM21 & FORM36)</u><br/>
I..<input type="text" name="cpFat"/>..resident of House no..<input type="text" name="cpNd"/>...Street ...<input type="text" name="cpPs"/>.......Village/Town..<input type="text" name="cVil"/>...District..<input type="text" name="cpDD"/>...State...<input type="text" name="cpSt"/>....do hereby declare that I am willing to take charge of(name of the child)..<input type="text" name="cName"/>....Aged
.<input type="text" name="cAge"/>..under the orders of the Child Welfare Committee......subject to the following terms and conditions:
<ol type="1">
    <li>If his conduct is unsatisfactory I shall at once inform the Committee</li>
    <li>I shall do my best for the welfare and education of the said child as long as he remains in my charge and 
        shall make proper provision for his maintenance</li>
    <li>In the event of his/her illness,he shall have proper medical attention in the nearest hospital</li>
    <li>I agree to adhere to the conditions that may be imposed by the Committee from time to time and also too keep the Committee informed about the compliance with the conditions</li>
    <li>I undertake to produce him/her before the Committee as and when required</li>
    <li>I shall inform the Committee immediately if the child goes out of my charge or control</li>
    
</ol>
Dated this <input type="text" name="cpDay"/>day of <input type="text" name="cpMon"/>20<input type="text" name="cpYr"/>
                            </div>
                        
                            <div id="d4" style="display: none">   
                                Form 21<br/>
                       [Rule 19(3)]<br/>
ORDER FOR SOCIAL INVESTIGATION REPORT OF CHILD IN NEED OF CARE AND PROTECTION<br/>
To<br/>
Child Welfare Officer/ Social Worker/Case Worker/ Person in-charge of Home/ representative of
Non- Governmental Organization<br/><br/>
Whereas a report under section 31 (2) of the Juvenile Justice (Care and Protection of Children) Act,
2015 has been received from <input type="text" name="soOrd"/> in respect of (name of the child)<input type="text" name="soName"/>, aged
(approximate)<input type="text" name="soAge"/>, son/daughter of <input type="text" name="soFat"/>residing at<input type="text" name="soVil"/>, who has been
produced before the Committee under section 31 of the Juvenile Justice (Care and Protection of Children)
Act, 2015.<br/><br/>
You are hereby directed to conduct Social Investigation as per Form 22 for the above child. You are
directed to enquire into socio economic and family background of the said child.<br/>
You are directed to submit the Social Investigation Report on or before <input type="text" name="soDate"/> (date).<br/>
Dated this <input type="text" name="soDay"/>.day of <input type="text" name="soMon"/>..20<input type="text" name="soYr"/><br/>
(Signature)<br/>
Chairperson/Member<br/>
Child Welfare Committee
                            </div>
                        <table border="0" id="CWCMeet">         
                        <tr><td colspan="2">Signature</td></tr>
                       <tr><td>Signed before Child Welfare Committee</td></tr>
                            </table>
                       </td>
                     </tr>
                 </table>
                            
                            
                     <INPUT type="button" value="<s:text name="global.button.AddRow"/>" onclick="addRow('CWCMeet')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="global.button.DeleteRow"/>" onclick="deleteRow('CWCMeet')"/>
              
                     
                     
                             <center> <input type="submit" value="<s:text name="global.button.submit"/>"/><input type="reset" value="<s:text name="global.button.clear"/>"/></center>
              </s:form>
                      
                 
                             
                    <div id="dialog-form_CWCMeetingsminutes" title="<s:text name="global.heading.CWCMeetMinsReg"/> <s:text name="global.heading.preview"/>">
	<form name="CWCMeetingsminutes_prevwindow">
              <s:text name="package.label.CWCMeetMinMeetDate" />:<span id="dateofcwcmeeting_span"></span><br>
              <s:text name="package.label.CWCMeetMinVenue" />:<span id="venue_span"></span><br>
              <s:text name="package.label.CWCMeetMinMemNo" />:<span id="noOfMembers_span"></span><br>
              <s:text name="package.label.CWCMeetMinChaPer" />:<span id="designation_span"></span>
	<table border="1" id="cwcmeetings_span">
            <thead>
             <tr>
                 <th><s:text name="package.label.CWCMeetMinSNO" /></th>
                <th><s:text name="package.label.CWCMeetMinChProfId" /></th>
                <th><s:text name="package.label.CWCMeetMinObser" /></th>
                <th><s:text name="package.label.CWCMeetMinActTake" /></th>
                <th><s:text name="package.label.CWCMeetMinFollUp" /></th>
                <th><s:text name="package.label.CWCMeetMinOrdIssu" /></th>
                <th><s:text name="package.label.CWCMeetMinOrderNo" /></th>
                 <th><s:text name="package.label.CWCMeetMinRemarks" /></th>
              </tr>
            </thead>
            <tbody>
             <tr>
             </tr>
            </tbody>
        </table>
	</form>
        </div>          
                             
         
                             
                             
        </center>
    </body>
</html>

