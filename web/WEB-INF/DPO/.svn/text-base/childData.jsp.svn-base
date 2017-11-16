<%-- 
    Document   : childData
    Created on : May 31, 2011, 12:17:22 PM
    Author     : Ramu Parupalli
--%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<!--head>
<link href="style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="JQscript/jquery.ui.all.css">
	<script src="JQscript/jquery-1.4.4.js"></script>
	<script src="JQscript/jquery.ui.core.js"></script>
	<script src="JQscript/jquery.ui.widget.js"></script>
	<script src="JQscript/jquery.ui.datepicker.js"></script>
	<link rel="stylesheet" href="JQscript/demos.css">
   
       
           <script>
	$(function() {
                    $("#datepicker").datepicker({
                            showOn: "button",
                            buttonImage: "images/calendar.gif",
                            buttonImageOnly: true
                    });
            });
	</script>
	     </head-->
             
             
             <!--
             
             this.siChildDetailsPK = siChildDetailsPK;
        this.cwcJjbOrderNo = cwcJjbOrderNo;
        this.orderDate = orderDate;
        this.undersection = undersection;
        this.natureOffence = natureOffence;
        this.childName = childName;
        this.fatherName = fatherName;
        this.permanentAddress = permanentAddress;
        this.presentAddress = presentAddress;
        this.religion = religion;
        this.dob = dob;
        this.caste = caste;
        this.age = age;
        this.gender = gender;
        this.previousInstiDetails = previousInstiDetails;
        this.lastModifiedBy = lastModifiedBy;
        -->
        <body>   
            <s:form name="sicd" action="SICD-Save" method="POST"  theme="css_xhtml" id="f1">
             <table>
                 <tr>
                     <td align="right"><s:text name="package.label.selectedChProfId" />:</td>
                      <td>
                          <s:textfield name="childProfileId" id="childProfileId"/>
                      </td>
                   </tr>
       <tr><td align="right"><s:text name="package.label.chDetCWCJJBOrdNo" />:</td><td><s:textfield name="cwcJjbOrderNo"/></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBOrdDat" />:</td><td><s:textfield name="orderDate"/></td></tr>
       <tr><td align="right"><s:text name="package.label.chDetCWCJJBUndSec" />:</td><td><s:textfield name="undersection"/></td></tr>
      <tr><td align="right"><s:text name="package.label.chDetCWCJJBOffNat" />:</td><td><s:textarea name="natureOffence" cols="20" rows="4" value="In Case Juvenile In Conflict With Law please Enter"/></td></tr>
      <tr><td align="right"><s:text name="package.label.chDetCWCJJBFirsNam" />:</td><td><s:textfield  id="childName" name="childName"/></td></tr>
      <tr><td align="right"><s:text name="package.label.chDetCWCJJBLastNam" />:</td><td><s:textfield  id="childName" name="childSurname"/></td></tr>
       <tr><td align="right"><s:text name="package.label.chDetCWCJJBFathNam" />:</td><td><s:textfield id="fatherName" name="fatherName"/></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBPerAdd" />:</td><td><s:textarea name="permanentAddress" id="addrParents" cols="20" rows="4"/></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBAddBefCha" />:</td><td><s:textarea name="presentAddress" cols="20" rows="4"/></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBReli" />:</td><td>
                <select id="religion" name="religion">
                    <option value="1">--<s:text name="global.option.headerKey"/>--</option>
                    <option value="<s:text name="global.selectOption.chDet_cwcjjbHin"/>"><s:text name="global.selectOption.chDet_cwcjjbHin"/></option>
                    <option value="<s:text name="global.selectOption.chDet_cwcjjbMus"/>"><s:text name="global.selectOption.chDet_cwcjjbMus"/></option>
                    <option value="<s:text name="global.selectOption.chDet_cwcjjbChr"/>"><s:text name="global.selectOption.chDet_cwcjjbChr"/></option>
                    <option value="<s:text name="global.selectOption.chDet_cwcjjbJai"/>"><s:text name="global.selectOption.chDet_cwcjjbJai"/></option>
                    <option value="Other"><s:text name="global.selectOption.chDet_cwcjjbOth"/></option>
                </select>
            
            </td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBCast" />:</td><td><s:textfield id="caste" name="caste"  /></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBAge" />:</td><td><s:textfield id="age" name="age" /></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBGen" />:</td><td>
                <input type="radio" name="gender" value="M"/> <s:text name="label.male"/>
                <input type="radio" name="gender" value="F"/> <s:text name="label.female"/></td></tr>
        <tr><td align="right"><s:text name="package.label.chDetCWCJJBPreInsDet" />:</td><td><s:textarea name="previousInstiDetails" cols="20" rows="4"  value="if any"/></td></tr>   
               
              <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/></td></tr></table>
             </table>
               </s:form>
</body></html>