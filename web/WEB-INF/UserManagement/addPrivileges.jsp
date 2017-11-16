<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>

<link href="css/textcss.css" rel="stylesheet" media="screen">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Privilage</title>
<script language="javascript">

function linechanged()
{


document.forms[0].submit();

}
function wschanged()
{


document.forms[0].submit();

}
function submitcall()
{
document.forms[0].hidesubmit.value="submitted";
//alert(document.forms[0].hidden.value);
}
</script>
<script type="text/javascript">
<!--

// function switchDiv()
//  this function takes the id of a div
//  and calls the other functions required
//  to show that div
//
function switchDiv(div_id)
{

  var style_sheet = getStyleObject(div_id);
  if (style_sheet)
  {
    hideAll();
    changeObjectVisibility(div_id,"");
  }
  else 
  {
    alert("sorry, this only works in browsers that do Dynamic HTML");
  }
}

// function hideAll()
//  hides a bunch of divs
//
function hideAll()
{
   changeObjectVisibility("procurement","none");
   changeObjectVisibility("manufacturing","none");
    changeObjectVisibility("inventory","none");
     changeObjectVisibility("sales","none");
   changeObjectVisibility("shippingreceiving","none");
   changeObjectVisibility("fixedasset","none");
 changeObjectVisibility("payroll","none");
   
   
}

// function getStyleObject(string) -> returns style object
//  given a string containing the id of an object
//  the function returns the stylesheet of that object
//  or false if it can't find a stylesheet.  Handles
//  cross-browser compatibility issues.
//
function getStyleObject(objectId) {
  // checkW3C DOM, then MSIE 4, then NN 4.
  //
  if(document.getElementById && document.getElementById(objectId)) {
	return document.getElementById(objectId).style;
   }
   else if (document.all && document.all(objectId)) {  
	return document.all(objectId).style;
   } 
   else if (document.layers && document.layers[objectId]) { 
	return document.layers[objectId];
   } else {
	return false;
   }
}

function changeObjectVisibility(objectId, newVisibility) {
    // first get a reference to the cross-browser style object 
    // and make sure the object exists
    var styleObject = getStyleObject(objectId);
    if(styleObject) {
	styleObject.display = newVisibility;
	return true;
    } else {
	// we couldn't find the object, so we can't change its visibility
	return false;
    }
}
function showsub(div_id,div_id2)
{

 var style_sheet = getStyleObject(div_id);
  if (style_sheet)
  {
  
    if(document.getElementById(div_id2).checked==true)
    {
     
    changeObjectVisibility(div_id,"");
     //checkAll(div_id2);
    }
    else
    {
    
    changeObjectVisibility(div_id,"none");
    }
    
    
}
}
function checkAll(obj)
{
  var selectObject = obj;
  
    if(selectObject)
    {
      var selectCount  = selectObject.length;
      selectObject.checked=value;//if there is only one checkbox to selct or unselect
      
      for (var i = 0; i < selectCount; i++) 
      {
        selectObject[i].checked = value;
      }// end for
    }
}
// -->
</script>
</head>
<body>
  <form action="AddPrivilegeAction.do">
     
     <table  cellspacing="2" cellpadding="2" width="476"  align="center" id="workspace" class="border_table">
    <tr> <td align="left" colspan="2"><font size="1"><s:a class="innerlink" href="mainUser.jsp">user management</s:a>&gt;<s:a class="innerlink" href="#">user</s:a>&gt;add privileges</font></td>
      </tr>
        <tr>
 <th align="right" colspan="2">
   <FONT color="#003366">Add Privilage</FONT>
 </th></tr>
     <tr>
     
     
     
     
     <td colspan="2">
       <FONT size="1" color="#003366">Role</FONT> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select class="fortextfield" name="roleId_txt">
        <!--c:forEach items="${ROLES}" var="role"-->
           <option value=""></option>
         <!--/c:forEach-->
         <option value="End User">End User</option>
       </select>
       </td>
    
     
     
     
     
     
     </tr>
     
      <tr>
     
     
     
     <td valign="top" >
       <P>
         <STRONG><FONT size="2" color="#003366">Select the Department</FONT></STRONG>
         <FONT color="#003366"> </FONT></P>
         <P>
           <input type="radio" onclick="switchDiv('procurement')" name="module" value="Procurement"/>
           <FONT color="#003366"><FONT size="1">Procurement</FONT> </FONT>
</P>
       <P>
         <FONT size="1" color="#003366">
            <input type="radio"  onclick="switchDiv('inventory')" name="module" value="Inventory"/>Inventory
         </FONT>
         </P>
       <P>
         <FONT size="1" color="#003366">
             <input type="radio" onclick="switchDiv('manufacturing')" name="module" value="Manufacturing"/>Manufacturing
         </FONT>
         </P>
         <p>
           <FONT size="1" color="#003366">
            <input type="radio" name="module" onclick="switchDiv('shippingreceiving')" value="Shippingreceiving"/>Shipping &amp; Recieving
           </FONT>
           </p>
         <p>
           <FONT size="1" color="#003366">
             <input type="radio" name="module" onclick="switchDiv('sales')" value="Sales"/>Sales
           </FONT>
           </p>
           <p>
             <FONT size="1" color="#003366">
               <input type="radio" name="module" onclick="switchDiv('fixedasset')" value="FixedAsset"/>FixedAsset
             </FONT>
             </p>
        <P>
           <FONT size="1" color="#003366">
             <input type="radio" name="module" onclick="switchDiv('payroll')" value="Payroll"/>
           Payroll</FONT></P>
        
           
       </td>
    
     
     
     
     
     
    
     
     <td align="left" valign="top" >
     <font  size="1" color="#003366">
<div id="procurement" style="border:thinsolid green;  display:none;" >
  
     <fieldset>
<legend>
  
    Procurement:<s:hidden name="hiddenField"/></legend>
 <fieldset>
<legend>
    <s:checkbox id="requisitionchecked" name="requisition" onchange="showsub('requisition','requisitionchecked')"/>
Requisition</legend>

 
<div id="requisition" style="display:none">
<div><label for="checkbox1" >
        <s:checkbox  name="requisition" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="requisition" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">

  <s:checkbox  name="requisition" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="requisition" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="requisition" value="reports"/>Reports
</label></div>
</div>
</fieldset>
<fieldset>
<legend>
  <s:checkbox id="enquirychecked" name="enquiry" onchange="showsub('enquiry','enquirychecked')"/>
Enquiry</legend>

 
<div id="enquiry" style="display:none">
<div><label for="checkbox1" >
  <s:checkbox  name="enquiry" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="enquiry" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="enquiry" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="enquiry" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="enquiry" value="reports"/>Reports
</label></div>
</div>

</fieldset>

<fieldset>
<legend>
  <s:checkbox id="vendorchecked" name="vendors" onchange="showsub('vendor','vendorchecked')"/>
Vendor</legend>

 
<div id="vendor" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="vendors" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="vendors" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="vendors" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="vendors" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="vendors" value="reports"/>Reports
</label></div>


</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="Quotationchecked" name="Quotation" onchange="showsub('Quotation','Quotationchecked')"/>
Quotation</legend>

 
<div id="Quotation" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="Quotation" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="Quotation" value="addDirect"/>Add Direct
</label></div>
<div><label for="checkbox3" >
  <s:checkbox  name="Quotation" value="delete"/>Delete
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="Quotation" value="modify"/>Modify
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="Quotation" value="view"/>View
</label></div>
<div><label for="checkbox6">
  <s:checkbox  name="Quotation" value="reports"/>Reports
</label></div>
</div>
</fieldset>
<fieldset>
<legend>
  <s:checkbox id="PurchaseOrderchecked" name="purchaseOrder" onchange="showsub('PurchaseOrder','PurchaseOrderchecked')"/>
PurchaseOrder</legend>

 
<div id="PurchaseOrder" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="purchaseOrder" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="purchaseOrder" value="addDirect"/>Add Direct
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="purchaseOrder" value="delete"/>Delete
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="purchaseOrder" value="modify"/>Modify
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="purchaseOrder" value="view"/>View
</label></div>
<div><label for="checkbox6">
  <s:checkbox  name="purchaseOrder" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="Invoicechecked" name="invoice" onchange="showsub('Invoice','Invoicechecked')"/>
Invoice</legend>

 
<div id="Invoice" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="invoice" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="invoice" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="invoice" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="invoice" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="invoice" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="DCchecked" name="dc" onchange="showsub('DC','DCchecked')"/>
DC</legend>

 
<div id="DC" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="dc" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="dc" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="dc" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="dc" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="dc" value="reports"/>Reports
</label></div>
</div>

</fieldset>
</fieldset>
  </div>   
  
  <div id="inventory" style="border:thinsolid green display:none; ">
  
     <fieldset>
<legend>
  
Inventory:<s:hidden name="hiddenField"/></legend>
 <fieldset>
<legend>
  <s:checkbox id="Storechecked" name="store" onchange="showsub('Store','Storechecked')"/>
Store</legend>

 
<div id="Store" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="store" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="store" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="store" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="store" value="view"/>View
</label></div>

</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="stockchecked" name="stock" onchange="showsub('stock','stockchecked')"/>
Stock</legend>

 
<div id="stock" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="stock" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="stock" value="approval"/>Approval
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="stock" value="view"/>View
</label></div>
</div>

</fieldset>

<fieldset>
<legend>
  <s:checkbox id="locatorchecked" name="locator" onchange="showsub('locator','locatorchecked')"/>
Locator</legend>

 
<div id="locator" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="locator" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="locator" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="locator" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="locator" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="ItemMasterchecked" name="itemMaster" onchange="showsub('ItemMaster','ItemMasterchecked')"/>
ItemMaster</legend>

 
<div id="ItemMaster" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="itemMaster" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="itemMaster" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="itemMaster" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="itemMaster" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="itemMaster" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="bomchecked"  onchange="showsub('bom','bomchecked')" name="bom"/>
BOM</legend> 
<div id="bom" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="bom" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="bom" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="bom" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="bom" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="prodCatMgtchecked"  onchange="showsub('prodCatMgt','prodCatMgtchecked')" name="prodCatMgt"/>
Product Category Management</legend> 
<div id="prodCatMgt" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="prodCatMgt" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="prodCatMgt" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="prodCatMgt" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="prodCatMgt" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="itemRequestchecked"  onchange="showsub('itemRequest','itemRequestchecked')" name="itemRequest"/>
Item Request</legend>

 
<div id="itemRequest" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="itemRequest" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="itemRequest" value="itemRequestModify"/>Item Request Modify
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="itemRequest" value="itemRequestApp"/>Item Request Approval
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="itemRequest" value="itemRequestIssue"/>Item Request Issue
</label></div>
</div>
</fieldset>

<fieldset>
<legend>
  <s:checkbox id="Inventoryreportchecked"  onchange="showsub('Inventoryreport','Inventoryreportchecked')" name="Inventoryreport"/>
Inventory Report</legend> 
<div id="Inventoryreport" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="Inventoryreport" value="stockStatementReport"/>Stock Statement Report
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="Inventoryreport" value="generalReports"/>General Reports
</label></div>
</div>

</fieldset>

</fieldset>
  </div>  
  <div id="shippingreceiving" style="border:thinsolid green; display:none; ">
  
     <fieldset>
<legend>
 
Shipping & Recieving:<s:hidden name="hiddenField"/></legend>
<fieldset>
<legend>
  <s:checkbox id="Recievingchecked" name="receiving" onchange="showsub('Recieving','Recievingchecked')"/>
Recieving</legend>

 
<div id="Recieving" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="receiving" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="receiving" value="modify"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="receiving" value="delete"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="receiving" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="receiving" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="Recievingschechecked" name="receivingsche" onchange="showsub('Recievingsche','Recievingschechecked')"/>
Recieving Shedule</legend>

 
<div id="Recievingsche" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="receivingsche" value="purchase"/>Purchase
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="receivingsche" value="return"/>Return
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="receivingsche" value="view"/>View
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="receivingsche" value="reports"/>Reports
</label></div>

</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="RMAchecked" onchange="showsub('RMA','RMAchecked')" name="RMA"/>
RMA</legend>

 
<div id="RMA" style="display:none">
<div><label for="checkbox1" >
  <s:checkbox  name="RMA" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="RMA" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="RMA" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="RMA" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="RMA" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="QARequestchecked"  onchange="showsub('QARequest','QARequestchecked')" name="qareqd"/>
QARequest</legend>

 
<div id="QARequest" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="qareqd" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="qareqd" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="qareqd" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="qareqd" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="qareqd" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="QAResultchecked" onchange="showsub('QAResult','QAResultchecked')" name="qaResult"/>
QAResult</legend>

 
<div id="QAResult" style="display:none">
<div><label for="checkbox1" >
  <s:checkbox  name="qaResult" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="qaResult" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="qaResult" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="qaResult" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="qaResult" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="QARefchecked" onchange="showsub('QARef','QARefchecked')" name="qaRef"/>
QARef</legend>

 
<div id="QARef" style="display:none">
<div><label for="checkbox1" >
  <s:checkbox  name="qaRef" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="qaRef" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="qaRef" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="qaRef" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="qaRef" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="PackageRequestchecked" onchange="showsub('PackageRequest','PackageRequestchecked')" name="packageReq"/>
PackageRequest</legend>

 
<div id="PackageRequest" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="packageReq" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="packageReq" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="packageReq" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="packageReq" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="packageReq" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="PackageLotchecked" onchange="showsub('PackageLot','PackageLotchecked')" name="packageLot"/>
PackageLot</legend>

 
<div id="PackageLot" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="packageLot" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="packageLot" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="packageLot" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="packageLot" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="packageLot" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="ShipmentRequestchecked" onchange="showsub('ShipmentRequest','ShipmentRequestchecked')" name="shipReq"/>
ShipmentRequest</legend>

 
<div id="ShipmentRequest" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="shipReq" value="add" />Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="shipReq" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="shipReq" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="shipReq" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="shipReq" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="TransportOrderchecked" onchange="showsub('TransportOrder','TransportOrderchecked')" name="transportOrder"/>
TransportOrder</legend>

 
<div id="TransportOrder" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="transportOrder" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="transportOrder" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="transportOrder" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="transportOrder" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="transportOrder" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="ServiceRequestchecked" onchange="showsub('ServiceRequest','ServiceRequestchecked')" name="serviceRequest"/>
ServiceRequest</legend>

 
<div id="ServiceRequest" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="serviceRequest" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="serviceRequest" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="serviceRequest" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="serviceRequest" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="serviceRequest" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="Transportationchecked" onchange="showsub('Transportation','Transportationchecked')" name="transportation"/>
Transportation</legend>

 
<div id="Transportation" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="transportation" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="transportation" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="transportation" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="transportation" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="transportation" value="reports"/>Reports
</label></div>
</div>

</fieldset>
</fieldset>
  </div>  

  <div id="sales" style="border:thinsolid green; display:none; ">
  
     <fieldset>
<legend>
 
Sales<s:hidden name="hiddenField"/></legend>
 



 
 <fieldset>
<legend>
  <s:checkbox id="SalesEnquirychecked" onchange="showsub('SalesEnquiry','SalesEnquirychecked')" name="salesEnquiry"/>
Enquiry</legend>

 
<div id="SalesEnquiry" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="salesEnquiry" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="salesEnquiry" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="salesEnquiry" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="salesEnquiry" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="salesEnquiry" value="reports"/>Reports
</label></div>
</div>

</fieldset>
 <fieldset>
<legend>
  <s:checkbox id="Customerchecked" onchange="showsub('Customer','Customerchecked')" name="customer"/>
Customer</legend>

 
<div id="Customer" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="customer" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="customer" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="customer" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="customer" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="customer" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="SalesQuotationchecked" onchange="showsub('SalesQuotation','SalesQuotationchecked')" name="salesQuotation"/>
Quotation</legend>

 
<div id="SalesQuotation" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="salesQuotation" value="addthroughenquiry"/>Add Through Enquiry
</label></div>
<div><label for="checkbox1">
  <s:checkbox  name="salesQuotation" value="addthroughitems"/>Add Through Items
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="salesQuotation" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="salesQuotation" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="salesQuotation" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="salesQuotation" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="SalesOrderchecked" onchange="showsub('SalesOrder','SalesOrderchecked')" name="salesOrder"/>
Sales Order</legend>

 
<div id="SalesOrder" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="salesOrder" value="addsalesorder"/>AddSalesOrder
</label></div>
<div><label for="checkbox1">
  <s:checkbox  name="salesOrder" value="addthroughitems"/>AddThroughItems
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="salesOrder" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="salesOrder" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="salesOrder" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="salesOrder" value="reports"/>Reports
</label></div>

</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="DeliveryChallanchecked" onchange="showsub('salesdeliveryChallan','DeliveryChallanchecked')" name="salesdeliveryChallan"/>
Delivery Challan</legend>

 
<div id="salesdeliveryChallan" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="salesdeliveryChallan" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="salesdeliveryChallan" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="salesdeliveryChallan" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="salesdeliveryChallan" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="salesdeliveryChallan" value="reports"/>Reports
</label></div>

</div>

</fieldset>

</fieldset>
</div>

<div id="manufacturing" style="border:thinsolid green; display:none; ">
<fieldset>
<legend>
  
Manufacturing:<s:hidden name="hiddenField"/></legend>
 <fieldset>
<legend>
  <s:checkbox id="workorderchecked" onchange="showsub('workorder','workorderchecked')" name="workOrder"/>
WorkOrder</legend>

 
<div id="workorder" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="workOrder" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="workOrder" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="workOrder" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="workOrder" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="workOrder" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="productionplanchecked" onchange="showsub('productionplan','productionplanchecked')" name="productionPlan"/>
ProductionPlan</legend>

 
<div id="productionplan" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="productionPlan" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="productionPlan" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="productionPlan" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="productionPlan" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="productionPlan" value="reports"/>Reports
</label></div>
</div>

</fieldset>

<fieldset>
<legend>
  <s:checkbox id="produceditemschecked" onchange="showsub('produceditems','produceditemschecked')" name="producedItems"/>
Produced Items</legend>

 
<div id="produceditems" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="producedItems" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="producedItems" value="view"/>View
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="producedItems" value="reports"/>Reports
</label></div>

</div>

</fieldset>

<fieldset>
<legend>
  <s:checkbox id="plantchecked" onchange="showsub('plant','plantchecked')" name="plant"/>
Plant</legend>

 
<div id="plant" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="plant" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="plant" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="plant" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="plant" value="view"/>View
</label></div>

</div>

</fieldset>

<fieldset>
<legend>
  <s:checkbox id="linechecked" onchange="showsub('line','linechecked')" name="line"/>
Line</legend>

 
<div id="line" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="line" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="line" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="line" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="line" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="workstationchecked" onchange="showsub('workstation','workstationchecked')" name="workstation"/>
WorkStation</legend>

 
<div id="workstation" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="workstation" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="workstation" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="workstation" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="workstation" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="machinechecked" onchange="showsub('machine','machinechecked')" name="machine"/>
Machine</legend>

 
<div id="machine" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="machine" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="machine" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="machine" value="modify"/>Modify
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="machine" value="maintenance"/>Maintenance
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="machine" value="view"/>View
</label></div>
</div>

</fieldset>



</fieldset>
  </div>   
  
  
 <!--Fixed Assets   -->
 <div id="fixedasset" style="border:thinsolid green; display:none; ">
  
     <fieldset>
<legend>
 
Fixed Asset<s:hidden name="hiddenField"/></legend>
 



 
 <fieldset>
<legend>
  <s:checkbox id="assetchecked" onchange="showsub('asset','assetchecked')" name="asset"/>
Asset</legend>

 
<div id="asset" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="asset" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="asset" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="asset" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="asset" value="view"/>View
</label></div>
</div>

</fieldset>
 <fieldset>
<legend>
  <s:checkbox id="assetvendorchecked" onchange="showsub('assetvendor','assetvendorchecked')" name="vendor"/>
Vendor</legend>

 
<div id="assetvendor" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="vendor" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="vendor" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="vendor" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="vendor" value="view"/>View
</label></div>
</div>

</fieldset>

 <fieldset>
<legend>
  <s:checkbox id="departmentchecked" onchange="showsub('department','departmentchecked')" name="department"/>
Department</legend>

 
<div id="department" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="department" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="department" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="department" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="department" value="view"/>View
</label></div>
</div>

</fieldset>
 <fieldset>
<legend>
  <s:checkbox id="depreciationchecked" onchange="showsub('depreciation','depreciationchecked')" name="depreciation"/>
Depreciation</legend>

 
<div id="depreciation" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="depreciation" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="depreciation" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="depreciation" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="depreciation" value="view"/>View
</label></div>
<div><label for="checkbox5">
  <s:checkbox  name="depreciation" value="reports"/>Reports
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="disposalchecked" onchange="showsub('disposal','disposalchecked')" name="disposal"/>
Disposal</legend>

 
<div id="disposal" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="disposal" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="disposal" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="disposal" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="disposal" value="view"/>View
</label></div>
</div>

</fieldset>





</fieldset>
</div>
<!-- PayRoll starts here -->
  <div id="payroll" style="display:none; ">
<fieldset>
<legend>
  
Payroll<s:hidden name="hiddenField"/></legend>
 <fieldset>
<legend>
  <s:checkbox id="Employeechecked" onchange="showsub('Employee','Employeechecked')" name="Employee"/>
Employee</legend>

 
<div id="Employee" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="Employee" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="Employee" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="Employee" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="Employee" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="EmpCategorychecked" onchange="showsub('EmpCategory','EmpCategorychecked')" name="EmpCategory"/>
Emp Category</legend>

 
<div id="EmpCategory" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="EmpCategory" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="EmpCategory" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="EmpCategory" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="EmpCategory" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="employeeTypechecked" onchange="showsub('employeeType','employeeTypechecked')" name="employeeType"/>
Employee Type</legend>

 
<div id="employeeType" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="employeeType" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="employeeType" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="employeeType" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="employeeType" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="deductionchecked" onchange="showsub('deduction','deductionchecked')" name="deduction"/>
Deduction</legend>

 
<div id="deduction" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="deduction" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="deduction" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="deduction" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="deduction" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="deductionTypechecked" onchange="showsub('deductionType','deductionTypechecked')" name="deductionType"/>
Deduction Type</legend>

 
<div id="deductionType" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="deductionType" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="deductionType" value="delete"/>Delete
</label></div>

<div><label for="checkbox4">
  <s:checkbox  name="deductionType" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="jobTitlechecked" onchange="showsub('jobTitle','jobTitlechecked')" name="jobTitle"/>
Job Title</legend>

 
<div id="jobTitle" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="jobTitle" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="jobTitle" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="jobTitle" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="jobTitle" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="monthlyPaychecked" onchange="showsub('monthlyPay','monthlyPaychecked')" name="monthlyPay"/>
Monthly Pay</legend>

 
<div id="monthlyPay" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="monthlyPay" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="monthlyPay" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="monthlyPay" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="monthlyPay" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="payrollalonechecked" onchange="showsub('payrollalone','payrollalonechecked')" name="payroll"/>
Pay Roll</legend>

 
<div id="payrollalone" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="payroll" value="view"/>View
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="payroll" value="reports"/>Reports
</label></div>

</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="payrollDepartchecked" onchange="showsub('payrollDepart','payrollDepartchecked')" name="payrollDepart"/>
Payroll Department</legend>

 
<div id="payrollDepart" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="payrollDepart" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="payrollDepart" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="payrollDepart" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="payrollDepart" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="payTypechecked" onchange="showsub('payType','payTypechecked')" name="payType"/>
pay Type</legend>

 
<div id="payType" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="payType" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="payType" value="delete"/>Delete
</label></div>

<div><label for="checkbox3">
  <s:checkbox  name="payType" value="view"/>View
</label></div>
</div>

</fieldset>
<fieldset>
<legend>
  <s:checkbox id="projectchecked" onchange="showsub('project','projectchecked')" name="project"/>
project</legend>

 
<div id="project" style="display:none">
<div><label for="checkbox1">
  <s:checkbox  name="project" value="add"/>Add
</label></div>
<div><label for="checkbox2">
  <s:checkbox  name="project" value="delete"/>Delete
</label></div>
<div><label for="checkbox3">
  <s:checkbox  name="project" value="modify"/>Modify
</label></div>
<div><label for="checkbox4">
  <s:checkbox  name="project" value="view"/>View
</label></div>
</div>

</fieldset>
</fieldset>
</div>

<s:submit value="Submit" align="right" class="forbuttonfield"/>
    </font> </td>
     </tr>
     
     
     
     
    
        
     
         
          
    </table>
  </form>
 
</body> 
</html>
