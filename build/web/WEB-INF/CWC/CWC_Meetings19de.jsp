<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>FORM 19</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
        <style>
            
           
            span { margin-left:18%;}
           
            .form19{
          border-top-style:none;
          border-left-style:none;
          border-right-style:none;
          border-bottom-style: dotted;
          border-bottom-color: black;
          color: blue;
          }
    
              #cpDay{
          border-top-style:none;
          border-left-style:none; 
          border-right-style:none;
          border-bottom-style:double;
          border-bottom-color: black;
          }
              #cpMon{
          border-top-style:none;
          border-left-style:none; 
          border-right-style:none;
          border-bottom-style:double;
          border-bottom-color: black;
          }
              #cpYr{
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
        <form action="form19desave" method="post" name="f" style="background-color: white">   
    <center>
<h4>FORM 19<br/>
   [Rule 18(8)]<br/>
    ORDER FOR PLACEMENT OF CHILD UNDER THE CARE OF A PARENT, GUARDIAN OR FIT<br/>
    PERSON PENDING INQUIRY</h4>
    </center>                
           <span>Case No<input type="text" id="cipiNo" name="cipiNo" size="8" class="form19">of<input type="text" id="cipiDay" name="cipiDay" size="12" class="form19">20<input type="text" id="cipiYear" name="cipiYear" size="14" class="form19"></span><br/>
<span>In Re<input type="text" id="cpRe" name="cpRe" class="form19"></span><br/><br/>

<span style="margin-left: 23.5%">Whereas (name of the child)<input type="text" id="cName" name="cName" value="<s:property value="f19dto.cname"/>" class="form19">has on <input type="text" id="cpDate" name="cpDate" class="form19">(date) been found to be in need</span><br/>
<span>of &nbsp; care &nbsp; and &nbsp; protection, &nbsp; and &nbsp; is &nbsp; placed &nbsp; under &nbsp; the &nbsp; care &nbsp; and &nbsp; supervision &nbsp; of &nbsp; (name)<input type="text" id="cpFat" name="cpFat" size="29" class="form19"></span><br/>
<span>(address)<input type="text" id="cpFatAddress" name="cpFatAddress" size="26" class="form19">on executing a bond by the said<input type="text" id="cpCname" name="cpCname" class="form19"> and the Committee is satisfied</span><br/>
<span>that it is expedient to deal with the said child by making an order placing him/her under supervision.</span><br/>
<p>Reason for the child being produced before the CWC<input type="text" id="cpCwc" size="116" class="form19"></p>
<span style="margin-left: 23.5%">It &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;hereby &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ordered &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; the&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; said &nbsp;&nbsp;&nbsp;&nbsp; child&nbsp; &nbsp;&nbsp;&nbsp;be&nbsp; &nbsp;&nbsp; placed&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; under&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; supervision &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;of</span><br/>
<span>(name)<input type="text" id="cpFat1" name="cpFat1" size="27" class="form19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (address)<input type="text" id="cpFatAddress1" name="cpFatAddress1" size="30" class="form19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; period&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;of</span><br/>
<span><input type="text" id="cpPer" name="cpPer" class="form19"> This shall be subject to the following conditions that:</span><br/>
<span>1.&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; child&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; along&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; order&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bond,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if&nbsp;&nbsp;&nbsp;&nbsp; any,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; executed &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;&nbsp; the</span><br/>
<span style="margin-left: 19.8%">said<input type="text" id="cpCname1" name="cpCname1" size="26" class="form19">shall&nbsp;&nbsp;&nbsp; be&nbsp;&nbsp;&nbsp; produced&nbsp;&nbsp;&nbsp;&nbsp; before&nbsp;&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp; Committee&nbsp;&nbsp;&nbsp;&nbsp; as&nbsp;&nbsp;&nbsp; and&nbsp;&nbsp;&nbsp;&nbsp; when&nbsp;&nbsp;&nbsp;&nbsp; required&nbsp;&nbsp;&nbsp; by&nbsp;&nbsp; the</span><br/>
<span style="margin-left: 19.8%">person executing the bond</span><br/>
<span>2.&nbsp;&nbsp; the child shall reside at<input type="text" id="cpFatAddress2" name="cpFatAddress2" class="form19"> for a period of<input type="text" id="cpPer" name="cpPer1" class="form19"></span><br/>                           
<span>3.&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp; child&nbsp; &nbsp;shall&nbsp;&nbsp; not&nbsp;&nbsp; be&nbsp;&nbsp; allowed&nbsp;&nbsp; to&nbsp; &nbsp;quit&nbsp;&nbsp; the &nbsp;&nbsp;district&nbsp;&nbsp; jurisdiction&nbsp; of<input type="text" id="cpJurisdiction" class="form19">without the permission of</span><br/>
<span style="margin-left: 19.8%">the Committee.</span><br/>
<span>4.&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; child&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; shall&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; go&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;school/ vocational&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; training&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; centre&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;regularly.&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;The &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;child&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; shall&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; attend</span><br/>
<span style="margin-left: 19.8%"><input type="text" id="cpSchoolName" name="cpSchoolName" size="28" class="form19">(name&nbsp;&nbsp;&nbsp;&nbsp; of)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; school/ vocational &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; training&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; centre&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; (if &nbsp;&nbsp;&nbsp;&nbsp;already&nbsp;&nbsp;&nbsp;&nbsp; identified)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at</span><br/>
<span style="margin-left: 19.8%"><input type="text" id="cpSchoolAddress" name="cpSchoolAddress" size="28" class="form19">(address of school/ vocational training centre).</span><br/>
<span>5.&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp; person&nbsp; &nbsp;&nbsp;&nbsp;under&nbsp;&nbsp;&nbsp; whose&nbsp;&nbsp; &nbsp;care&nbsp;&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp; child&nbsp;&nbsp;&nbsp; is&nbsp;&nbsp;&nbsp; placed&nbsp;&nbsp;&nbsp;&nbsp; shall&nbsp;&nbsp;&nbsp; arrange&nbsp;&nbsp;&nbsp; for&nbsp;&nbsp;&nbsp; the&nbsp;&nbsp; &nbsp;&nbsp;proper&nbsp;&nbsp;&nbsp;&nbsp; care,&nbsp;&nbsp;&nbsp;&nbsp; education&nbsp;&nbsp;&nbsp;&nbsp; and</span><br/>
<span style="margin-left: 19.8%">welfare of the child.</span><br/>
<span>6.&nbsp;&nbsp; the&nbsp; &nbsp;&nbsp;child&nbsp;&nbsp;&nbsp; shall &nbsp;&nbsp;&nbsp; not &nbsp;&nbsp;&nbsp; be&nbsp;&nbsp; &nbsp;allowed&nbsp;&nbsp;&nbsp; to&nbsp;&nbsp;&nbsp;associate&nbsp;&nbsp;&nbsp; with&nbsp;&nbsp;&nbsp; undesirable&nbsp;&nbsp; &nbsp;characters &nbsp;&nbsp;&nbsp; and&nbsp;&nbsp;&nbsp; shall&nbsp;&nbsp;&nbsp; be&nbsp;&nbsp; &nbsp;&nbsp;prevented&nbsp;&nbsp;&nbsp; &nbsp;from</span><br/>
<span style="margin-left: 19.8%">coming in conflict with law.</span><br/>
<span>7.&nbsp;&nbsp; the&nbsp; &nbsp;&nbsp;child&nbsp;&nbsp;&nbsp;&nbsp; shall&nbsp;&nbsp;&nbsp;&nbsp; be&nbsp;&nbsp;&nbsp;&nbsp; prevented&nbsp;&nbsp;&nbsp;&nbsp; from&nbsp;&nbsp;&nbsp;&nbsp; taking&nbsp;&nbsp; &nbsp;&nbsp;narcotic&nbsp;&nbsp;&nbsp;&nbsp; drugs&nbsp;&nbsp;&nbsp; &nbsp;or &nbsp;&nbsp;&nbsp;&nbsp; psychotropic&nbsp; &nbsp;&nbsp;substances&nbsp;&nbsp;&nbsp;&nbsp; or &nbsp;&nbsp;&nbsp;&nbsp;any&nbsp;&nbsp;&nbsp; other</span><br/>
<span style="margin-left: 19.8%">intoxicants.</span><br/>
<span>8.&nbsp;&nbsp; the&nbsp;&nbsp;&nbsp; directions&nbsp;&nbsp;&nbsp; given&nbsp;&nbsp;&nbsp; by&nbsp;&nbsp;&nbsp; &nbsp;the&nbsp;&nbsp;&nbsp;&nbsp; Committee&nbsp;&nbsp;&nbsp; from&nbsp;&nbsp;&nbsp; time&nbsp;&nbsp;&nbsp; to&nbsp;&nbsp;&nbsp; time,&nbsp;&nbsp;&nbsp; for&nbsp;&nbsp;&nbsp;the&nbsp;&nbsp; &nbsp;due&nbsp;&nbsp;&nbsp; observance&nbsp;&nbsp;&nbsp; of&nbsp;&nbsp; &nbsp;the&nbsp;&nbsp; &nbsp;conditions</span><br/>
<span style="margin-left: 19.8%">mentioned above, shall be carried out.</span><br/>
<br/>
<span>Dated this<input type="text" id="cpDay" name="cpDay" size="16">day of <input type="text" id="cpMon" name="cpMon" size="16">20<input type="text" id="cpYr" name="cpYr" size="16"></span>   <br/>                   
<span style="margin-left: 76%"><b>(Signature)</b></span><br/>
<span style="margin-left: 70.2%"><b>Chairperson/ Member</b></span><br/> 
<span style="margin-left: 68.5%"><b>Child Welfare Committee</b></span><br/>  
 
<span style="margin-left: 22%">? Additional conditions, if any may be inserted by the Child Welfare Committee </span>
<br/><br/>
<span style="margin-left: 45%"><input type="submit" name="save" value="Save"><input type="reset" name="clear" Value="Clear"></span>
</form>
    </body>
</html>
