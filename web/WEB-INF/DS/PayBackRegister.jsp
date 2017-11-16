<%-- 
    Document   : PayBackRegister
    Created on : 29 Feb, 2012, 4:55:28 PM
    Author     : suresh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript">
         
         <jsp:include page="../../javascripts/ds_payBackBookReg.jsp"></jsp:include> 
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
          
                 dojo.event.topic.publish("popItem");
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
        <script language="JavaScript">
           
             function make_accept(field_val)
             {
              
               dojo.event.topic.publish("showprevLoanDetails");
             }
             
             function validate()
             {
                 if(document.getElementById("datepicker").value=="")
                     {
                         alert("Please enter date");
                         return false;
                     }
                     else
                         {
                             return true;
                         }
             }
         </script>      
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
        
    </head>
    <body onload="document.getElementById('dialog-form_payBack_reg').style.visibility='hidden'">
            <center>
            <CAPTION><font size="3"><b><s:text name="heading.payReg"/></b></font></CAPTION>

            <s:form name="PayBackForm" action="DS-payBack-savePayBack" theme="css_xhtml" id="PayBackForm" onsubmit="return validate();">
            
                
                <table border="1" align="center" style="font-size:small" >
                    <tbody align="left" id="my_table">
                           <tr><td><s:text name="label.loanPmtDate"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="payBack_date" readonly="true" theme="simple" />
                               </td>
                           </tr>
                           <tr>
                               <td><s:text name="label.selLoanPayMakeAcc"/>*</td>                               
                               <td>
                                   <input type="radio" name="PaybackMakeOrAccecpt" id="PaybackMakeOrAccecpt" value="m" checked="true" onchange="make_accept('PaybackMakeOrAccecpt')"/><s:text name="label.makeLoanPmt"/>
                                   <input type="radio" name="PaybackMakeOrAccecpt" id="PaybackMakeOrAccecpt" value="a" onchange="make_accept('PaybackMakeOrAccecpt')"/><s:text name="label.accLoanPmt"/>
                                   <%--s:radio name="PaybackMakeOrAccecpt" id="PaybackMakeOrAccecpt" list="#{'m':'Make Payback','a':'Accept Payback'}" value="%{'m'}" onchange="make_accept('PaybackMakeOrAccecpt')" theme="simple" /--%>
                                   
                                   
                                  <s:url id="d_url" action="DS-payBack-popLoans"/> 
                                  <sx:div id="details" href="%{d_url}" listenTopics="showprevLoanDetails" formId="PayBackForm">
                                  </sx:div> 
                                 
                           </tr>
                              
                         
                                 
                           <tr>
                                <td><s:text name="label.remarks"/></td>                               
                                <td><s:textfield name="payBack_remarks" id="payBack_remarks" rows="1" cols="10" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                            </tr>
                   
                              </tbody>
                </table> 
                            
                            
                            <%--
                              <tr>
                                  <td>Product top category</td>   
                                  <td> <s:select list="addcat_prodcat_pop" id="addcat_prodcat_select" name="addcat_prodcat_select"  onchange="javascript:populate_allsubcat(this);return false;" headerKey="select" headerValue="---select top cat---" theme="css_xhtml"/>
                                      
                              </td>
                              </tr>
                               </tbody>
                </table> 
                            
              
  
                               <s:url id="d_url22" action="DS-payBack-popAllSubCat"/>                  
                 <sx:div id="details222" href="%{d_url22}" listenTopics="pop_subcatDetails" formId="PayBackForm" >
                 </sx:div> 
                                      
                  
                 
                               <s:url id="d_url33" action="DS-payBack-popSelectItem"/>                  
                 <sx:div id="details333" href="%{d_url33}" listenTopics="popItem" formId="PayBackForm" >
                 </sx:div> 
                            --%>
                        <table>
                <tr>
                    <td><s:submit  /></td>
                    
                </tr>
            </table>    
       </s:form>            
                 
   
            </center>
                          
    <div id="dialog-form_payBack_reg" title="Payback/Preview">
	<form name="receipt_form_dialog">
<pre>
<s:text name="label.loanPmtDate"/>:<span id="payback_date_span"></span><br/>
<span id="receipt_from_span"></span><br/>
<span id="invoice_no_span"></span><br/>
<span id="invoice_date_span"></span><br/>
<s:text name="label.remarks"/>        :<span id="receipt_remarks_span"></span><br/>
</pre>
            
            <table border="1" id="receipt_reg_span">
            <thead>
             <tr>
                <th>Particulars</th>
                <th>Quantity</th>
                <th><s:text name="label.remarks"/></th>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
         
        </form>
     </div>           
    </body>
</html>
