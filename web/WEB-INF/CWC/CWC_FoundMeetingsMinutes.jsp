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
            <CAPTION><font size="3"><b><s:text name="global.heading.CWCMeetMinsReg"/></b></font></CAPTION> 
            
           
              <s:form action="CWCMeetings-Save" method="POST" name="cwcmeets" id="cwcmeets" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="cwcmeets"/>
                <table cellspacing="0">
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinMeetDate" />:</td><td><s:textfield name="dateofcwcmeeting" id="datepicker" readonly="true" /></td></tr>
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinVenue" />:</td><td><s:textfield name="venue" id="venue" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinMemNo" />:</td><td><s:textfield name="noOfMembers" id="noOfMembers" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                    <tr><td align="right"><s:text name="package.label.CWCMeetMinChaPer" />:</td><td><s:textfield name="designation" id="designation" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                </table>   
                  <table border="1" id="CWCMeet">
                         <thead>
                             <tr><th><s:text name="package.label.CWCMeetMinSelect" /></th> <th><s:text name="package.label.CWCMeetMinRecs" /></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                             
                        <td>
                            <table> 
                                                                  
                       <tr><th><s:text name="package.label.CWCMeetMinChProfId" /></th><td><select name="childProfileId_cwc" id="childProfileId_cwc">
                                   <option value="1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${childrenListInAHome}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--s:select name="childProfileId_cwc" id="childProfileId_cwc" labelposition="left" headerKey="1" headerValue="--Please Select--" list="childrenListInAHome" listKey="childProfileId" listValue="%{childName+'-->'+childProfileId}"/--%></td></tr>
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
                                <u>  ORDER OF PLACING A CHILD IN CHILD CARE INSTITUTION PENDING INQUIRY</u><br/>
                                To
The Officer in charge
Whereas on the<input type="text" name="cipiDay"/>day of 20<input type="text" name="cipiYear"/>, <input type="text" name="cName"/>(Name of the child), son/ daughter
of<input type="text" name="cpFat"/>aged<input type="text" name="cAge"/>,residing at <input type="text" name="cVil"/> alleged to be involved in FIR/DD
No. <input type="text" name="cpDD"/> PS <input type="text" name="cpPs"/>is ordered by the Juvenile Justice Board to be kept in the Child
Care Institution (Observation Home/ Place of Safety) namely<input type="text" name="cpName"/> for a period of <input type="text" name="cpPer"/>

This is to authorize and require you to receive the said child into your charge, and to keep him in
the Child Care Institution (Observation Home/ Place of Safety)<input type="text" name="cpHome"/> and to produce
the child as and when directed by the Board, for the aforesaid order to be carried into execution according
to law.
Next date of hearing<input type="text" name="cpNd"/>
Given under my hand and the seal of Juvenile Justice Board
This <input type="text" name="cpDay"/> day of <input type="text" name="cpMon"/> 20<input type="text" name="cpYr"/>

                             
                            </div>
                            <div id="d2" style="display: none">
                                <u> SUPERVISION ORDER</u><br/>
                              When the child is placed under the care of a fit person/fit institution/Probation Officer pending
inquiry FIR/DD No. <input type="text" name="soDDNo"/> of<input type="text" name="soBank"/> 20……<input type="text" name="soYear"/>PS<input type="text" name="soPS"/>
Whereas <input type="text" name="soName"/> (name of the child) is alleged to have committed an offence and is
placed under the care of (Name)<input type="text" name="soCareName"/> (address)<input type="text" name="soCareAddr"/>on
executing a bond by the said …………<input type="text" name="soSaidPer"/> and the Board is satisfied that it is expedient to
deal with the said child by making an order placing him/her under supervision.
                            </div>
                             <div id="d3" style="display: none">
                              <u> UNDERTAKING BY THE PARENT OR GUARDIAN OR FIT PERSON GIVEN INTERIM CUSTODY
PENDING INQUIRY</u><br/>
                                Whereas I,<input type="text" name="pname" />(Name) resident of House no<input type="text" name="phouse" length="5"/> Street <input type="text" name="pstreet" length="5"/>
Village/Town<input type="text" name="pvilTwn" length="5"/>District<input type="text" name="pdis" length="5"/>State<input type="text" name="pstate" length="5"/>do hereby declare that I am willing
to take charge of (name of the child)…………<input type="text" name="pchild"/> aged<input type="text" name="page"/> under the orders of the Board.
                            </div>
                            
                            <div id="d4" style="display: none">
                                <u>ORDER FOR SOCIAL INVESTIGATION REPORT</u><br/>
FIR No<input type="text" name="sirFir"/>
U/Sections<input type="text" name="sirSec"/>
Police Station<input type="text" name="sirPs"/>
To,
Probation Officer/ Person in-charge of Voluntary or Non-Governmental Organization.
Whereas <input type="text" name="sirName"/>(Name of the Child), son/daughter of<input type="text" name="sirFat"/> age <input type="text" name="sirAge"/>residing
at<input type="text" name="sirPl"/> has been produced before the Board.
You are hereby directed to enquire into the social antecedents, family background and
circumstances of the alleged offence by the said child and submit your social investigation report on or
before <input type="text" name="sirRDt"/>or within such time as allowed to you by the Board.
You are also hereby directed to consult an expert in child psychology, psychiatric treatment or
counselling or any other expert for their expert opinion if necessary and submit such report along with your
Social Investigation Report.
Dated this <input type="text" name="sirDay"/>day of <input type="text" name="sirthDt"/>20<input type="text" name="sirYr"/>
                            </div>
                        <table border="0" id="CWCMeet">         
                        <tr><th><s:text name="package.label.CWCMeetMinOrderNo" /></th><td><s:textfield id="cwcJjbOrderNo" name="cwcJjbOrderNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                       <tr><th><s:text name="package.label.CWCMeetMinRemarks" /></th><td><s:textarea id="remarks" name="remarks" rows="2" cols="15" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
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

