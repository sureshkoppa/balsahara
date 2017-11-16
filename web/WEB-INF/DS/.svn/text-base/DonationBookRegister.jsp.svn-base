<%-- 
    Document   : DonationBookRegister
    Created on : 30 May, 2011, 9:56:08 AM
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
        <sx:head/>
         <script type="text/javascript">
            //alert("8888888888888888888");
                <jsp:include page="../../javascripts/ds_donation_book.jsp"></jsp:include> 
        </script>
          <script  type="text/javascript">
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
           function populate_allsubcat()
            {
               
                    /*validating the fields present in the form*/
                     if($("#donbook_prod_topcat").val()=="select")
                        {
                            $dialog.html("Sorry! Select Category Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                   
                           dojo.event.topic.publish("pop_subcatDetails_don");
                   
                        }

            }     
       
               

            
            function  popItem()
          {
             //alert("in populate items");
             
             
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
             function count_opt(oSelect)
          {
              
              var count=0;
              for(var i=0;i<oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                 }
                 return count;
          }   
                    
         function toggle() {
                  checkboxes = document.getElementsByName('donation_item_chk');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle() {
                  checkboxes = document.getElementsByName('donation_item_chk');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             } 
             
            
        </script>
    </head>
    <body onload="document.getElementById('dialog-form_donation_reg').style.visibility='hidden'">
            <center>
                <CAPTION><font size="3"><b><s:text name="heading.donReg"/></b></font></CAPTION>

            <s:form name="DonationForm" action="DS-donation-saveDonation" theme="css_xhtml" id="DonationForm">
                <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                        <tr><td><s:text name="label.donDate"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="donation_date" readonly="true"/>
                               </td>
                           </tr>
                           <tr>
                                <td><s:text name="label.donFrom"/>*</td>                               
                                <td><s:textarea name="donation_from" id="donation_from" rows="2" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                            </tr>
                          <tr>
                                 <td><s:text name="label.remarks"/></td>
                                 <td><s:textfield name="donation_remarks" id="donation_remarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
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
                </table>
                                   
                                                   
                 <s:url id="d_urldon" action="DS-donation-popAllSubCat"/>                  
                 <sx:div id="detailsdon" href="%{d_urldon}" listenTopics="pop_subcatDetails_don" formId="DonationForm">
                      </sx:div> 
                                   
                  <s:url id="d_urldon3" action="DS-donation-popSelectItem"/>                  
                  <sx:div id="detailsdon3" href="%{d_urldon3}" listenTopics="popItem" formId="DonationForm" afterNotifyTopics="start">
                     </sx:div>       
                                            
                                              
       </s:form>            
                 
                  <%--
                 
                  <s:if test="%{remove_item_detail!=null}">
                  <s:if test="%{remove_item_detail.size()==0}">
                                <br/><br/>
                                <font style="font-size: medium"><s:text name="message.noItemsInCat"><s:param><i><s:property value="removeitem_items_selectnames" escape="false"/></i></s:param></s:text></font>
                  </s:if>  
                 <s:else>    
            <h1><s:text name="message.itemsRecvdUnder"/>
                <i> <s:property value="removeitem_items_selectnames" escape="false"/> </i> </h1>
               
         
            <table border="1"  align="center" id="DonationItems" style="text-align: center;font-size: small">
                <thead>
                    <tr>
                        <th></th>
                        <th><s:text name="th.itemName"/></th>
                        <th><s:text name="th.specOrSize"/></th>
                        <th><s:text name="th.units"/></th>
                        <th><s:text name="th.quanOnHand"/></th>
                        <th><s:text name="th.quanDontd"/></th>
                        
                        <th><s:text name="th.remarks"/></th>
                        <th><s:text name="th.mfgDate"/></th>
                        <th><s:text name="th.expDate"/></th>
                        
                    </tr>
                </thead>
               <tbody>  
                    <s:iterator value="remove_item_detail" status="stat" id="remove_item_detail">
                         <s:hidden id="itr" value="%{remove_item_detail.size}"/>
            <tr>  
             <td><s:checkbox name="donation_item_chk" fieldValue="%{itemNO}" value="false" />
                 
            </td>
            <td><s:property value="itemName" escape="false"/>
                <s:hidden name="donation_iname11" value="%{itemName}" />  
            </td>
            <td><s:property value="specifications" escape="false"/></td>
            <td><s:property value="UOM"/></td>   
            <td><s:property value="qoh"/></td>
            <td><s:textfield  name="donation_item_quantity[%{itemNO}]" size="4" id="donation_item_qunatity" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>         
          
            <td><s:textarea name="donation_item_remarks[%{itemNO}]" rows="2" cols="10" id="donation_item_remarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>   
            <td><s:if test="%{Mfg_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:property value="Mfg_date"/> 
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:property value="Exp_date"/> 
                </s:else></td>
            </tr>  
        </s:iterator>
                </tbody> 
               
            </table>
                <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
        <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>
                 
           <table>
                <tr>
                    <td>
                        <input type="submit" value="<s:text name="button.submit"/>" />
                    </td>
                    <td><input type="reset"  value="<s:text name="button.clear"/>"/></td>
                </tr>
            </table>
        
        
                               
                            </s:if>
                          
                            
       </s:form>    
            --%>
                   
     <div id="dialog-form_donation_reg" title="DonationDetails/Preview">
	<form name="donation_form_dialog">
            <table rules="rows">
                <tr>
                    <td><s:text name="label.donDate"/>:</td><td><span id="donation_date_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.donFrom"/>:</td><td><span id="donation_from_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.remarks"/>:</td><td><span id="donation_remarks_span"></span></td>
                </tr>
            </table>
            
         
            
            <table border="1" id="donate_reg_span">
            <thead>
             <tr>
                 <td><b><s:text name="label.particulars"/></b></td>
                <td><b><s:text name="th.quanDontd"/></b></td>
                <td><b><s:text name="label.remarks"/></b></td>
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
