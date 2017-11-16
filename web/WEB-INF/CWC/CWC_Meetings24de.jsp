
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : Form24
    Created on : 18 Sep, 2017, 3:13:07 PM
    Author     : Rajat Bansal
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>FORM 24</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <style>
            span { margin-left:18%;
                   word-spacing: 7px;}
            .form24{
          border-top-style:none;
          border-left-style:none;
          border-right-style:none;
          border-bottom-style: dotted;
          border-bottom-color: black;
            }
               .form{
        word-spacing: normal;
            }
        </style>
    </head>
    <body>
        <br/>
        <form action="Controller.jsp" method="post" name="f">   
    <center>
<h4>FORM 24<br/>
   [Rule 19(22)]<br/>
   DEED OF SURRENDER<br/>
                  </h4>
        Declaration by Person surrendering the child or children
    </center>   
            <span class="form">Case No<input type="text" id="cpNo" name="cpNo" size="14" class="form24"></span><br/>
<span class="form">In Re<input type="text" id="cpRe" name="cpRe" size="15" class="form24"></span><br/>
<span style="word-spacing:5px">I/We, the undersigned<input type="text" id="cpSname" name="cpSname" size="13" class="form24">Family name/First name(s)<input type="text" id="cpGname" name="cpGname" size="13" class="form24">residing at, surrender the child</span><br/>
<span>(named)<input type="text" id="cpCname" name="cpCname" size="13" class="form24">Aged<input type="text" id="cpCage" name="cpCage" size="5" class="form24">having date of birth<input type="text" id="cpCbirth" name="cpCbirth" size="13" class="form24">for the reason:<input type="text" id="cpReason" name="cpReason" size="16" class="form24"><br/>      
<span>(ii) &nbsp; I/we are surrendering my/our child or children on our own and without any coercion, compulsion,</span><br/>
<span style="margin-left:22%">threat, payment, consideration, compensation of any kind;</span><br/>
<span>(iii)&emsp;&nbsp;I/we have been counselled and informed about the implication that I/we can withdraw our consent</span><br/>
<span style="margin-left:22%">until 60th day of this surrender deed after which my/our consent will be irrevocable and I/we shall</span><br/>
<span style="margin-left:22%">have no claim over the child or children.</span><br/>
<span>(iv) &nbsp;I/we have been made aware of the implications of surrender and are conscious of the fact that after</span><br/>
<span style="margin-left:22%">the 60th day from date of the surrender deed, the legal parent-child relationship between my/our</span><br/>
<span style="margin-left:22%">child or children and me/us will be terminated.</span><br/>
<span>(v) &nbsp; I/we understand that my/our child may be adopted by person(s) residing in India or abroad and</span><br/>
<span style="margin-left:22%">give my/our consent for this purpose.</span><br/>
<span>(vi) &nbsp; I/we understand that the adoption of my/our child will create a permanent parent-child relationship</span><br/>
<span style="margin-left:22%">with the adoptive parent(s) and then cannot claim back the child.</span><br/>
<span>(vii) &nbsp; I/we wish/ do not wish (please tick whichever is applicable) my/our identity and address to be</span><br/>
<span style="margin-left:22%">disclosed to my/our child when he/she returns for root search.</span><br/>
<span>(viii) &nbsp;I/we declare that I/We have read the above statements carefully and have fully understood the</span><br/>
<span style="margin-left:22%">same.</span><br/>
<span>Done at <input type="text" id="cpPlace" name="cpPlace" size="16" class="form24"> on <input type="text" id="cpDate" name="cpDate" size="16" class="form24"></span><br/>
<span style="margin-left:58.8%" class="form">[Signature or Thumb Impression of</span><br/>
<span style="margin-left:65%" class="form">surrendering person(s)]</span><br/>
<span class="form">2. Declaration by Witnesses</span><br/>
<span class="form">We the undersigned have witnessed the above surrender.</span><br/>
<span class="form">(a) Signature, Name and Address of the first witness</span><br/>
<span class="form"><input type="text" id="cpWname" name="cpWname" size="70" class="form24"></span><br/>
<span class="form"><input type="text" id="cpWaddress" name="cpWaddress" size="70" class="form24"></span><br/>
<span class="form">(b) Signature, Name and Address of the second witness</span><br/>
<span><input type="text" id="cpWname1" name="cpWname1" size="70" class="form24"></span><br/>
<span><input type="text" id="cpWaddress1" name="cpWaddress1" size="70" class="form24"></span><br/>
<span class="form">3. Certification of child welfare committee</span><br/>
<span class="form">We hereby certify that the person and the witness(es) named or identified above appeared before me this</span><br/>
<span class="form">date and signed this document in our presence.</span><br/>
<span class="form">Done at <input type="text" id="cpPlace" name="cpPlace" size="16" class="form24"> on<input type="text" id="cpDate" name="cpDate" size="16" class="form24"></span><br/>
<span class="form" style="margin-left:66%"><b>Signature & Seal of</b></span><br/>
<span style="margin-left: 64.4%" class="form"><b>Members/Chairperson</b></span><br/>
<span style="margin-left: 63%" class="form"><b>Child Welfare Committee</b></span> <br/>                               
<span style="margin-left: 45%"><input type="submit" name="save" value="Save"><input type="reset" name="clear" Value="Clear"></span>
</form>
    </body>
</html>

   

