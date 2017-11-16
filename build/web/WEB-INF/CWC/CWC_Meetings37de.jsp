<%-- 
    Document   : Form37
    Created on : 18 Sep, 2017, 3:13:07 PM
    Author     : Rajat Bansal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FORM 37</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
        <style>
            
           
            span { margin-left:18%;}
            .form37{
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
<h4>FORM 37<br/>
   [Rule 25(2)]<br/>
   ORDER OF AFTER CARE PLACEMENT<br/>
                  </h4>
    </center>            
            <span>The child (name)<input type="text" id="cpCname" name="cpCname" size="16" class="form37">d/o or s/o<input type="text" id="cpGname" name="cpGname" size="20" class="form37">has/ will be completing 18 years of age on (date)</span><br/>
           <span><input type="text" id="cpDate" name="cpDate" size="18" class="form37"> She/ he &nbsp; is &nbsp; still &nbsp; in &nbsp; need &nbsp; of &nbsp; care &nbsp; and &nbsp; protection &nbsp; for &nbsp; the &nbsp; purpose &nbsp; of &nbsp; rehabilitation &nbsp; and</span><br/>
<span>reintegration and specifically for<input type="text" id="cpPurpose" name="cpPurpose" size="20" class="form37">(specify the purpose). She/he is placed in (name of organization)</span><br/>
<span><input type="text" id="cpOname" name="cpOname" size="20" class="form37">for &nbsp; providing &nbsp; aftercare. The &nbsp; In-charge &nbsp; of &nbsp; the Organization is directed to admit the child and</span><br/>
<span>provide &nbsp; all &nbsp; possible &nbsp; opportunities &nbsp; for &nbsp; her/ his &nbsp; rehabilitation &nbsp; and &nbsp; reintegration &nbsp; in &nbsp; its &nbsp; truest &nbsp; sense. &nbsp; The &nbsp; person</span><br/>
<span>shall be provided &nbsp; all &nbsp; these &nbsp; opportunities &nbsp; maximum &nbsp; till &nbsp; the &nbsp; age &nbsp; of &nbsp; 21 &nbsp; years &nbsp; only &nbsp; or &nbsp; till &nbsp; reintegration &nbsp; in &nbsp; the</span><br/>
<span>society, whichever is earlier. The in-charge &nbsp; will &nbsp; send &nbsp; half &nbsp; yearly &nbsp; report &nbsp; on &nbsp; the &nbsp; status &nbsp; of &nbsp; the &nbsp; child/youth &nbsp; to &nbsp; the</span><br/>
<span>Child Welfare Committee.</span><br/><br/>
<span>The State/ District Child Protection Unit is hereby directed to release Rs<input type="text" id="cpRupees" name="cpRupees" size="20" class="form37"> &nbsp;per month towards after-</span><br/>
<span>care support to the said person for a period of<input type="text" id="cpPeriod" name="cpPeriod" size="20" class="form37">(days/month) and carryout necessary follow up and</span><br/>
<span>for the said purpose shall open a bank account in the name of the person<input type="text" id="cpBname" name="cpBname" size="20" class="form37"></span><br/><br/><br/>
<span style="margin-left: 45.2%"><b>Children’s Court/ Principal Magistrate, Juvenile Justice Board/</b></span><br/>
<span style="margin-left: 52.3%"><b>Chairperson/Member, Child Welfare Committee</b></span><br/>
<span>Copy to: State/ District Child Protection Unit or concerned Department of the State Government</span><br/><br/>
<span style="margin-left: 45%"><input type="submit" name="save" value="Save"><input type="reset" name="clear" Value="Clear"></span>
</form>
    </body>
</html>

   
