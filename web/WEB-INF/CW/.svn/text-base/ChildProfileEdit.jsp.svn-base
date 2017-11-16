<%-- 
    Document   : ChildProfileEdit
    Created on : 11 Oct, 2012, 12:39:08 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .successBox{
                background-color: yellow;
                border: 1px solid green;                
                width: 200px;
                height: 50px;
                text-align: center;
                font-size: 1em;
                font-weight: bold;
                color: green;
                box-shadow:5px 5px 5px rgba(0,0,0,.5);
                -webkit-border-radius:10px;
                -moz-border-radius:10px;
                border-radius:10px;            
                
            }
            
            .errorBox{
                background-color: yellow;
                border: 1px solid red;
                width: 200px;
                height: 50px;
                text-align: center;
                font-size: 1em;
                font-weight: bold;
                color: red;
                -webkit-border-radius:10px;
                -moz-border-radius:10px;
                border-radius:10px;            
                
            }
            
            
                .ui-autocomplete {
                max-height: 100px;
                overflow-y: auto;
                /* prevent horizontal scrollbar */
                overflow-x: hidden;
                }
                /* IE 6 doesn't support max-height
                * we use height instead, but this forces the menu to always be this tall
                */
                * html .ui-autocomplete {
                height: 100px;
                }

            
        </style>
        <script>
            
             function setImage(profileId){                        
                       
                        
                        var img = $("<img />").attr({
                            'src' : 'ImageAction?imageId='+profileId+'.jpg',
                            'alt' : 'Image Not Uploaded',
                            'width' : '160',
                            'height': '107'                            
                        })
                        .load(function() {
                            if (!this.complete || typeof this.naturalWidth == "undefined" || this.naturalWidth == 0) {
                                alert('broken image!');                               
                                } else {
                                    $("#childPhoto").empty()
                                                    .append(img);
                                    }
                         });
                        
                        
                    }
           
            function displayDetails(){
                
                if(request.readyState == 4){
                    
                    
                    
                    if(request.status == 200){
                        
                        var detailDiv = document.getElementById("childDetailsDiv");
                        
                        var child = eval('('+ request.responseText +')');
                        
                        //for photo
                        setImage($(childIdToBeTransDis).val());
                        
                        for(var property in child){
                    
                    /* to put vaules in the existing elements */
                   
                    var propertyValue = child[property];
                    //alert(propertyValue);
                    var i = document.getElementById(property);
                    //alert(i)
                     try{
                    
                     i.value = propertyValue;
                       
                        }
                     catch(err){
                         //alert("Error "+err);
                       }
                    
                   
                        }
                        
                        //----Code to render JSON data END
                        
                    }
                    else if(request.status == 500)
                        {
                            alert("500 -- internal server error");
                        }
                }
                
            }
            
            function createRequest(){
                
                try{
                    request = new XMLHttpRequest();
                }
                catch(tryMS){
                    
                    try{
                        request = new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    
                    catch(otherMS)
                    {
                        try{
                            request = new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch(failed)
                        {
                            request = null;
                        }
                    }
                    
                }
               return request; 
            }
            
            function getDetails(profileId){
                //alert(profileId);
                
                if(profileId=='1')
                    {
                        //alert('in');
                        //dont send empty request to server
                        return;
                    }
                
                request = createRequest();
                
                if(request == null){
                    alert("Unable to create request");
                    return ;
                }
                /* using get
                var url = "CW-JSON-Child-Details?profileId="+escape(profileId);
                request.open("GET",url,true);
                request.onreadystatechange = displayDetails;
                request.send(null);
                */
               /*clean up old success message*/
               document.getElementById("serverMessage").className = 
           document.getElementById("serverMessage").className.replace
           ( /(?:^|\s)successBox(?!\S)/g , '' );
               document.getElementById("serverMessage").innerHTML="";
               
               /*using POST*/
               var url = "CW-JSON-Child-Details";
               var vals ="profileId="+escape(profileId);
               
               request.onreadystatechange = displayDetails;
                request.open("POST",url,true);                
                request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                request.send(vals);
               
            }
            
            
            function displayMessage(){
              //alert('display Details');  
        
        
        if(request.readyState == 4){
                    
                            if(request.status == 200){                 
                        
                                             var ele = document.getElementById("serverMessage");
                                                                                                                                       
                                             ele.className += "successBox";                                             
                                             ele.innerHTML = request.responseText;
                                             
                                               } 
                    
                                                     else if(request.status == 500)
                                                                            {
                                                                            alert("500 -- internal server error");
                                                                             }
                                   }
                }
                
            
            
            function editData(){
                //alert('changeRequest');
                
                changeRequest = createRequest();
        
                    if(changeRequest == null)
                    {
                    alert("Unable to create NEW XMLHTTP Request");
                    }
            
                            else
                                {
                                        //alert("NEW XMLHTTP Request created "+changeRequest);
                                        var url = "CW-JSON-Child-Details-Update";
                                        var changeRequestData='';
                
                                                        try{
                                                           
                                                         <s:if test="#session.hometype=='RU' || #session.hometype=='CH'">   
                                                         changeRequestData = "childProfileId="+
                                                            escape(document.getElementById('childProfileId').value) + "&childName=" +
                                                            escape(document.getElementById('childName').value) + "&childSurname=" +
                                                            escape(document.getElementById('childSurname').value) + "&age=" +
                                                            escape(document.getElementById('age').value) + "&identificationMarks=" +
                                                            escape(document.getElementById('identificationMarks').value) + "&natureDisability=" +
                                                            
                                                            escape(document.getElementById('natureDisability').value) + "&childNature=" +
                                                            escape(document.getElementById('childNature').value) + "&cwcJjbOrderNo=" +
                                                            
                                                            escape(document.getElementById('cwcJjbOrderNo').value) + "&producedBy=" +
                                                            escape(document.getElementById('producedBy').value) + "&propertyPossessed=" +
                                                            escape(document.getElementById('propertyPossessed').value) + "&reasonAdm=" +
                                                            escape(document.getElementById('reasonAdm').value) + "&periodStay=" +
                                                            escape(document.getElementById('periodStay').value) + "&recommCaseworker=" +
                                                            escape(document.getElementById('recommCaseworker').value) + "&recommCwc=" +
                                                            escape(document.getElementById('recommCwc').value);
                                                          </s:if>
                                                           
                                                           <s:elseif test="#session.hometype=='SH' || #session.hometype=='OH'">           
                                                           changeRequestData = "childProfileId="+
                                                            escape(document.getElementById('childProfileId').value) + "&childName=" +
                                                            escape(document.getElementById('childName').value) + "&childSurname=" +
                                                            escape(document.getElementById('childSurname').value) + "&age=" +
                                                            escape(document.getElementById('age').value) + "&identificationMarks=" +
                                                            escape(document.getElementById('identificationMarks').value) + "&natureDisability=" +
                                                            
                                                            escape(document.getElementById('natureDisability').value) + "&childNature=" +
                                                            escape(document.getElementById('childNature').value) + "&cwcJjbOrderNo=" +
                                                            
                                                            escape(document.getElementById('cwcJjbOrderNo').value) + "&producedBy=" +
                                                            escape(document.getElementById('producedBy').value) + "&propertyPossessed=" +
                                                            escape(document.getElementById('propertyPossessed').value) + "&reasonAdm=" +
                                                            escape(document.getElementById('reasonAdm').value) + "&periodStay=" +
                                                            escape(document.getElementById('periodStay').value) + "&recommCaseworker=" +
                                                            escape(document.getElementById('recommCaseworker').value) + "&placeOfCharge=" +                                                            
                                                            escape(document.getElementById('placeOfCharge').value) + "&dispositionDetails=" +
                                                            escape(document.getElementById('dispositionDetails').value) + "&provisionLaw=" +
                                                            escape(document.getElementById('provisionLaw').value) + "&warranrNumber=" +
                                                            escape(document.getElementById('warranrNumber').value) + "&nameOfPoliceStation=" +
                                                            escape(document.getElementById('nameOfPoliceStation').value) + "&recommCwc=" +                                                            
                                                            escape(document.getElementById('recommCwc').value);
                                                           </s:elseif>
                                                            
                                                            
                                                            
                                                            
                                                            

                                                        //alert('b4 ajax');
                                                        changeRequest.onreadystatechange = displayMessage;
                                                        changeRequest.open("POST",url,true);
                                                        changeRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                                                        changeRequest.send(changeRequestData);
                                                        //alert('after ajax');
                                                        }
                
                                                                catch(err)
                                                                {
                                                                    alert('----'+err);
                                                                    console.log(err.message);
                                                                }
                                            }
      
                }
                
               
                                           $(function() {
                                                                                                      
                                                    $( "#natureDisability" ).autocomplete({
                                                                                            source:'CW-Get-Distinct-Values-JSON?distinctParm=natureDisability',
                                                                                            minLength: 0
                                                                                          })
                                                                                          
                                                                             .focus(function(){
                                                                                      //alert(availableTags);
                                                                                      $(this).autocomplete("search", "");
                                                                                       });
                                                    
                                                    $( "#childNature" ).autocomplete({
                                                                                        source:'CW-Get-Distinct-Values-JSON?distinctParm=childNature',
                                                                                        minLength: 0
                                                                                     })
                                                                       .focus(function(){
                                                                                      //alert(childNature);
                                                                                      $(this).autocomplete("search", "");
                                                                                       });
                                                                                       
                                                     
                                                   $( "#provisionLaw" ).autocomplete({
                                                                                        source:'CW-Get-Distinct-Values-JSON?distinctParm=provisionLaw',
                                                                                        minLength: 0
                                                                                     })
                                                                       .focus(function(){
                                                                                      //alert(childNature);
                                                                                      $(this).autocomplete("search", "");
                                                                                       });
                                                    
                                                    
                                                    
                                                    });
  
        </script>
    </head>
    <body>
        <h1><s:text name="global.heading.childProEdit"/></h1>
        
        
            <s:form name="#" id="RHAdmission" action="CW-AdmRH-Action" method="POST" theme="css_xhtml">
                <table border="1">
                    <tr>
                        <td><s:text name="global.label.selChiEdit"/>:</td>
                        <td>
                        
                            <select name="childIdToBeTransDis" id="childIdToBeTransDis" headerKey="1" headerValue="-----<s:text name="global.option.headerKey"/>------" onchange="getDetails(this.value)">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                   </c:forEach>
                            </select>
                        
                        </td>                        
                    </tr>
                   
                </table>
            
            
            <div id="childDetailsDiv">
            </div>    
            
            </s:form>
        <!--Child Edit page START--> 
        <!--s:form name="RHAdmission" id="RHAdmission" action="CW-AdmRH-Action" method="POST" theme="css_xhtml"-->

                <!--s:hidden name="formName" value="RHAdmission"/-->
                
               
                <table>
                   <tr><td align="center" colspan="2"><div id="childPhoto"></div></td></tr>
                    <tr>
                        <td align="right"><s:text name="global.label.childProID"/>:</td>
                        <td><s:textfield id="childProfileId" name="childProfileId" disabled="true" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.fName"/>:</td>
                        <td><s:textfield id="childName" name="childName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                     <tr>
                         <td align="right"><s:text name="global.label.lName"/>:</td>
                        <td><s:textfield id="childSurname" name="childSurname" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="label.age"/>:</td>
                        <td><s:textfield id="age" name="age" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <%--
                     <tr>
                        <td align="right">Gender:</td>
                         <td><s:radio id="gender"  name="gender" list="#{'male':'Male','female':'Female'}" /></td>
                    </tr>
                    --%>
                    <tr>
                        <td align="right"><s:text name="global.label.idMarks"/>:</td>
                        <td><s:textfield id="identificationMarks" name="identificationMarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    <tr>
                        <td align="right">Nature of Disability:</td>
                        <td><s:textfield name="natureDisability" id="natureDisability" theme="css_xhtml"/></td>
                    </tr> 
                    
                    
                    <tr>
                        <td align="right">Child Nature:</td>
                        <td><s:textfield id="childNature" name="childNature" theme="css_xhtml"/></td>
                    </tr>

                    <%--
                    <tr>
                        <td align="right">Child Nature:</td>
                        <td><s:select id="childNature" name="childNature" headerKey="1" headerValue="---Please select----" list="#{'Trafficking Victim':'Trafficking Victim','Orphan':'Orphan','Semi-Orphan':'Semi-Orphan','HIV-Aids affected':'HIV-Aids affected','Others':'Others'}"  onchange="casework_childnature(this);"/></td>
                    </tr>
                    
                    
                    <tr>
                        <td align="right">Child Nature Others:</td>
                        <td><s:textfield name="childNatureOthers" id="childNatureOthers" disabled="true"/></td>
                    </tr>
                    
                    <tr>
                        <td align="right">Disabled:</td>
                        <td><s:radio id="disabled"  name="disabled" list="#{'Y':'Yes','N':'No'}"  value="%{'N'}" onchange="casework_diabled(this);"/></td>
                    </tr>

                             
                    


                   <tr> 
                       <td align="right">Date of Admission:</td>
                      <td><s:textfield name="dateTimeAdm_String" id="datepicker" readonly="true"/></td>
                      
                    </tr>
                     <tr>
                        <td align="right">Admitted by:</td>
                        <td><s:select id="admThrough" name="admThrough"  headerKey="1" headerValue="---Please select----" list="#{'CWC':'CWC','JJB':'JJB','AuthorizedPerson':'Authorized Person'}" onchange="casework_admthrough(this);"/></td>
                    </tr>
                    
                       
                    
                    <tr>
                        <td align="right">Name of the Authorized Person:</td>
                        <td><s:textfield id="nameAuthPer" name="nameAuthPer" disabled="true"/></td>
                    </tr>
                  --%>
                     <%--tr>
                        <td align="right">Place of Charge:</td>
                        <td><s:textfield id="placeOfCharge" name="placeOfCharge"/></td>
                    </tr--%>
                    
                  
                    <tr>
                        <td align="right"><s:text name="global.label.cwcjjbnum"/>:</td>
                        <td><s:textfield id="cwcJjbOrderNo" name="cwcJjbOrderNo" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <%--
                    <tr>
                        <td align="right">CWC/JJB order Date :</td>
                        <td><s:textfield name="orderDate_String" id="datepicker1" readonly="true"/></td>
                    </tr>
                    
                   
                    <tr>
                        <td align="right">Date on which the child was produced before JJB/CWC:</td>
                        <td><s:textfield name="intCwcJjbDate_String" id="datepicker2" readonly="true"/></td>
                    </tr>
                   --%>
                   
                    <tr>
                        <td align="right"><s:text name="global.label.byWhomBfrCWCJJB"/>:</td> 
                        <td><s:textarea id="producedBy" name="producedBy" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    <tr>
                        <td align="right"><s:text name="global.label.detailsOfProp"/>:</td>
                        <td><s:textarea id="propertyPossessed" name="propertyPossessed" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    <!--Added by anupam on 13-01-2012 start-->
                    <%--
                    <tr>
                        <td align="right">
                            <table border="0">
                                <tr><td>Preliminary Enquiry Report</td></tr>
                                <tr><th>Mention the following points.</th></tr>
                                <tr><td>1. Where the child was found.</td></tr>
                                <tr><td>2. Under which circumstances.</td></tr>
                                <tr><td>3. Sentences child uttered repeatedly.</td></tr>
                                <tr><td>4. The language used by child.</td></tr>
                                </table>
                            </td>
                        <td><s:textarea name="preEnqRept" id="preEnqRept"  rows="8" cols="16"/></td>
                    </tr>
                    --%>
                    <!--Added by anupam on 13-01-2012 end-->

                
                    <tr>
                        <td align="right"><s:text name="global.label.reaAdmConfLaw"/>:</td>
                        <td><s:textarea id="reasonAdm" name="reasonAdm" rows="4" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                                    
                    
                    <%--
                    <tr>
                        <td align="right">Probable Date of discharge:</td>
                        <td><s:textfield name="probableDischargeDate_String" id="datepicker4" readonly="true"/></td>
                    </tr>
                    --%>
                    <tr>
                        <td align="right"><s:text name="global.label.recoCW"/>:</td>
                        <td><s:textarea id="recommCaseworker"  name="recommCaseworker" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <tr>
                        <td align="right"><s:text name="global.label.recoCWC"/>:</td>
                        <td><s:textarea id="recommCwc" name="recommCwc" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <tr></tr>
                    
                    <!--New Fields START-->
                    
                    <s:if test="#session.hometype=='OH' || #session.hometype=='SH'">
                      <tr>
                         <td align="right">Crime Number:</td>
                        <td><s:textfield id="placeOfCharge" name="placeOfCharge" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    <tr>
                        <td align="right">CC Number:</td>
                        <td><s:textarea name="periodStay" id="periodStay" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    <tr>
                        
                        <td align="right">JJB Details:</td>
                        <td><s:textarea id="dispositionDetails" name="dispositionDetails" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    <tr>
                        
                        <td align="right">Under Section:</td>
                        <td><s:textarea id="provisionLaw" name="provisionLaw" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    
                    
                    <tr>
                        <!--Warrant Number-->
                        <td align="right">Warrant Number:</td>
                        <td><s:textarea id="warranrNumber" name="warranrNumber" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    <tr>
                        <!--Name of police station-->
                        <td align="right">Name of police station:</td>
                        <td><s:textarea id="nameOfPoliceStation" name="nameOfPoliceStation" rows="2" cols="17" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' theme="css_xhtml"/></td>
                    </tr>
                    </s:if>
                    
                    <s:elseif test="#session.hometype=='RU' || #session.hometype=='CH'">
                        <s:hidden name="periodStay" value="NA"/>
                     <%--   <tr>
                        <td align="right"><s:text name="global.label.periodOfStay"/>:</td>
                        <td><s:textarea name="periodStay" id="periodStay" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                    </tr> --%>
                    </s:elseif>
                    
                    <!--New Fields END-->
                    
                                 
                    <tr>
                        
                       
                        <td align="right"><input type="submit" value="<s:text name="button.saveChanges"/>" onclick="editData()"/></td>
                        <td align="right"><div id="serverMessage"></div></td>
                        
                    </tr>
                </table>
            <!--/s:form-->
     
        <!--Child Edit page END-->
    </body>
</html>
