<%-- 
    Document   : View_CWCMeetingsMinutes
    Created on : Jul 27, 2011, 11:31:09 AM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script type="text/javascript">
<!--jsp:include page="../../javascripts/View_CWCMeetMins_Validation.jsp"--><!--/jsp:include-->
</script> 
<script>        
    
    var global = 1;
           function myfunction() {
                               var $select = $('#child');
                               $.ajax({
                                   url: 'getReportFoundChild',
                                   dataType: 'json',

                                   success: function (data) {
                           for (var i = 0; i < data.length; i++) {

            
                                    if(i == 0){
                                    var option = document.createElement("option");
                                           option.text = "-- please select --";
                                           $select.append(option);
                                        
                                        
                                    }
                                    var option = document.createElement("option");
                                           option.text = data[i];
                                           $select.append(option);
                                    }
                                },
                                   error: function (error) {
                                       alert('not worked.');
                                   }
                               });


           }
           
   
    
    function myreport(val){
        
                             //  document.getElementById("myTable").style.display ="block";
   //     alert("val =="+val.value);
        var str = val.value;
     //   alert("str =="+str);
      //var Table = document.getElementById("myTable");
     // Table.innerHTML = "";
if(global > 1){
     $("#myTable tr").remove();
}
                           $.ajax({
                                   type: 'POST',
                                   url: 'foundReportList',
                                   data: {name : str},
                                   dataType: 'json',
                                   success: function (data) {
                                   
                                   var data1 = JSON.stringify(data);
                                   console.log(data1);
                                   var tr;
         //tr = $('#myTable > tbody:last-child').append('<tr>...</tr><tr>...</tr>'); //$('</b>');
            tr = $('#myTable').after('</select>');
            tr.append("<tr><td>Name:</td><td>" + data.firstName+ "</td></tr>");
            tr.append("<tr><td>Gender:</td><td>" + data.gender+ "</td></tr>");
            tr.append("<tr><td>Identification Marks:</td><td>" + data.identificationmarks+ "</td></tr>");
            tr.append("<tr><td>Age:</td><td>" + data.ageofchild+ "</td></tr>");
            tr.append("<tr><td>Child Nature:</td><td>"+data.childnature+ "</td></tr>");
            if(data.childnature == "Others" || data.childnature == "others"){
                        tr.append("<tr><td>Child Nature(Others):</td><td>"+data.childnatureother+ "</td></tr>");
            }
                        
            if(data.disabled == "N"){            
            tr.append("<tr><td>Disabled:</td><td>No</td></tr>");
            }
            if(data.disabled == "Y" || data.disabled == "y"){
            tr.append("<tr><td>Nature of Disabled:</td><td>"+data.natureofdisablilty+ "</td></tr>");
            }
            tr.append("<tr><td>Religion:</td><td>" + data.religion+ "</td></tr>");
            
            if(data.religion == "Others" || data.religion == "others"){
            tr.append("<tr><td>Religion Others:</td><td>" + data.religionothers+ "</td></tr>");
            }
            
            if(data.childnature == "Orphan" || data.childnature == "orphan"){
            
            }
            else{
            tr.append("<tr><td>FatherName/Gaurdian:</td><td>" + data.fatherName+ "</td></tr>");
            tr.append("<tr><td>Father Occupation</td><td>" + data.fatheroccupation+ "</td></tr>");
            
            tr.append("<tr><td>MotherName:</td><td>" + data.motherName+ "</td></tr>");
            tr.append("<tr><td>Mother Occupation</td><td>" + data.motheroccupation+ "</td></tr>");
            }
            tr.append("<tr><td>No. of Brothers:</td><td>" + data.noofbrothers+ "</td></tr>");
            tr.append("<tr><td>No. of Sisters:</td><td>" + data.noofsisters+ "</td></tr>");
            
            tr.append("<tr><td>Languages Known:</td><td>" + data.languagesknown+ "</td></tr>");
            
            tr.append("<tr><td>Address of Parents:</td><td>" + data.addofparents+ "</td></tr>");
            
            tr.append("<tr><td>Education:</td><td>" + data.education+ "</td></tr>");
            tr.append("<tr><td>Details of Belongs:</td><td>" + data.detailsofbelongs+ "</td></tr>");
            tr.append("<tr><td>Identified Probelms</td><td>" + data.identifiedproblms+ "</td></tr>");
            tr.append("<tr><td>Place Found</td><td>" + data.placefound+ "</td></tr>");
            tr.append("<tr><td>AdmittedBy:</td><td>" + data.admittedby+ "</td></tr>");
            tr.append("<tr><td>Date:</td><td>" + data.date+ "</td></tr>");
            
            if(data.admittedby == "DCPU"){
            tr.append("<tr><td>DPCU Details</td><td>" + data.dpcudetails+ "</td></tr>");
            if(data.childlabour !== "N"){
            tr.append("<tr><td>Child Labour:</td><td>No</td></tr>");
            }if(data.childlabour !== "N"){
            tr.append("<tr><td>Labour Type:</td><td>" + data.labourtype+ "</td></tr>");
            tr.append("<tr><td>Labour Workplace</td><td>" + data.labourworkplace+ "</td></tr>");
            tr.append("<tr><td>Work Carriedout:</td><td>" + data.labourworkcarriedout+ "</td></tr>");
            tr.append("<tr><td>Salary:</td><td>" + data.laboursalary+ "</td></tr>");
            }
            }
            if(data.admittedby == "AuthorizedPerson"){
            
            tr.append("<tr><td>Authorized Name:</td><td>" + data.authorizedname+ "</td></tr>");
            tr.append("<tr><td>Contact:</td><td>" + data.authorizedcontact+ "</td></tr>");
            tr.append("<tr><td>Address</td><td>" + data.authorizedaddress+ "</td></tr>");
            tr.append("<tr><td>Age:</td><td>" + data.authorizedage+ "</td></tr>");
            }
             if(data.admittedby == "Childline"){
            tr.append("<tr><td>Details of Caller:</td><td>" + data.detailsofcaller+ "</td></tr>");
            tr.append("<tr><td>Service Required</td><td>" + data.servicerequired+ "</td></tr>");
            
            if(data.servicerequired == "Others" || data.servicerequired == "others"){
                
                
            tr.append("<tr><td>Service Others</td><td>" + data.serviceothers+ "</td></tr>");
            }
            }
            tr.append("<tr><td>Remarks</td><td>" + data.remarks+ "</td></tr>");
            
                                    },
                                   error: function (error) {
                                       alert('not worked.');
                                   }
                               });
                          document.getElementById("myTbody").style.display = "block";     
                          global++;   
    }

             </script>
    </head>
           <body  ng-app="myApp" ng-controller="myCtrl" onload="myfunction();">
        <center>
<CAPTION><font size="3"><b><s:text name="global.heading.ViewReportFoundChild"/></b></font></CAPTION> 
        
            
            <br>Select ID:      <select id="child" onchange="myreport(this)"></select>  
                
            <table border="1" id="myTable">
                <tbody id="myTbody" style="display: none"><tr></tr></tbody>
               </table>                
        </center>
</body>
</html>
