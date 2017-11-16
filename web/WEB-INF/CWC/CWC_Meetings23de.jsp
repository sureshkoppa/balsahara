
<%-- 
    Document   : Form23
    Created on : 18 Sep, 2017, 3:13:07 PM
    Author     : Rajat Bansal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FORM 23</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
        <style>
            
           
            span { margin-left:18%;}
            .form23{
          border-top-style:none;
          border-left-style:none;
          border-right-style:none;
          border-bottom-style: dotted;
          border-bottom-color: black;
          }
    
              #cpCmname{
          border-top-style:none;
          border-left-style:none; 
          border-right-style:none;
          border-bottom-style:double;
          border-bottom-color: black;
          }
        </style>
    </head>
    <body>
        <br/>
        <form action="Controller.jsp" method="post" name="f">   
    <center>
<h4>FORM 23<br/>
   [Rule 19(22)]<br/>
    APPLICATION FOR SURRENDER OF CHILD<br/>
                  </h4>
    </center>            
            <span style="margin-left:63%">Date<input type="text" id="cpDate" name="cpDate" size="16" class="form23"></span><br/>
           <span>To</span><br/><br/>
<span style="margin-left: 23.5%">Child Welfare Committee,</span><br/>
<span style="margin-left: 23.5%">District<input type="text" id="cpDistrict" name="cpDistrict" size="20" class="form23"></span><br/><br/>
<span style="margin-left: 23.5%">I/ We<input type="text" id="cpAname" name="cpAname" size="20" class="form23">(name of the applicant/s) <input type="text" id="cpRname" name="cpRname" size="20" class="form23"> (relation &nbsp; with the child)</span><br/>
<span>of <input type="text" id="cpCname" name="cpCname" size="20" class="form23"> (name of the child), aged <input type="text" id="cpCage" name="cpCage" size="4" class="form23">years , intend to surrender <input type="text" id="cpCname" name="cpCname" size="15" class="form23"> name of</span><br/>
<span>child) before this Child Welfare Committee as<input type="text" id="cpReason" name="cpReason" size="53" class="form23">(reason/s for</span><br/>
<span>surrender).</span><br/>
<span style="margin-left: 23.5%">I/we am /are &nbsp; fully &nbsp; conscious &nbsp; and &nbsp; making &nbsp; this &nbsp; application &nbsp; before &nbsp; this &nbsp; Child &nbsp; Welfare &nbsp; Committee. I</span><br/>
<span>have &emsp; not &emsp; been &emsp; forced &emsp; or &emsp; unduly &emsp;&nbsp; influenced &emsp; by &emsp; any &emsp; one &emsp; to &emsp; take &emsp; this &emsp; decision &emsp; of</span><br/>
<span>surrendering &nbsp;<input type="text" id="cpCname" name="cpCname" size="18" class="form23">(name &nbsp; of &nbsp; child). I &nbsp; shall &nbsp; have &nbsp; no &nbsp; objection &nbsp; if the child is given in adoption. I</span><br/>
<span>am fully aware of the consequences of surrendering the child.</span><br/><br/><br/>
<span style="margin-left: 60.1%"><b>Full signature of the applicant(s)/</b></span><br/>   
<span style="margin-left: 51%"><b>Thumb impression (if the CWC deems appropriate)</b></span><br/>
<span>Name and address.</span><br/>
<span><input type="text" id="cpNameAddress" name="cpNameAddress" size="18" class="form23"></span><br/>
<span style="margin-left: 58%"><b>(Signature of the Chairperson/ member</b></span><br/>
<span style="margin-left: 56%"><b>Before whom such application is submitted)</b></span><br/> 
<span style="margin-left: 47%"><b>Committee member/s present:</b><input type="text" id="cpCmname" name="cpCmname" size="25" class="form23"></span><br/><br/>  
<span>Date<input type="text" id="cpDate1" name="cpDate1" size="18" class="form23"></span><br/>
<span>Time<input type="text" id="cpTime" name="cpTime" size="18" class="form23"></span><br/>
<span>Place<input type="text" id="cpPlace" name="cpPlace" size="18" class="form23"></span><br/><br/>

<span style="margin-left: 45%"><input type="submit" name="save" value="Save"><input type="reset" name="clear" Value="Clear"></span>
</form>
    </body>
</html>

   
