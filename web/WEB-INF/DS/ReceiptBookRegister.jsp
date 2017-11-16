<%-- 
    Document   : ReceiptBookRegister
    Created on : 3 Jun, 2011, 5:53:12 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript">
            //alert("8888888888888888888");
        <jsp:include page="../../javascripts/ds_receipt_book.jsp"></jsp:include> 
        </script>
          <sx:head/>
           
           <script>
                  var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
           
            function populate_allsubcat(val)
            {  
                  if($("#addcat_prodcat_select").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
              
              
                         dojo.event.topic.publish("pop_subcatDetails");
                    }

            }       
              
                    function popItem()
               {
                var con=document.getElementById("removeitem_items_select");
                        // alert("opt count3---"+con);
                         if(count_opt(con)==0)
                        {
                           // alert("opt count4---");
                            $dialog.html("Sorry! Select at least one sub Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                            
                       // alert("opt count------5---");
               //  dojo.require("/JQscript/jquery.ui.datepicker.js");    
               //  dojo.provides("JQscript/jquery.ui.datepicker.js");
               
              //  dojo.event.topic.subscribe("JQscript/jquery.ui.datepicker.js");  
                dojo.event.topic.publish("popItem");
                
                

                
               
       //   dojo.eval({
    // The URL of the request
   // url: dojo.event.topic.publish("popItem"),
    // The success callback with result from server
   // load:function(){
    //    JQscript/jquery.ui.datepicker.js;
    //}
    // The error handler
    
//});
                 
             /*         $.ajax({
            url: "DS-receipt-popSelectItem",
            context: document.body,
            success: function(responseText) {
                alert(responseText);
                $("#details333").html(responseText);
              //  $("#details333").find("script").each(function(i) {
              //      eval($(this).text());
              //  });
           //   $("#details333").eval("JQscript/jquery.ui.datepicker.js");
            }
        });
               */  
                 
                 
                        }
               }
                 function count_opt(oSelect)
          {
              
              var count=0;
              for(var i=0;i<oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                 }
                 return count;
          }   
        </script>
        <!--
        <script  language="javascript">
         
            function  populate_item()
          {
             //alert("in populate items");
            document.getElementById('ReceiptForm').action="DS-receipt-popSelectItem";
            document.getElementById('ReceiptForm').submit();
         }
          function displaydiv()
          {
              alert("::"+getCheckedValue("ReceiveOrPurchase"));   
        if(document.getElementById("ReceiveOrPurchase").value=='p')
            {
                document.getElementById("receivediv").style.visibility="hidden";
                document.getElementById("purchasediv").style.visibility="visible";
                
            }
            else if(document.getElementById("ReceiveOrPurchase").value=='r')
                {
                    document.getElementById("purchasediv").style.visibility="hidden";
                    document.getElementById("receivediv").style.visibility="visible";
                }
             else if(document.getElementById("ReceiveOrPurchase").value=='s')
                {
                    document.getElementById("purchasediv").style.visibility="hidden";
                    document.getElementById("receivediv").style.visibility="hidden";
                }    
         
          }
          function getCheckedValue(radioObj) {
	if(!radioObj)
		return "";
	var radioLength = radioObj.length;
	if(radioLength == undefined)
		if(radioObj.checked)
			return radioObj.value;
		else
			return "";
	for(var i = 0; i < radioLength; i++) {
		if(radioObj[i].checked) {
			return radioObj[i].value;
		}
	}
	return "";
}
          function displaydiv1()
          {
              var newRow = document.getElementById('mytable1').insertRow();
              
              var oCell = newRow.insertCell();
    oCell.innerHTML = "Received From";
    
    oCell = newRow.insertCell();
    oCell.innerHTML = "<input type='text' name='t2'>";
         
          }
   -->
   <script lang="javascript">
        function toggle() {
                  checkboxes = document.getElementsByName('receiptitemChecked');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle() {
                  checkboxes = document.getElementsByName('receiptitemChecked');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             } 
             function recv_purc(f1)
             {
               var value = f1.value;
               //alert("---"+value);
              
               if (value=='p') {
                       document.getElementById("purc_div").style.visibility="visible";
                       document.getElementById("recv_div").style.visibility="hidden";
                      
                          $("#purc_div").slideDown("fast");     //Slide Down Effect
                          $("#recv_div").slideUp("fast");	//Slide Up Effect
               }
               else if(value=='r')
                   {
                     
                        document.getElementById("recv_div").style.visibility="visible";
                        document.getElementById("purc_div").style.visibility="hidden";
                             $("#purc_div").slideUp("fast");     //Slide Down Effect  
                             $("#recv_div").slideDown("fast");	//Slide Up Effect 
                           
                     
                     
                   }
               }
               function start()
               {
                   //alert("start");
                    $("#purc_div").slideDown("fast");     //Slide Down Effect
                          $("#recv_div").slideUp("fast");	//Slide Up Effect
                    $("remain_div").slideUp("fast");                   
               }
        </script>
        
    </head>
    <body onload="document.getElementById('dialog-form_receipt_reg').style.visibility='hidden';start()">
            <center>
            <CAPTION><font size="3"><b><s:text name="heading.recAndPurReg"/></b></font></CAPTION>
                   
            <s:form name="ReceiptForm" action="DS-receipt-saveReceipt" theme="css_xhtml" id="ReceiptForm">
            
                
                <table border="1" align="center" style="font-size:small;width: 30em" >
                    <tbody align="left" id="my_table">
                           <tr><td><s:text name="label.procureDate"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="receipt_date" readonly="true" />
                               </td>
                           </tr>
                           <tr>
                               <td><s:text name="label.selPurRecv"/>*</td>                               
                               <td>
                                  
                                   
                                   <input type="radio" name="ReceiveOrPurchase" id="ReceiveOrPurchase" value="p" onclick="recv_purc(this)" checked="true"/><s:text name="label.purchased" />
                                  <br/> <input type="radio" name="ReceiveOrPurchase" id="ReceiveOrPurchase" value="r" onclick="recv_purc(this)"/><s:text name="label.received" />

                                    
                               </td>
                           </tr>
                    </tbody>
                </table>
                    <div id="purc_div">                 
                           <table border="1" align="center" style="font-size:small;width: 30em" >
                           <tr>
                               <td id="recv_purc_text"><s:text name="label.purchaseFrom"/>*</td><td><s:textarea name="receipt_from" id="receipt_from" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                          </tr>
                          <tr>
                    
                              <td id="in_let_text"><s:text name="label.invPurNo"/>*:</td><td> <s:textfield name="invoice_no" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                          </tr>
                          <tr>
                              <td id="in_let_datetext"><s:text name="label.invPurDate"/>*:</td><td>  <s:textfield name="invoice_date" id="datepicker1" readonly="true" /></td>                                 
                          </tr>     
                           </table>
                    </div>
                          <div id="recv_div">
                              <table border="1" align="center" style="font-size:small;width: 30em" >
                           <tr>
                               <td id="recv_purc_text"><s:text name="label.recvdFrom"/>*</td><td><s:textarea name="receipt_from" id="receipt_from" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                          </tr>
                          <tr>
                    
                              <td id="in_let_text"><s:text name="label.letterNo"/>*:</td><td> <s:textfield name="invoice_no" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                          </tr>
                          <tr>
                              <td id="in_let_datetext"><s:text name="label.letterDate"/>*:</td><td>  <s:textfield name="invoice_date" id="datepicker1" readonly="true" /></td>                                 
                          </tr>     
                           </table>
                              
                              
                          </div>    
                           <div id="remain_div">
                 <table border="1" align="center" style="font-size:small;width: 30em" > 
                     <tbody>
                           <tr>
                                <td><s:text name="label.recvRem"/></td>                               
                                <td><s:textfield name="receipt_remarks" id="receipt_remarks" rows="1" cols="10" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                            </tr>
                   
                              <tr>
                                  <td><s:text name="label.prodTopcat"/>*</td>   
                                  <td> 
                                      
                                      <select name="addcat_prodcat_select" onchange="populate_allsubcat()" id="addcat_prodcat_select">
                                   <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                               </select>
                                      
                              </td>
                              </tr>
                               </tbody>
                </table> 
                            
              
  
                               <s:url id="d_url22" action="DS-receipt-popAllSubCat"/>                  
                 <sx:div id="details222" href="%{d_url22}" listenTopics="pop_subcatDetails" formId="ReceiptForm" >
                 </sx:div> 
                                      
                  
                 
                                            <s:url id="d_url33" action="DS-receipt-popSelectItem"/>                  
                                            <sx:div id="details333" href="%{d_url33}" listenTopics="popItem" formId="ReceiptForm" afterNotifyTopics="start">
                                                </sx:div>         
                                 
                      <%--          <sx:div id="details333"   formId="ReceiptForm" >
                               </sx:div>
                  --%>
                           </div>
       </s:form>            
                 
     <div id="dialog-form_receipt_reg" title="ReceiptDetails/Preview">
	<form name="receipt_form_dialog">
<pre>
<s:text name="label.procureDate"/>:<span id="receipt_date_span"></span><br/>
<span id="receipt_from_span"></span><br/>
<span id="invoice_no_span"></span><br/>
<span id="invoice_date_span"></span><br/>
<s:text name="label.recvRem"/>       :<span id="receipt_remarks_span"></span><br/>
</pre>
            
            <table border="1" id="receipt_reg_span">
            <thead>
             <tr>
                 <th><s:text name="label.part"/></th>
                 <th><s:text name="label.quantity"/></th>
                <th><s:text name="label.remarks"/></th>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
         
        </form>
     </div>           
            </center>
                              
    </body>
</html>
