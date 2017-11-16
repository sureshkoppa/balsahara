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
    <h2><s:text name="message.noDonInDates"/></h2>
</s:if>
<s:else>
<hr/>
        <table border="1">
            <thead>
            <tr>
                <th><s:text name="label.donDate"/></th>
                <th><s:text name="label.donFrom"/></th>
                <th><s:text name="th.items"/></th>
                <th><s:text name="th.quantity"/></th>
              
               <th><s:text name="th.approxValue"/></th>
               <th>Open Balance</th>
                <th>Close Balance</th>
                
                  <th><s:text name="th.remarks"/></th>
            </tr> 
            </thead>
            <tbody>
        <s:iterator value="transDtoList" var="transDto">
            
              
               <s:iterator value="%{tdList}">
                   <tr>
                <td><s:date name="tm.transDate" format="dd/MM/yyyy"/></td>

                <td><s:property value="tm.donateReceivePurchaseFrom" escape="false"/></td>
               
                <td><s:property value="itemName" escape="false"/></td>
                <td><s:property value="td.quantity"/>&nbsp;<s:property value="td.itemMaster.uom" escape="false"/></td>
                
                <td><font style="font-weight: bold;font-size:10pt">&#8377;&nbsp;<s:property value="td.quantity*td.itemMaster.unitPrice"/></font></td>
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
                    <td><s:property value="td.remarks" escape="false"/></td>
                   </tr>
                     </s:iterator> 
            
        </s:iterator>
            </tbody>

        </table>
</s:else>
</s:else>
   
