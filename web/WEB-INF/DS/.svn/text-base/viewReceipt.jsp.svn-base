<%-- 
    Document   : viewDonation
    Created on : 22 Aug, 2011, 4:02:23 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<s:if test="%{transDtoList==null}">
   
</s:if>
<s:else>
<s:if test="%{transDtoList.size()==0}">
    <h2><s:text name="message.noRecBetDates"/></h2>
</s:if>
<s:else><hr/>
        <table border="1">
            <tr style="font-weight: bold ">
                <th><s:text name="label.procureDate"/></th>
                <th><s:text name="th.purcRecvdFrom"/></th>
                <th><s:text name="label.invPurNo"/></th> 
                <th><s:text name="label.invPurDate"/></th> 
                <th><s:text name="th.items"/></th>
                <th><s:text name="th.quanRecvd"/>  </th>
                <th>Open Balance</th>
                <th>Close Balance</th>
                <th><s:text name="th.operType"/></th>
                  <th><s:text name="th.remarks"/></th>
            </tr>    
        <s:iterator value="transDtoList" var="transDto">
           
                
                
               <s:iterator value="%{tdList}">
                    <tr>
                   <td><s:date name="tm.transDate" format="dd/MM/yyyy"/></td>
                   <td><s:property value="tm.donateReceivePurchaseFrom" escape="false"/></td>
                   
                   <td><s:property value="tm.invoiceNo" escape="false"/></td>
                   <td><s:date name="tm.invoiceDate" format="dd/MM/yyyy" /></td>    
                   <td><s:property value="itemName" escape="false"/></td>
                   <td><b><s:property value="td.quantity" escape="false"/>&nbsp;<s:property value="td.itemMaster.uom" escape="false"/></b></td>
                 <td>
                           <s:if test="%{td.openBalance==null}">
                               --
                           </s:if>
                           <s:else>
                           <s:property value="td.openBalance"/>&nbsp;&nbsp;
                           </s:else>
                           <s:property value="td.itemMaster.uom"/></td>
                       <td>
                           <s:if test="%{td.closeBalance==null}">
                               --
                           </s:if>
                           <s:else>
                           <s:property value="td.closeBalance"/>&nbsp;&nbsp;
                           </s:else>
                           <s:property value="td.itemMaster.uom"/></td>  
                    <td>
                       <%--s:if test="%{#request.locale.language=='hi'}"--%>
                          
                           <s:if test='%{tm.transType.equals("PURCHASE")}'> 
                               <s:text name="label.purchased" />
                           </s:if>
                           <s:elseif test='%{tm.transType.equals("RECEIPT")}'>
                               <s:text name="label.received"/>
                           </s:elseif>
                       <%--/s:if>    
                       <s:else>
                                <s:property value="tm.transType" escape="false"/>
                         </s:else--%>
                   
                   </td>
                     <td><s:property value="td.remarks" escape="false"/></td>                   
                </tr>  
                     </s:iterator> 
               
                
           
        </s:iterator>
        </table>
</s:else>
</s:else>
