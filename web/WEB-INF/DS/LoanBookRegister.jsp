<%-- 
    Document   : LoanBookRegister
    Created on : 28 Feb, 2012, 6:04:07 PM
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
            
                      <jsp:include page="../../javascripts/ds_LoanBookReg.jsp"></jsp:include> 
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
                             dojo.event.topic.publish("popItem");
                        }
               }
                      <%--   
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
              
              
                       //  dojo.event.topic.publish("pop_subcatDetails");
                       
                           document.getElementById('LoanForm').action="DS-loan-popAllSubCat";
                             document.getElementById('LoanForm').submit();
                       
                       
                       
                    }

            }       
              
                    function populate_item()
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
          
              //   dojo.event.topic.publish("popItem");
               document.getElementById('LoanForm').action="DS-loan-popSelectLoanItem";
                             document.getElementById('LoanForm').submit();
                        }
               }
               
               --%>
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
        </script>
        <script language="JavaScript">
           
             function give_take(field_val)
             {
               var field = 0;
               var fieldval=document.getElementsByName(field_val);
               for( i = 0; i < document.getElementsByName(field_val).length; i++ )
               {
                  if(fieldval[i].checked == true )
                  {
                     field = fieldval[i].value;
                  }
               }
               if(field=="g")
               {
                  // alert(field);
                   document.getElementById("label_loan_homeid").textContent = '<s:text name="label.selLoanGivTake"/>*:';
                  
                   
                //  document.getElementById(recv_div).style.visibility='visible';
               }
               if(field=="t")
               {
                  // alert(field);
                   document.getElementById("label_loan_homeid").textContent = '<s:text name="label.loanTakenFrom"/>*:';
                  
               }
             }
             
             
         </script>      
        
    </head>
    <body onload="document.getElementById('dialog-form_loan_reg').style.visibility='hidden'">
            <center>
                <CAPTION><font size="3"><b><s:text name="heading.loanReg"/></b></font></CAPTION>

            <s:form name="LoanForm" action="DS-loan-saveLoan" theme="css_xhtml" id="LoanForm">
            
              <table border="1" align="center" style="font-size:small" >
                    <tbody align="left" id="my_table">
                         <tr>
                             <td><s:text name="label.loanDate"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="loan_date" readonly="true" />
                               </td>
                           </tr>
                           <tr>
                               <td><s:text name="label.selLoanGivTake"/>*</td>                               
                               <td>
                                   <s:if test="%{LoanGiveOrTake==null}">
                                       <%--<s:radio name="LoanGiveOrTake" id="LoanGiveOrTake" list="#{'g':'Loan Given','t':'Loan Taken'}" value="%{'g'}"  onchange="give_take('LoanGiveOrTake')"  />  --%>
                                  
                                       <input type="radio" name="LoanGiveOrTake" id="LoanGiveOrTake" value="g" checked onchange="give_take('LoanGiveOrTake')"/><s:text name="label.loanGiven" /><span style="padding-left: 20px"><input type="radio" name="LoanGiveOrTake" id="LoanGiveOrTake" value="t" onchange="give_take('LoanGiveOrTake')"/><s:text name="label.loanTaken"/></span>         
                                   
                                   </s:if>
                                   <s:else>
                                       <s:if test="%{LoanGiveOrTake.equals('g')}">
                                            Loan given
                                       </s:if>
                                            <s:else>
                                            Loan given    
                                            </s:else>     
                                             
                                           
                                   </s:else>
                                   
                           </tr>
                           <tr>
                               <td id="label_loan_homeid"><s:text name="label.loanGivenTo"/>*:</td><td><s:select list="AllHomesForLoan" name="loan_homeId" id="loan_homeId"/></td>                                 
                          </tr>     
                         
                                 
                           <tr>
                               <td><s:text name="label.remarks"/></td>                               
                                <td><s:textfield name="loan_remarks" id="loan_remarks" rows="1" cols="10" cssClass="keyboardInput"/></td>
                            </tr>
                    </tbody>
             </table> 
                
                <table border="1" align="center" style="font-size:small" >
                    <tbody align="left" id="my_table">
                           
                   
                            <tr>
                                <td><s:text name="label.prodTopcat"/></td>   
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
                                   
                  <s:url id="d_url22" action="DS-loan-popAllSubCat"/>                  
                 <sx:div id="details222" href="%{d_url22}" listenTopics="pop_subcatDetails" formId="LoanForm" >
                 </sx:div> 
                 
                 
                 
                <s:url id="d_url33" action="DS-loan-popSelectItem"/>                  
                <sx:div id="details333" href="%{d_url33}" listenTopics="popItem" formId="LoanForm" afterNotifyTopics="start">
                    </sx:div>        
                   </s:form>  
                 <%--
                                </s:if>
                                <s:else>
                                    <s:property value="addcat_prodcat_select" escape="false"/>
                                    <s:hidden name="topcat_selected" value="%{addcat_prodcat_select}"/>
                                </s:else>
                                  
                               
                    
                                      
                              </td>
                         </tr>
                    </tbody>
                </table>
                                  <table border="1" align="center" style="font-size:small" >
                    <tbody align="left" id="my_table">
                                  <s:if test="%{removeitem_subcat_pop!=null}">  
                                <s:if test="%{removeitem_items_select==null}">
                               <tr>
                                   <td><s:text name="label.prodSubcats"/></td>
                                   <td>
                                      
                                       <select name="removeitem_items_select" id="removeitem_items_select"  multiple="true">
                                                <option value="select">--<s:text name="option.selSubCat"/>--</option>
                                   <c:forEach items="${removeitem_subcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                                       </select>
                                      
                                           
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="text-align: right">  <input type="button" onclick="populate_item()" value="<s:text name='button.getItems'/>"/></td>
                               </tr> 
                                </s:if>
                               <s:else>   
                               
                               <tr>
                                   <td><s:text name="label.prodSubcat"/></td><td><s:property value="subcat_selected" escape="false"/></td>
                               </tr> 
                                </s:else>
                           </s:if>
                                   
                           </tbody>
                </table>
                  
  <s:if test="%{remove_item_detail!=null}">
      <s:if test="%{remove_item_detail.size()==0}">
            <br/><br/>
            <font style="font-size: medium"><s:text name="message.noItemsInCat"> 
                <i><s:param>${removeitem_items_selectnames}</s:param></i>
                                </s:text></font>
      </s:if>
      <s:else> 
             
          <br/>
          <h1><s:text name="message.itemsRecvdUnder"/><i> <s:property value="removeitem_items_selectnames" escape="false"/> </i>  </h1>
         
            <table border="1"  align="center" style="text-align:center;font-size: small">
                <thead>
                    <tr>
                        <th></th>
                        <th><s:text name="th.itemName"/></th>
                        <th><s:text name="th.specOrSize"/></th>
                        <th><s:text name="th.quanRecvd"/></th>
                        <th><s:text name="th.units"/></th>
                        <th><s:text name="th.unitPrice"/></th>
                        <th><s:text name="th.remarks"/></th>
                        <th><s:text name="th.mfgDate"/></th>
                        <th><s:text name="th.expDate"/></th>
                        
                        
                    </tr>
                </thead>
               <tbody>  
                    <s:iterator value="remove_item_detail" status="stat" id="remove_item_detail">
                         <s:hidden id="itr" value="%{remove_item_detail.size}"/>
            <tr>
                <td><s:checkbox name="receiptitemChecked" fieldValue="%{itemNO}" value="false" theme="simple"/>
                  
                </td>
                <td><s:property value="itemName" escape="false"/>
                  <s:hidden name="receipt_iname" value="%{itemName}" />
            </td>
            <td><s:property value="specifications" escape="false"/></td>
            <td><s:textfield  name="receiptitem_qoh[%{itemNO}]" size="4" theme="simple" id="receiptitem_qoh"/></td>         
            <td><s:property value="UOM"/></td>
            <td><s:property value="unitPrice"/></td>
            <td><s:textarea name="receiptitem_remarks[%{itemNO}]" rows="2" cols="10" theme="simple" id="receiptitem_remarks" cssClass="keyboardInput"></s:textarea>
             <s:hidden name="receiptitem_remarks[%{itemNO}]" rows="2" cols="10" id="receiptitem_remarks" theme="simple"/>
            </td>   
            <td><s:if test="%{Mfg_date==null}">
                    N.A
                </s:if>
                <s:else>
                    <s:property value="Mfg_date"/> 
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    N.A
                </s:if>
                <s:else>
                    <s:property value="Exp_date"/> 
                </s:else></td>
           
            </tr>  
        </s:iterator>
                </tbody> 
               
            </table>
                
            
              <center>
                  <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
        <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>     
       <table style="">
                        <tr>
                            <td><input type="submit" value="<s:text name="button.save"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>" /></td>
                        </tr>
                    </table>
                </center>   
           
      </s:else>
                               
                            </s:if>       
       
                            
       </s:form>   
    --%>             
     <div id="dialog-form_loan_reg" title="LoanDetails/Preview">
	<form name="loan_form_dialog" id="loan_form_dialog">
<pre>
    <s:text name="label.loanDate"/>:<span id="loan_date_span"></span><br/>
    <s:text name="label.selLoanGivTake"/>:<span id="loan_type_span"></span><br/>
    <s:text name="label.loanGivenTo"/>:<span id="loan_homeId_span"></span><br/>
    <s:text name="label.remarks"/>:<span id="loan_remarks_span"></span><br/>
</pre>
            
            <table border="1" id="loan_reg_span">
            <thead>
             <tr>
                 <th><s:text name="label.particulars"/></th>
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
