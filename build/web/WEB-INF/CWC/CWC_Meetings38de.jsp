<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : Form38(1) 
    Created on : 18 Sep, 2017, 3:13:07 PM
    Author     : Rajat Bansal
--%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
<glass fish server error solution>netstat -aon | find ":8080" |find "LISTENING"
-->
<html>
    <head>
        <title>Form 38 1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #form_detail  { margin-left: 18%;
                            border:1px solid black;}
            table,tr,td,th{ border: 1px solid black;
                            border-collapse: collapse;
                            padding:5px; 
                            text-align: left;
            }
            .form381 {
                border:none;
            }
            span { padding-left:4%; }         


        </style>
    </head>
    <body>
    <center>
        <h4>FORM 38</h4> 
        <h4>[Rule 27(2)]</h4>
        APPLICATION FOR FIT FACILITY INCLUDING GROUP FOSTER CARE
    </center><br/>
    <form action="Form 38_2.jsp" method="post">
        <table id="form_detail">
            <tr><th style="padding-bottom:5%">1.</th><th style="padding-bottom:5%;border-right:none">Detail of Institution/ Agency/ Organization which seeks recognition as fit facility</th><td style="border-left:none"></td></tr>
            <tr><td>1.a</td><td>Name of the Institution /Agency/ Organization</td><td><input type="text" name="cpOname" id="cpOname" class="form381"></td></tr>
            <tr><td>1.b</td><td>Registration number and date of Registration of the Institution/<br/>
                    Organization under the relevant Act<br/><br/>
                    <b>(Annex- Relevant documents of registration, bye-laws,<br/>
                        memorandum of association)</b></td>
                <td style="padding-top: .1%"> <input type="text" name="cpOrno" id="cpOrno" class="form381"><br/>
                    <input type="text" name="cpOrdate" id="cpOrdate" class="form381"><br/><br/>
                    <input type="File" name="cpOama" id="cpOama" class="form381"></td></tr>

            <tr><td>1.c</td><td>Complete address of the Applicant/ Institution/ organization</td><td><input type="text" name="cpOaddress" id="cpOaddress" class="form381"></td></tr>
            <tr><td>1.d</td><td>STD code/ Telephone No.</td><td><input type="text" name="cpTel" id="cpTel" class="form381"></td></tr>
            <tr><td>1.e</td><td>STD code Fax No.</td><td><input type="text" name="cpFax" id="cpFax" class="form381"></td></tr>
            <tr><td>1.f</td><td>E-mail address</td><td><input type="text" name="cpEmail" id="cpEmail" class="form381"></td></tr>
            <tr><td>1.g</td><td>Whether the organization is of all India character, if yes, give address<br/>
                    of its branches, in other states</td><td><input type="text" name="cpIaddress" id="cpIaddress" class="form381"></td></tr>
            <tr><td>1.h</td><td>If the Institution had been denied recognition earlier? If yes<br/>
                    <span> i.&emsp; Reference No. of application leading to denial of recognition </span> <br/>
                    <span> ii.&nbsp;&nbsp;&nbsp; Date of denial </span><br/>
                    <span> iii.&nbsp;&nbsp; Who had denied the recognition </span><br/>
                    <span> iv. &nbsp;&nbsp; Reason for denial of recognition </span> </td><td style="padding-top:2%"><input type="text" name="cpRefno" id="cpRefno" class="form381"><br/>
                    <input type="text" name="cpDenial" id="cpDenial" class="form381"><br/>
                    <input type="text" name="cpDname" id="cpDname" class="form381"><br/>
                    <input type="text" name="cpReason" id="cpReason" class="form381"></td></tr>
            <tr><th>2.</th><th style="border-right:none">Details of the proposed fit facility:</th><td style="border-left:none"></td></tr>
            <tr><td>2.a</td><td>Complete address/ location of proposed Fit Facility</td><td><input type="text" name="cpPaddress" id="cpPaddress" class="form381"></td></tr>
            <tr><td>2.b</td><td>STD code/ telephone no</td><td><input type="text" name="cpPtel" id="cpPtel" class="form381"></td></tr>
            <tr><td>2.c</td><td>STD code fax no</td><td><input type="text" name="cpPfax" id="cpPfax" class="form381"></td></tr>
            <tr><td>2.d</td><td>E-mail</td><td><input type="text" name="cpPemail" id="cpPemail" class="form381"></td></tr>
            <tr><th style="padding-bottom:5%">3.</th><th style="padding-bottom:5%;border-right:none">Connectivity (Name and Distance from the proposed Fit Facility):</th><td style="border-left:none"></td></tr>
            <tr><td>3.a</td><td>Main Road</td><td><input type="text" name="cpCmrd" id="cpCmrd" class="form381"></td></tr>
            <tr><td>3.b</td><td>Bus –stand</td><td><input type="text" name="cpCbstn" id="cpCbstn" class="form381"></td></tr>
            <tr><td>3.c</td><td>Railway Station</td><td><input type="text" name="cpCrstn" id="cpCrstn" class="form381"></td></tr>
            <tr><td>3.d</td><td>Any landmark</td><td><input type="text" name="cpClmrk" id="cplmrk" class="form381"></td></tr>
            <tr><th style="padding-bottom:5%">4.</th><th style="padding-bottom:5%;border-right:none">Infrastructure:</th><td style="border-left:none"></td></tr>
            <tr><td>4.a</td><td>No. of Rooms (Mention with measurement)</td><td><input type="text" name="cpInr" id="cpInr" class="form381"></td></tr>
        </table>
         <table id="form_detail1">
                <tr><td>4.b</td><td>No. of toilets (mention with measurement)</td><td><input type="text" name="cpIntlts" id="cpIntlts" class="form382"></td></tr>
                <tr><td>4.c</td><td>No. of Kitchens (mention with measurement)</td><td><input type="text" name="cpInk" id="cpInk" class="form382"></td></tr>
                <tr><td>4.d</td><td>No. of sick room<td><input type="text" name="cpIsrm" id="cpIsrm" class="form382"><br/>
                <tr><td>4.e</td><td><b>Annex -Copy of blue print of the building (authentic sketch</b><br/>
                        <b>plan of building)</b></td><td><input type="File" name="cpIapob" id="cpIapob" class="form382"></tr>
                <tr><td>4.f</td><td>Arrangement to deal with unforeseen disaster also mention the<br/>
                        kind of arrangement made:<br/>
                        <span>  i) &emsp; Fire</span><br/>
                        <span> ii) &nbsp; &nbsp; Earth quake</span><br/>
                        <span> iii) &nbsp;&nbsp; Any other arrangement</span></td><td style="padding-top:3%">
                        <input type="text" name="cpIdfire" id="cpIfire" class="form382"><br/>
                        <input type="text" name="cpIdeqke" id="cpIeqke" class="form382"><br/>
                    <input type="text" name="cpIdoa" id="cpIoa" class="form382"></tr>                                                
                <tr><td>4.g</td><td>Arrangement of Drinking water <b>Annex-Certified from public</b><br/>
                        <b>health engineering (PHE) Department.</b></td><td><input type="File" name="cpIadw" id="cpIadw" class="form382"></td></tr>
                <tr><td>4.h</td><td>Arrangement to maintain sanitation and hygiene:<br/>
                        <span> i. &emsp; Pest Control </span><br/>
                        <span> ii. &nbsp; &nbsp; Waste disposal </span><br/>
                        <span> iii.&nbsp;&nbsp;&nbsp; Storage area </span> <br/>
                        <span> iv. &nbsp;&nbsp; Any other arrangement </span></td>
                    <td><input type="text" name="cpIshpc" id="cpIshpc" class="form382"><br/>
                        <input type="text" name="cpIshwd" id="cpIshwd" class="form382"><br/>
                        <input type="text" name="cpIshsa" id="cpIshsa" class="form382"><br/>
                        <input type="text" name="cpIshoa" id="cpIshoa" class="form382"></td></tr>

                <tr><td>4.i</td><td>Rent agreement/ building maintenance estimate (whichever is<br/>
                        applicable)<b>(Annex- copy of Rent agreement)</b> </td>
                    <td><input type="File" name="cpIara" id="cpIara" class="form382"></td></tr>
                <tr><th>5.</th><th style="border-right:none">Capacity of the Fit Facility</th><td style="border-left:none"></td></tr>
                <tr><th>6.</th><th style="border-right:none">Facilities Available (would depend on the purpose for which recognition as fit facility is<br/>
                        to be given)</th><td style="border-left:none"></td></tr>
                <tr><td>6.a</td><td>Any other facility that shall impact on the overall development of<br/>
                        the child</td><td><input type="text" name="cpFodc" id="cpFodc" class="form382"></td></tr>
                <tr><th>7.</th><th style="border-right:none">Staffing</th><td style="border-left:none"></td></tr>
                <tr><td>7.a</td><td>Detailed staff list</td><td><input type="text" name="cpSdsl" id="cpSdsl" class="form382"></td></tr>
                <tr><td>7.b</td><td>Name of partner organizations</td><td><input type="text" name="cpSpo" id="cpSpo" class="form382"></td></tr>
                <tr><th>8.</th><th style="border-right:none">Background of the Applicant</th><td style="border-left:none"></td></tr>
                <tr><td>8.a</td><td>Major activities of the organization in last two years</td><td><input type="text" name="cpBa2yr" id="cpBa2yr" class="form382"></td></tr>
                <tr><td>8.b</td><td>An updated list of members of the management committee/<br/>
                        governing body in the enclosed format <b>(Annex- resolution of the</b><br/>
                        <b>annual meeting)</b></td><td><input type="File" name="cpBaam" id="cpBaam" class="form382"></td></tr>
                <tr><td>8.c</td><td>List of assets/ infrastructure of the organization</td>
                    <td><input type="text" name="cpBlao" id="cpBlao" class="form382"></td></tr>
                <tr><td>8.d</td><td>If the organization is registered under the Foreign Contribution<br/>
                        (Regulation) Act, 1976 <b>(Annex – certificate of registration)</b></td>
                    <td><input type="File" name="cpBar" id="cpBar" class="form382"></td></tr>
                <tr><td>8.e</td><td>Details of foreign contribution received last two years <b>(Annex</b><br/>
                        <b>relevant documents)</b></td>
                    <td><input type="File" name="cpBard" id="cpBard" class="form382"></td></tr>
            </table><br/>
                        <table id="form_detail2">
                <tr><td>8.f</td><td>List of other sources of grant- in – aid funding (if any )with the<br/>
                        name of the scheme / project , purpose amount, etc. (separately)</td><td><input type="text" name="cpBaaf" id="cpBaaf" class="form383"></td></tr>
                <tr><td>8.g</td><td>Details of existing bank account of the agency indicating branch<br/>
                        code account no.</td><td><input type="text" name="cpBba" id="cpBba" class="form383"/></td></tr>
                <tr><td>8.h</td><td>Whether the agency agrees to open a separate bank account for<br/>
                        the grant proposed<td><input type="text" name="cpBaba" id="cpBaba" class="form383"/><br/>
                <tr><td>8.i</td><td><b>Annex -Photocopy of Accounts of last three years:</b><br/>
                        <span id="o"><b>i. &emsp; Auditors report</b></span><br/>
                        <span id="o"><b>ii. &emsp; Income and</b></span><br/>
                        <span id="o"><b> &emsp;&emsp;expenditure account</span></b><br/>
                        <span id="o"><b>iii.&nbsp;&nbsp;&nbsp; Receipt and payment</span></b><br/>
                        <span id="o"><b> &emsp;&emsp; account</b></span><br/>
                        <span id="o"><b> iv.&nbsp;&nbsp;&nbsp; Balance sheet of the</b></span><br/>
                        <span id="o" style="padding-left:4%"><b>  &emsp;&emsp; organization.</b></span></td>
                    <td style='padding-top: .1%'><input type="File" name="cpBar" id="cpBar" class="form383"/><br/>
                        <input type="File" name="cpBiea" id="cpBiea" class="form383"/><br/>
                        <input type="File" name="cpBrpa" id="cpBrpa" class="form383"/><br/>
                        <input type="File" name="cpBbso" id="cpBbso" class="form383"/></td></tr>

            </table><br/>
            <span id="p" style="margin-left:-8%;word-spacing:3px">I have read and understood The Juvenile Justice (Care and Protection of Children Act), 2015; and</span><br/>
            <span id="p" style="margin-left:-29%;word-spacing:3px">the Juvenile Justice (Care and Protection of Children) Rules, 2016.</span><br/>
            <span id="p" style="margin-left: -8%;word-spacing:5px">………………………………..(Name of the Organization / Institution) has complied with all the</span><br/>
            <span id="p" style="word-spacing:1.3px">requirements to be granted recognition as a Fit Facility under the Juvenile Justice (Care and Protection of</span><br/>
            <span id="p" style="margin-left:-18.9%">Children) Act, 2015 and the Juvenile Justice (Care and Protection of Children) Rules, 2016.</span><br/>
            <span id="p" style="margin-left:-8%;word-spacing:5px">I declare that no person associated with the organization has been previously convicted or has</span><br/>
            <span id="p" style="word-spacing:1px">been involved in any immoral act or in any act of child abuse or employment of child labour or an offence</span><br/>
            <span id="p" style="margin-left:-11.5%;word-spacing:2.3px">involving moral turpitude and that the organization has not been blacklisted by the Central or the State</span><br/>
            <span id="p" style="margin-left:-47%">Government at any point of time.</span><br/><br/><br/>
            <span id="p" style="margin-left:-8%;word-spacing:1.3px">I undertake to abide by all the conditions laid down by the Central/ State Act, Rules, Guidelines and</span><br/>
            <span id="p" style="margin-left:-48%">Notifications in this regard.</span><br/>
            <span id="p" style="margin-left:-8%;word-spacing:5px">I undertake to abide by the orders passed by the Juvenile Justice Board or the Child Welfare</span><br/>
            <span id="p" style="margin-left:-47%">Committee from time to time.</span><br/>
            <span id="p" style="margin-left:-30%">Signature of the authorized signatory: ……………………………</span><br/>
            <span id="p" style="margin-left:-58%">Name:<span><br/>
                    <span id="p" style="margin-left:-55%">Designation:</span><br/>
                    <span id="p" style="margin-left:-57%">Address:</span><br/>
                    <span id="p" style="margin-left:-57%">District:</span><br/>
                    <span id="p" style="margin-left:-58.5%">Date:</span><br/>
                    <span id="p" style="margin-left:-55%">Office stamp:</span><br/>
                    <span id="p" style="margin-left:-55%">Signature of:</span><br/>
                    <span id="p" style="margin-left:-40.5%">Witness no.1: …………………………….</span><br/>
                    <span id="p" style="margin-left:-40%">Witness no.2: ………………………………</span><br/>
        <span style="margin-left: 45%"><input type="submit" name="submit" value="Next"><input type="reset" name="clear" Value="Clear"></span>
    </form>
</body>
</html>

