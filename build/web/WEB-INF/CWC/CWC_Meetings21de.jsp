<%-- 
    Document   : Form21
    Created on : 18 Sep, 2017, 3:13:07 PM
    Author     : Rajat Bansal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FORM 21</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
        <style>
            
           
            span { margin-left:18%;}
            .form21{
          border-top-style:none;
          border-left-style:none; 
          border-right-style:none;
          border-bottom-style: dotted;
          border-bottom-color: black;
          }
         
        </style>
    </head>
    <body>
        <br/>
        <form action="Controller.jsp" method="post" name="f">   
    <center>
<h4>FORM 21<br/>
   [Rule 19(3)]<br/>
    ORDER FOR SOCIAL INVESTIGATION REPORT OF CHILD IN NEED OF CARE AND PROTECTION<br/>
                  </h4>
    </center>                
           <span>To</span><br/><br/>
<span style="margin-left: 23.5%">Child &nbsp;&nbsp; Welfare &nbsp;&nbsp; Officer/ Social &nbsp;&nbsp; Worker/Case &nbsp;&nbsp; Worker/ Person &nbsp;&nbsp; in-charge &nbsp;&nbsp; of &nbsp;&nbsp; Home/ representative &nbsp; of</span><br/>
<span>Non- Governmental Organization</span><br/><br/>
<span style="margin-left: 23.5%">Whereas &nbsp; a &nbsp; report &nbsp; under &nbsp; section 31 &nbsp;(2)&nbsp; of &nbsp; the &nbsp; Juvenile &nbsp; Justice &nbsp; (Care and Protection of Children) &nbsp; Act,</span><br/>
<span>2015 &nbsp; has &nbsp; been &nbsp; received from<input type="text" id="cpActName" name="cpActName" size="20" class="form21">in respect  of (name of the child)<input type="text" id="cpCname" name="cpCname" size="20" class="form21">aged</span><br/>
<span>(approximate)<input type="text" id="cpAge" name="cpAge" size="10" class="form21">son/daughter of<input type="text" id="cpGname" name="cpGname" class="form21">residing at<input type="text" id="cpAddress" name="cpAddress" class="form21">who has been</span><br/>
<span>produced before the Committee under section 31 of the Juvenile Justice (Care and Protection of Children)</span><br/>
<span>Act, 2015.</span><br/><br/>
<span style="margin-left: 23.5%">You &nbsp; are &nbsp; hereby &nbsp; directed &nbsp; to &nbsp; conduct &nbsp; Social &nbsp; Investigation &nbsp; as &nbsp; per &nbsp; Form 22 for the above child. You are</span><br/>
<span>directed to enquire into socio economic and family background of the said child.</span><br/>
<span style="margin-left: 23.5%">You are directed to submit the Social Investigation &nbsp; Report on or before<input type="text" id="cpDate" name="cpDate" size="27" class="form21">(date).</span><br/><br/>
<span>Dated this<input type="text" id="cpDay" name="cpDay" size="16" class="form21">day of <input type="text" id="cpMon" name="cpMon" size="16" class="form21">20<input type="text" id="cpYr" name="cpYr" size="16" class="form21"></span><br/><br/>                   
<span style="margin-left: 72%"><b>(Signature)</b></span><br/>
<span style="margin-left: 66.2%"><b>Chairperson/ Member</b></span><br/> 
<span style="margin-left: 64.5%"><b>Child Welfare Committee</b></span><br/><br/>  
 

<span style="margin-left: 45%"><input type="submit" name="save" value="Save"><input type="reset" name="clear" Value="Clear"></span>
</form>
    </body>
</html>
