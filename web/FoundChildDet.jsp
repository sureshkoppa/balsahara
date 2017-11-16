
<html>
    <head><title>Entry Form</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <!--script type="text/javascript" source="/javascripts/app.js"></script-->
        <script>
           function myFunction() {
   
}
           <%--
        $(document).ready(function(){
    $("#childName").blur(function(){
        $.ajax({url: "foundChkChild", 
            data:{chname:$('#childName').val()},
             beforeSend: function()
    {
        $('#divid').html('loading...');
    },
            success: function(result){
                var s="";
               $.each(result, function(idx, obj) {
                   s=s+"<a href=CH-FoundAction?childProfileId="+idx+" target='_blank'>"+obj+"</a><br/>";
                   
               });
               alert(s);
               if(s != "")
                   document.getElementById("divid").innerHTML="Suitable Profiles<br/>"+s;
               else
                    document.getElementById("divid").innerHTML="No Suitable Profiles";
        }});
     
    // alert("fdg");
    });
});
           --%>
  function case_childnature(field_val)
             {
               //var field = 0;
               var fieldval=field_val.value;
             //  alert(fieldval);
               if(fieldval == "others" || fieldval == "Others" )
                {
                   //    alert("others");
                   
                       document.getElementById('childNatureOthers').value="";
                     document.getElementById("childNatureOthers").disabled=false;
                       
                }
                else{
                       document.getElementById('childNatureOthers').value="";
                     document.getElementById("childNatureOthers").disabled=true;
                       
                       //document.getElementById('childNatureOthers').value=="";
                }
            }


    function casework_admitedby(field_val){

       
    var fieldval = field_val.value;
    if(fieldval=="AuthorizedPerson"){
        var txt1 = $('#athorisedaddress');
        var txt2 = $('#athorisedperson');
        var txt3 = $('#athorisedcontact');
  //Remove the "required" attribute.
  //txt.removeAttr("required");
  //Add the "required" attribute.
  txt1.attr("required", "true");
  txt2.attr("required", "true");
  txt3.attr("required", "true");
  
  var txt4 = $('#dpcudet'); 
  txt4.removeAttr("required");
  
   var txt5 = $('#detailOfcaller');
  txt5.removeAttr("required");
  
            
          document.getElementById("childlinetable").style.display="none";
      document.getElementById("authorizedtable").style.display="block";
          document.getElementById("dcputable").style.display="none";
      
        
    }
    else if(fieldval=="DCPU"){
  var txt1 = $('#athorisedaddress');
  var txt2 = $('#athorisedperson');
  var txt3 = $('#athorisedcontact');
  //Remove the "required" attribute.
  //txt.removeAttr("required");
  //Add the "required" attribute.
  txt1.removeAttr("required");
  txt2.removeAttr("required");
  txt3.removeAttr("required");
  
  var txt5 = $('#detailOfcaller');
  txt5.removeAttr("required");
  
  var txt4 = $('#dpcudet'); 
  txt4.attr("required", "true");
  
       document.getElementById("dcputable").style.display="block";
        document.getElementById("authorizedtable").style.display="none";
         document.getElementById("childlinetable").style.display="none";
       
    }
    else{
        
  var txt1 = $('#athorisedaddress');
  var txt2 = $('#athorisedperson');
  var txt3 = $('#athorisedcontact');
  //Remove the "required" attribute.
  //txt.removeAttr("required");
  //Add the "required" attribute.
  txt1.removeAttr("required");
  txt2.removeAttr("required");
  txt3.removeAttr("required");
  
  var txt4 = $('#dpcudet'); 
  txt4.removeAttr("required");
  
  var txt5 = $('#detailOfcaller');
  txt5.attr("required", "true");
  
  
       // alert("else");
            document.getElementById("dcputable").style.display="none";
        document.getElementById("childlinetable").style.display="block";
            document.getElementById("authorizedtable").style.display="none";
  
    }

}

function casework_labour(field_val){
     var fieldval = field_val.value;
    // alert(fieldval);
          if(fieldval=='Y')
                   {
                     //document.getElementById("natureDisability").disabled=false; 
                     document.getElementById("labourrow").style.display="block";
                      document.getElementById("labourrow1").style.display="block";
                       document.getElementById("labourrow2").style.display="block";
                        document.getElementById("labourrow3").style.display="block";
                       
                   }
                   else{
                       //document.getElementById("natureDisability").disabled=true;
                       document.getElementById("labourrow").style.display="none";
                        document.getElementById("labourrow1").style.display="none";
                         document.getElementById("labourrow2").style.display="none";
                          document.getElementById("labourrow3").style.display="none";
                       
             
                   }
    
    
}

    function casework_serviceby(field_val){

    var fieldval = field_val.value;
        //alert("casework_serviceby =="+fieldval);
    
    if(fieldval == "Others" || fieldval=="others"){
            document.getElementById("otherseriverow").style.display = "block";
    }
    else{
        
            document.getElementById("otherseriverow").style.display = "none";
        
    }
}

  $(function() {
               $( "#datepicker1,#datepicker2,#datepicker3,#datepicker4,#datepicker5" ).datepicker({
                           
                            dateFormat: 'dd/mm/yy',
                            changeYear: true,
                            changeMonth: true,
                            yearRange: "-100:+0"
                            
                    });
            });
</script>    
          
    
</head>
<body ng-app="myApp" ng-controller="myCtrl" style="width:1100px" >
   


                
                <!--Your content goes here START -->
               

				

        <center>
          
            <h2>Enter the Details of Found Child</h2> 

         
             <h4>Based on the words uttered By Child</h4>

             <form  id="RHAdmission" name="RHAdmission" action="saveFChild" method="POST">
 

                <input name="formName" value="RHAdmission" id="RHAdmission_formName" type="hidden">
                
               
                <table>
                    <tbody>
                        <tr>
                        <td align="right">First Name:</td>
                        <td><div id="wwgrp_childName" class="wwgrp">
                            <div id="wwctrl_childName" class="wwctrl">
                            <input name="childName"  ng-model="childName" value="" id="childName" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" ng-required="true"></div> </div>
                            <span style="color:red" ng-show="RHAdmission.childName.$dirty && RHAdmission.childName.$invalid">
                                                            <span ng-show="RHAdmission.childName.$error.required">First Name is required.</span>
                                                            <span ng-show="RHAdmission.childName.$error.pattern">Only AlphaNumericals</span>
                                                            <span ng-show="RHAdmission.childName.$error.maxlength">Atmost 20 characters.</span>
                                                            </span>    
                        </td>
                        </tr>
                   
                        
                    <tr>
                        <td></td><td><div id="divid"></div></td>
                    </tr>
                     <tr>
                        <td align="right">Sur Name:</td>
                        <td><div id="wwgrp_childSurname" class="wwgrp">
                        <div id="wwctrl_childSurname" class="wwctrl">
                        <input name="childSurname" value="" id="childSurname" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" ></div> </div>
                        </td>
                    </tr>
                      <tr>
                        <td align="right">Gender:</td>
                        <td><input type="radio" name="genderfound" value="male">Male
                            <input type="radio" name="genderfound" value="female">Female
                       </td>
                    </tr>
                    
                    <tr>
                        <td align="right">Identification Marks:</td>
                        <td><div id="wwgrp_identificationMarks" class="wwgrp">
                        <div id="wwctrl_identificationMarks" class="wwctrl">
                        <input name="identificationMarks" value="" ng-model="identificationMarks" id="identificationMarks" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                    </td>
                    </tr>

                    <tr>
                        <td align="right">Age Of Child:</td>
                        <td><div id="wwgrp_age" class="wwgrp">
                        <div id="wwctrl_age" class="wwctrl">
                        <input name="ageofchild" ng-model="ageofchild" value="" id="ageofchild" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" ng-required="true"></div> </div>
                        <span style="color:red" ng-show="RHAdmission.ageofchild.$dirty && RHAdmission.ageofchild.$invalid">
                                                            <span ng-show="RHAdmission.ageofchild.$error.required">Age of Child is required.</span>
                                                            <span ng-show="RHAdmission.ageofchild.$error.pattern">Only AlphaNumericals</span>
                                                            <span ng-show="RHAdmission.ageofchild.$error.maxlength">Atmost 20 characters.</span>
                                                            </span>
                        </td>
                    </tr>		
				
                       <tr>
                        <td align="right">Child Nature:</td>
                        <td><select id="childNature" name="childNature" onchange="case_childnature(this);" ng-required="true">
                                <option value="Trafficking Victims">Trafficking Victims</option>
                                <option value="Orphan">Orphan</option>
                                <option value="Semi-Orphan">Semi-Orphan</option>
                                <option value="HIV-Aids affected">HIV-Aids affected</option>
                                <option value="Others">others</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">Child Nature(others):</td>
                        <td><div id="wwgrp_age" class="wwgrp">
                        <div id="wwctrl_age" class="wwctrl">
                        <input name="childNatureOthers" value="" id="childNatureOthers" disabled="disabled" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                        </td>
                    </tr>
                     <tr>
                        <td align="right">Disabled:</td>
                        <td><input id="disabled" name="disabled" value="Y" onchange="casework_diabled(this);" type="radio">yes
                            <input id="disabled" name="disabled" value="N" onchange="casework_diabled(this);" checked="true" type="radio">no
                            </td>
                    </tr>

                    <tr>
                            <td align="right">Nature of Disability:</td>
                            <td><div id="wwgrp_natureDisability" class="wwgrp">
                            <div id="wwctrl_natureDisability" class="wwctrl">
                            <input name="natureDisability" value="" disabled="disabled" id="natureDisability" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                            </td>
                    </tr>
                    
                    <tr>
                            <td align="right">Religion:</td>
                            <td>
                            <select id="religion" name="religion" headerkey="1" headervalue="-- Please Select --" onchange="casework_dynamic(this);" theme="simple" ng-required="true">
                            <option value="Hindu">Hindu</option>
                            <option value="Muslim">Muslim</option>
                            <option value="Christian">Christian</option>
                            <option value="Jain">Jain</option>
                            <option value="Other">Other</option>
                            </select>
                            </td>
                    </tr>
                    <tr>
                            <td align="right">Please specify:</td>
                            <td>
                            <input id="religion_other" name="religion_other" value="" disabled="disabled" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
                            </td>
                    </tr>
                    <tr>
                            <td align="right">Caste:</td>
                            <td>
                            <div id="wwgrp_caste" class="wwgrp">
                            <div id="wwctrl_caste" class="wwctrl">
                            <select id="caste" name="caste" ng-required="true">
                            <option value="SC">SC</option>
                            <option value="ST">ST</option>
                            <option value="BC">BC</option>
                            <option value="OC">OC</option>
                            <option value="Minority">Minority</option>
                            <option value="Others">Others</option>
                            </select>
                            </div>
                            </div>
                            </td>
                    </tr>
<tr>
<td align="right">Sub Caste:</td>
<td>
<input id="subcaste" name="subcaste" value="" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
<span style="color:red" ng-show="RHAdmission.subcaste.$dirty && RHAdmission.ageofchild.$invalid">
                                                            <span ng-show="RHAdmission.subcaste.$error.required">Subcaste is required.</span>
                                                            <span ng-show="RHAdmission.subcaste.$error.pattern">Only AlphaNumericals</span>
                                                            <span ng-show="RHAdmission.subcaste.$error.maxlength">Atmost 20 characters.</span>
                                                            </span>
</td>
</tr>

<tr>

<td align="right">Parent's/Gaurdian Name:</td>
<td>
<input id="fatherName" name="fatherName" value="" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
</td>
</tr>
<tr>
<td align="right">Parent's/Gaurdian Occupation:</td>
<td>
<input id="fatherOccup" name="fatherOccup" value="" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" dir="ltr" type="text">
</td>
</tr>
<!--tr>
<td align="right">Mothers Name:</td>
<td>
<input id="motherName" name="motherName" value="" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
</td>
</tr>
<tr>
<td align="right">Mothers Occupation:</td>
<td>
<input id="motherOccup" name="motherOccup" value="" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
</td>
</tr-->
<tr>
<td align="right">No.Of Brothers:</td>
<td>
<input id="noBrothers" name="noBrothers" value="0" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
</td>
</tr>
<tr>
<td align="right">No.Of Sisters:</td>
<td>
<input id="noSister" name="noSister" value="0" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text">
</td>

<tr>
<td align="right">Languages Known:</td>
<td>
<select id="languagesKnown" name="languagesKnown" multiple="true" size="4" headerkey="1" headervalue="--Please Select--">
<option value="Assamese">Assamese</option>
<option value="Bengali">Bengali</option>
<option value="Bodo">Bodo</option>
<option value="Chhattisgarhi ">Chhattisgarhi </option>
<option value="Dogri">Dogri</option>
<option value="Garo">Garo</option>
<option value="Gujarati">Gujarati</option>
<option value="Hindi">Hindi</option>
<option value="Kannada">Kannada</option>
<option value="Kashmiri">Kashmiri</option>
<option value="Khasi">Khasi</option>
<option value="Kokborok">Kokborok</option>
<option value="Konkani">Konkani</option>
<option value="Maithili">Maithili</option>
<option value="Malayalam">Malayalam</option>
<option value="Manipuri">Manipuri</option>
<option value="Marathi">Marathi</option>
<option value="Mizo">Mizo</option>
<option value="Nepali">Nepali</option>
<option value="Oriya">Oriya</option>
<option value="Punjabi">Punjabi</option>
<option value="Sanskrit">Sanskrit</option>
<option value="Santali">Santali</option>
<option value="Sindhi">Sindhi</option>
<option value="Telugu">Telugu</option>
<option value="Tamil">Tamil</option>
<option value="Urdu">Urdu</option>
</select>
</td>
</tr>

<tr>
<td align="right">Address Of Parents/Guardian:</td>
<td>
<textarea id="addrParents" name="addrParents" ng-model="addrParents" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" ng-required="true"></textarea>
<span style="color:red" ng-show="RHAdmission.addrParents.$dirty && RHAdmission.addrParents.$invalid">
                                                            <span ng-show="RHAdmission.addrParents.$error.required">Address is required.</span>
                                                            <span ng-show="RHAdmission.addrParents.$error.pattern">Only AlphaNumericals</span>
                                                            <span ng-show="RHAdmission.addrParents.$error.maxlength">Atmost 20 characters.</span>
                                                            </span>

</td>
</tr>
                     <tr>
                        <td align="right">Education:</td>
                        <td><input id="education" name="education" value="" type="text" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;">
                            </td>
                    </tr>
                    
                    <tr>
                        <td align="right">Details of Belongings:</td>
                        <td><input id="belongdet" name="belongdet" value="" type="text" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;">
                            </td>
                    </tr>
                    
                    <tr>
                        <td align="right">Identified Problems Issues <br/>Pertaining To The Child(If Any):	
                        </td>
                            <td><div id="wwgrp_identificationMarks" class="wwgrp">
                                <div id="wwctrl_identificationMarks" class="wwctrl">
                                <input name="identifiedProb" value="" id="identifiedProb" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                            </td>
                    </tr>
                    <tr><td colspan="2" align="center"><b>Mention the following points:</b></td></tr> 
                  <!--tr>
                      <td align="right"><li> Where was the child found.</li></td>
                    <td>
<input type='text' id="placefound" name="placefound" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"/>
</td>
</tr-->
<tr><td align="right">Circumstances under <br/>which the child was found:</td>
    <td><input type='text' id="placefound" name="placefound" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"/></td>
</tr>
          <tr>
                      <td align="right"> Allegation by the child of any <br/>offence/abuse committed on the <br/>child in any manner:</td>
                    <td>
<input type='text' id="placefound" name="placefound" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"/>
</td>
</tr>
 <tr>
                      <td align="right">Physical condition if the child:</td>
                    <td>
<input type='text' id="placefound" name="placefound" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"/>
</td>
</tr>
<tr>
   <td  align="right">Words uttered by child repeatedly:</td>
                    <td>
<input type='text' id="placefound" name="placefound" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"/>
</td>
</tr>
                
                 <tr><td  align="right">The language used by child:
                </td>
<td>
<input type='text' id="placefound" name="placefound" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"/>
</td>
</tr>
                    
                 
                
         
                    <tr>
<td align="right">Medical Treatement,<br/>if provided to the child:</td>
<td>
         <input name="athorisedaddress" value="" id="athorisedaddress" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required>
</td>
</tr>
  <tr>
                        <td align="right">Whether police has been informed:</td>
                        <td><input id="labour" name="labour" value="Y" onchange="casework_labour(this);" type="radio">yes
                            <input id="labour" name="labour" value="N" onchange="casework_labour(this);" checked="true" type="radio">no
                            </td>
                    </tr>       
                       
                    </tbody>
</table>
  <table>
  <tbody>
           <tr>
                        <td align="right">Admitted By:</td>
                        <td><select id="admitedby" name="admitedby" onchange="casework_admitedby(this);">
                                <option value="1">---Please Select---</option>
                                <option value="Childline">Child line</option>
                                <option value="DCPU">DCPU</option>
                                <option value="AuthorizedPerson">Citizens</option>
                            </select>
                        </td>
                    </tr>
                    
                    
                        <tr>
                           <td>
                             Date of Admission: 
                           </td>
                            <td>
                         <input id="datepicker4" class="datepick" name="admissiondate" value=""  type="text"/>
                            </td> 
                        </tr>
                    
               
                    <table>
                        <tbody id="childlinetable" style="display: none">
                    <tr>
                        <td align="right">Details Of Caller:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                   <input name="detailOfcaller" value="" id="detailOfcaller" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                      <tr>
                        <td align="right">Service Required:</td>
                        <td><select id="servicereq" name="servicereq" onchange="casework_serviceby(this); ">
                                <option value="Medical">Medical</option>
                                <option value="Shelter">Shelter</option>
                                <option value="Protectionfromabuse">Protection from abuse</option>
                                <option value="Reunionwithfamily">Reunion with family</option>
                                <option value="specialservices">Special Services(PIL/MC)</option>
                                <option value="sponsorship">Sponsorship(Edn/Medical)</option>
                                <option value="Others">Others</option>
                            </select>
                        </td>
                    </tr>
                    
                    <tr id="otherseriverow" style="display: none">
                        <td align="right">Services(Other):</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="serviceother" value="" id="serviceother" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                         </td>
                    </tr>
                                   
                    <tr>
<td align="right">Remarks:</td>
<td>
<textarea id="remarks" name="remarks" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"></textarea>
</td>
</tr>
                    </tbody>
                    </table>
                    
                    <table >
                        <tbody id="authorizedtable" style="display: none">
                            
                    <tr>
                        <td align="right">Name of Citizen:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="athorisedperson" value="" id="athorisedperson" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                       
                    <tr>
                        <td align="right">Age:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="athorisedage" value="" id="athorisedage" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" ></div> </div>
                         </td>
                    </tr>
                    <tr>
                        <td align="right">Sex:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="athorisedsex" value="" id="athorisedsex" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                            
                              <tr>
                        <td align="right">Address:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                   <input name="athorisedaddress" value="" id="athorisedaddress" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                    <tr>
                        <td align="right">Contact:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="athorisedcontact" value="" id="athorisedcontact" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                    <tr>
                        <td align="right">Occupation/Designation:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="athorisedcontact" value="" id="athorisedcontact" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                    
                                           
                    <tr>
<td align="right">Remarks:</td>
<td>
<textarea id="remarks" name="remarks" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"></textarea>
</td>
</tr>
                        </tbody>
                        
                    </table>
                    
                    <table >
                        <tbody id="dcputable" style="display: none">
                            
                    <tr>
                        <td align="right">DCPU Details:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                   <input name="dpcudet" value="" id="dpcudet" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text" required></div> </div>
                         </td>
                    </tr>
                       
                     <tr>
                        <td align="right">Child Labour:</td>
                        <td><input id="labour" name="labour" value="Y" onchange="casework_labour(this);" type="radio">yes
                            <input id="labour" name="labour" value="N" onchange="casework_labour(this);" checked="true" type="radio">no
                            </td>
                    </tr>
                            
                          
                    <tr id="labourrow" style="display: none">
                        <td align="right">Labour Type:</td>
                        <td><select id="labourtype" name="labourtype">
                                <option value="childlabour">Child Labour</option>
                                <option value="boundedlabour">Bounded Labour</option>
                                <option value="domesticchildlabour">Domestic Child Labour</option>
                            </select>
                        </td>
                    </tr>
                    
                    <tr id="labourrow1" style="display: none">
<td align="right">Workplace details including address:</td>
<td>
<textarea id="workadd" name="workadd" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"></textarea>
</td>
</tr>

 <tr id="labourrow2" style="display: none">
                        <td align="right">Work Carried Out:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="workacarried" value="" id="workacarried" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                         </td>
                    </tr>
                    <tr id="labourrow3" style="display: none">
                        <td align="right">Monthly Salary:</td>
                        <td ><div id="wwgrp_childNatureOthers" class="wwgrp">
                               <div id="wwctrl_childNatureOthers" class="wwctrl">
                                <input name="salary" value="" id="salary" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;" type="text"></div> </div>
                         </td>
                    </tr>
                    
                    <tr>
<td align="right">Remarks:</td>
<td>
<textarea id="remarks" name="remarks" cols="20" rows="4" onfocus="VirtualKeyboard.attachInput(this);currentTB=this.id;"></textarea>
</td>
</tr>

         </tbody>
                        
                    </table>
                    <!--Added by anupam on 13-01-2012 start-->
                             
                    <tr>
                        
                        <td align="right"><input value="Save"  ng-disabled="RHAdmission.childName.$dirty && RHAdmission.childName.$invalid ||
                                                                            RHAdmission.identificationMarks.$dirty && RHAdmission.identificationMarks.$invalid ||
                                                                            RHAdmission.addrParents.$dirty && RHAdmission.addrParents.$invalid" type="submit" id="#s1"></td>
                        <td align="center"><input value="Clear" type="reset" ></td>
                        
                        
                    </tr>
                </tbody></table>
            </form>




            
            
           
	
 
            
            
            
            
        </center>
<script>
var postApp = angular.module('myApp',[]);
   postApp.controller('myCtrl',function($scope) {
    
              $scope.dateissue = new Date();
      });
</script>
</body>
</html>
