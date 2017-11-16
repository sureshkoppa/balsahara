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
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <script type="text/javascript">            
               <jsp:include page="../../javascripts/Discharge_validation.jsp"></jsp:include> 
            </script>
         <sx:head/>
       <script>
    
          
          function show_details1(val)
          {
             if(val.value!='non')
            {
            dojo.event.topic.publish("show_districts_homes");
            } 
              
          }
     
 </script>
       
        <script>
    
         $(document).ready(function(){
	$("#parents").css("display","none");
        $("#otherstate").css("display","none");
        $("#ngo").css("display","none");
        $("#afterCare").css("display","none");
        $("#islamic").css("display","none");
        $("#home").css("display","none");
        $("#district").css("display","none");
        $("#othercountry").css("display","none");
            
        $("#actionTaken").change(function(){
         if ($("#actionTaken").val()=='transfer') {
             $("#district").css("display","block");
        $("#home").css("display","block");
               $("#parents").slideUp("fast");	//Slide Up Effect
            $("#otherstate").slideUp("fast");
            $("#ngo").slideUp("fast"); //anupam
            $("#afterCare").slideUp("fast"); //anupam
            $("#islamic").slideUp("fast"); //anupam
            $("#othercountry").css("display","none");
            
            dojo.event.topic.publish("show_districts");
        }
           
       else if ($("#actionTaken").val()=='handover' || $("#actionTaken").val()=='releaseOnBail') {
            $("#parents").slideDown("fast");	//Slide Up Effect
            $("#otherstate").slideUp("fast");
            $("#ngo").slideUp("fast"); //anupam
             $("#afterCare").slideUp("fast"); //anupam
            $("#islamic").slideUp("fast"); //anupam
              $("#district").css("display","none");
              $("#home").css("display","none");
              $("#othercountry").css("display","none");
        }
        else if ($("#actionTaken").val()=='otherstate') {
            $("#parents").slideUp("fast");	//Slide Up Effect
            $("#otherstate").slideDown("fast");
            $("#ngo").slideUp("fast"); //anupam
             $("#afterCare").slideUp("fast"); //anupam
            $("#islamic").slideUp("fast"); //anupam
          $("#district").css("display","none");
              $("#home").css("display","none");
              $("#othercountry").css("display","none");
        }
        //anupam added for ngo START
        else if ($("#actionTaken").val()=='ngo') {
            $("#parents").slideUp("fast");//anupam
             $("#afterCare").slideUp("fast"); //anupam
            $("#islamic").slideUp("fast"); //anupam
            //$("#otherstate").slideUp("fast");	//Slide Up Effect
            $("#otherstate").css("display","none");	//Slide Up Effect
            $("#ngo").slideDown("fast");
          $("#district").css("display","none");
              $("#home").css("display","none");
              $("#othercountry").css("display","none");
        }
        //anupam added for ngo END
        
        //anupam added for after care START
        else if ($("#actionTaken").val()=='After Care Home') {
            $("#parents").slideUp("fast");//anupam
             $("#ngo").slideUp("fast"); //anupam
            $("#islamic").slideUp("fast"); //anupam
            //$("#otherstate").slideUp("fast");	//Slide Up Effect
            $("#otherstate").css("display","none");	//Slide Up Effect
            $("#afterCare").slideDown("fast");
          $("#district").css("display","none");
              $("#home").css("display","none");
              $("#othercountry").css("display","none");
        }
        //anupam added for after care END
        
        //anupam added for after care START
        else if ($("#actionTaken").val()=='Islamic Centre') {
            $("#parents").slideUp("fast");//anupam
             $("#ngo").slideUp("fast"); //anupam
            $("#afterCare").slideUp("fast"); //anupam
            //$("#otherstate").slideUp("fast");	//Slide Up Effect
            $("#otherstate").css("display","none");	//Slide Up Effect
            $("#islamic").slideDown("fast");
          $("#district").css("display","none");
              $("#home").css("display","none");
              $("#othercountry").css("display","none");
        }
        
        else if ($("#actionTaken").val()=='othercountry') {
            $("#parents").slideUp("fast");//anupam
             $("#ngo").slideUp("fast"); //anupam
            $("#afterCare").slideUp("fast"); //anupam
            //$("#otherstate").slideUp("fast");	//Slide Up Effect
            $("#otherstate").css("display","none");	//Slide Up Effect
            $("#islamic").slideUp("fast");
            $("#othercountry").slideDown("fast");
          $("#district").css("display","none");
              $("#home").css("display","none");
              
        }
        
        
        //anupam added for after care END
        
        else if ($("#actionTaken").val()=='non') {
            $("#parents").css("display","none");//anupam
             $("#ngo").css("display","none"); //anupam
            $("#afterCare").css("display","none"); //anupam
            $("#otherstate").css("display","none");	//Slide Up Effect
            $("#otherstate").css("display","none");	//Slide Up Effect
            $("#islamic").css("display","none");
          $("#district").css("display","none");
              $("#home").css("display","none");
              $("#othercountry").css("display","none");
        }
     });            
});
         
    </script>
    </head>
    <body onload="document.getElementById('dialog-form_Discharge_preview').style.visibility='hidden'">
       
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.disReg"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
                <s:form name="dischargeForm" action="CW-Discharge-Action" method="post"  theme="css_xhtml" id="dischargeForm"> <!--old action = SICD-Save-->
                    
                    <s:hidden name="formName" value="discharge"/>
       
                <table>
                    
                    <tr>
                        <td><s:text name="label.childNameAndProId"/></td>
                        <td><select name="childIdToBeTransDis" id="childIdToBeTransDis" >
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                   </c:forEach>
                            </select>  </td>
                          
        </tr>
                  
         
           <tr>
            <td><s:text name="label.actionTaken"/></td>
            <td>
                <select id="actionTaken" name="actionTaken" headerKey="non" headerValue="---<s:text name="global.option.headerKey"/>----">
                    <option value="non">---Please select an action---</option>
                    <option value="transfer"><s:text name="label.transOthHome"/></option>
                    <option value="handover"><s:text name="label.handOverParents"/></option>
                    <option value="otherstate"><s:text name="label.transToOthState"/></option>
                    <option value="ngo"><s:text name="label.transToNgoHome"/></option>
                    <option value="After Care Home"><s:text name="label.stateAftCareHome"/></option>
                    <option value="Islamic Centre"><s:text name="label.islamicCenter"/></option>
                    <option value="othercountry">Transfer to other country</option>
                    <option value="releaseOnBail">Release on bail</option>
                    
                </select> 
                    
            </td>
        </tr>     </table>
                <table id="district">
        <tr>
            <td><s:text name="option.selDist"/>:</td>
            <td>
                
                <s:url id="d_url" action="CW-Discharge-Transfer_other"/> 
                  
                      <s:div id="details" formId="dischargeForm"/>   
                      <sx:bind targets="details" href="%{d_url}" listenTopics="show_districts" formId="dischargeForm" >
                      </sx:bind>
                      
                      
                
              
                
            </td>
        </tr></table>
                  <table id="home">
        <tr>
             <tr>
                 <td><s:text name="option.selHome"/>:</td>
            <td>
               <%-- <s:url id="d_url1" action="CW-Discharge-FetchHomeDetail"/> --%>
               <%--
               <s:url id="d_url1" action="CW-Discharge-FetchHomesMap"/>               
                  
                      <sx:div id="details1" href="%{d_url1}" listenTopics="show_districts_homes" formId="dischargeForm" showLoadingText="true">
                </sx:div> 
               --%>
               
               <s:url id="d_url1" action="CW-Discharge-FetchHomesMap"/>
             
                <s:div id="homeInDistrictDiv" formId="dischargeForm"/>
                <sx:bind targets="homeInDistrictDiv" formId="dischargeForm" listenTopics="show_districts_homes" href="%{#d_url1}"/>
               
                
            </td>            
             </tr></table>
        <table id="parents">
        <tr>
            <td><s:text name="label.nameOfPerson"/></td>
            <td><s:textfield name="handoverPersonName" id="handoverPersonName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            <tr>
            <td><s:text name="label.relWithChild"/></td>
            <td><s:textfield name="personRelation" id="personRelation" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            
            <tr>
            <td><s:text name="label.contNumOfPerson"/></td>
            <td><s:textfield name="personContact" id="personContact" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' /></td>
            </tr>
            
            
            <tr>
            <td><s:text name="label.addrOfPerson"/></td>
            <td><s:textarea id="handoverPersonaddress" name="handoverPersonaddress" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr></table>
            
            <table id="otherstate">    
             <tr>
            <td><s:text name="label.selState"/> </td>
            <td><select name="state" id="state" headerKey="1" headerValue="---<s:text name="global.option.headerKey"/>----">
                    <option value="<s:text name="state.ap"/>"><s:text name="state.ap"/></option>
                    <option value="<s:text name="state.ARP"/>"><s:text name="state.ARP"/></option>
                    <option value="<s:text name="state.assam"/>"><s:text name="state.assam"/></option>
                    <option value="<s:text name="state.bihar"/>"><s:text name="state.bihar"/></option>
                    <option value="<s:text name="state.chattigarh"/>"><s:text name="state.chattigarh"/></option>
                    <option value="<s:text name="state.goa"/>"><s:text name="state.goa"/></option>
                    <option value="<s:text name="state.gujrt"/>"><s:text name="state.gujrt"/></option>
                    <option value="<s:text name="state.haryana"/>"><s:text name="state.haryana"/></option>
                    <option value="<s:text name="state.himPra"/>"><s:text name="state.himPra"/></option>
                    <option value="<s:text name="state.jandk"/>"><s:text name="state.jandk"/></option>
                    <option value="<s:text name="state.jharkhand"/>"><s:text name="state.jharkhand"/></option>
                    <option value="<s:text name="state.karnataka"/>"><s:text name="state.karnataka"/></option>
                    <option value="<s:text name="state.kerala"/>"><s:text name="state.kerala"/></option>
                    <option value="Maharashtra"/>Maharashtra</option>
                    <option value="<s:text name="state.mp"/>"><s:text name="state.mp"/></option>
                    <option value="<s:text name="state.mnpr"/>"><s:text name="state.mnpr"/></option>
                    <option value="<s:text name="state.mglya"/>"><s:text name="state.mglya"/></option>
                    <option value="<s:text name="state.mzrm"/>"><s:text name="state.mzrm"/></option>
                    <option value="<s:text name="state.nagaland"/>"><s:text name="state.nagaland"/></option>
                    <option value="<s:text name="state.orissa"/>"><s:text name="state.orissa"/></option>
                    <option value="<s:text name="state.punjab"/>"><s:text name="state.punjab"/></option>
                    <option value="<s:text name="state.rajasthan"/>"><s:text name="state.rajasthan"/></option>
                    <option value="<s:text name="state.sikkim"/>"><s:text name="state.sikkim"/></option>
                    <option value="<s:text name="state.tn"/>"><s:text name="state.tn"/></option>
                    <option value="<s:text name="state.tripura"/>"><s:text name="state.tripura"/></option>
                    <option value="<s:text name="state.uttarakhand"/>"><s:text name="state.uttarakhand"/></option>
                    <option value="<s:text name="state.up"/>"><s:text name="state.up"/></option>
                    <option value="<s:text name="state.wb"/>"><s:text name="state.wb"/></option>
                    <option value="<s:text name="state.anIslands"/>"><s:text name="state.anIslands"/></option>
                    <option value="<s:text name="state.chandigarh"/>"><s:text name="state.chandigarh"/></option>
                    <option value="<s:text name="state.dadraNgrHaveli"/>"><s:text name="state.dadraNgrHaveli"/></option>
                    <option value="<s:text name="state.damanAndDiu"/>"><s:text name="state.damanAndDiu"/></option>
                    <option value="<s:text name="state.lakshadweep"/>"><s:text name="state.lakshadweep"/></option>
                    <option value="<s:text name="state.puducherry"/>"><s:text name="state.puducherry"/></option>
                    <option value="<s:text name="state.govtNCTofDelhi"/>"><s:text name="state.govtNCTofDelhi"/></option>
                </select> </td>
            <%--td><s:textarea name="handoverPersonaddress" rows="4" cols="20" disabled="true"/></td--%>
            </tr>
            
             <tr>
            <td><s:text name="label.desigOffInOthStateHome"/></td>
            <td><s:textfield name="officerHome" id="officerHome" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            
             <tr>
            <td><s:text name="label.nameOfHome"/></td>
            <td><s:textarea name="homenameOtherstate" id="homenameOtherstate" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            
             <tr>
            <td><s:text name="label.addrOfHome"/></td>
            <td><s:textarea name="addressOtherstate" id="addressOtherstate" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
             </tr></table>
             
             <!--Anupam added for NGO Home START-->
             <table id="ngo">
                 <tr>
                 <td><s:text name="label.nameOfNGOHome"/></td>
                 <td><s:textfield name="homenameOtherstate" id="homenameOtherstate" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                 </tr>
                 
                 <%-- Enable address if requirement comes
                  <tr>
                  <td>Address of the NGO Home</td>
                  <td><s:textarea name="addressOtherstate" id="addressOtherstate" rows="4" cols="20"/></td>
                  </tr>
                 --%>
             </table>
             
             <!--Anupam added for NGO Home END-->
             
             <!--Anupam added for After Care Home START-->
             <table id="afterCare">
                 <tr>
                 <td><s:text name="label.nameOfStateAftCareHome"/></td>
                 <td><s:textfield name="homenameOtherstate" id="homenameOtherstate" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                 </tr>
                 
                 <%-- Enable address if requirement comes
                  <tr>
                  <td>Address of the After Care Home</td>
                  <td><s:textarea name="addressOtherstate" id="addressOtherstate" rows="4" cols="20"/></td>
                  </tr>
                 --%>
             </table>
             
             <!--Anupam added for After Care Home END-->
             
              <!--Anupam added for After Care Home START-->
             <table id="islamic">
                 <tr>
                 <td><s:text name="label.nameIslamicCenter"/></td>
                 <td><s:textfield name="homenameOtherstate" id="homenameOtherstate" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                 </tr>
                 
                 <%-- Enable address if requirement comes
                  <tr>
                  <td>Address of the Islamic Center </td>
                  <td><s:textarea name="addressOtherstate" id="addressOtherstate" rows="4" cols="20"/></td>
                  </tr>
                 --%>
             </table>
             
             <table id="othercountry">                
                 
                 <tr>
                 <td><s:text name="label.selState"/> </td>
                 <td>
                <select name="country" id="country" headerKey="1" headerValue="---<s:text name="global.option.headerKey"/>----">
                    <jsp:include page="country.jsp"/>
                </select>                    
                </td>
                 </tr>
                 
                 <tr>
                 <td><s:text name="Handed over to"/></td>
            <td><s:textfield name="handedOverTo" id="handedOverTo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                 </tr>
                
             </table>
             
             <!--Anupam added for After Care Home END-->
             
             
             
             
             
             <table>
            
         <tr>
                    <td><s:text name="label.cwcJjbOrdNum"/></td>
                    <td><s:textfield name="cwcJjbNo" id="cwcJjbNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                <tr>
                    <td><s:text name="label.cwcJjbOrdDate"/></td>
                    <td class="demo"><s:textfield name="cwcJjbOrderDate" readonly="true" id="datepicker" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                <tr>
                    <td><s:text name="label.dateOfDischarge"/></td>
                    <td class="demo"><s:textfield name="dateOfDischarge" readonly="true" id="datepicker1" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                <tr>
                    <td><s:text name="label.remarks"/></td>
                    <td><s:textarea name="remarks" id="remarks" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                                         
                </table>
                  <%--div id="x" style="display: ''">
                      dfgsdghsfjhsfgjfgjh
                    <s:include value="/WEB-INF/CW/Handover_parents.jsp"/>
                    
                </div--%>
                    <table>
                        <tr><td colspan="2" align="center">
                                <input type="submit" value="<s:text name="button.submit"/>" align="center"/></td></tr></table>
                   </s:form>
                    <!--/s:else-->
            
                    <div id="dialog-form_Discharge_preview" title="<s:text name="js.preview.dischargeReg"/>">
	<form name="discharge_prevwindow">
             <table border="1">
                 <tr><td align="right"><s:text name="global.label.childProID"/>:</td><td><span id="childIdToBeTransDis_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.actionTaken"/>:</td><td><span id="actionTaken_span"></span></td></tr>
                
                
                
                 <tr><td align="right"><s:text name="label.disName"/>:</td><td><span id="userDistrictId_span"></span></td></tr>
                 <tr><td align="right">Transfer Home Id:</td><td><span id="transHomeId_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.nameOfPerson"/>:</td><td><span id="handoverPersonName_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.relWithChild"/>:</td><td><span id="personRelation_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.contNumOfPerson"/>:</td><td><span id="personContact_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.addrOfPerson"/>:</td><td><span id="handoverPersonaddress_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.selState"/> :</td><td><span id="state_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.desigOfOffOthStateHome"/>:</td><td><span id="officerHome_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.nameOfHome"/>:</td><td><span id="homenameOtherstate_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.addrOfHome"/>:</td><td><span id="addressOtherstate_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.cwcJjbOrdNum"/>:</td><td><span id="cwcJjbNo_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.cwcJjbOrdDate"/>:</td><td><span id="cwcJjbOrderDate_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.dateOfDischarge"/>:</td><td><span id="dateOfDischarge_span"></span></td></tr>
                 <tr><td align="right"><s:text name="label.remarks"/>:</td><td><span id="remarks_span"></span></td></tr>
                      </table>  
	</form>
        </div>     
                    
                    
        </center>
    </body>
</html>
