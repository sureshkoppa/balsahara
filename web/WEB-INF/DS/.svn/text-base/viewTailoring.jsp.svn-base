<%-- 
    Document   : viewTailoring
    Created on : 4 Sep, 2012, 12:04:54 PM
    Author     : suresh
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="%{transDtoList==null}">
   
</s:if>
<s:else>
<s:if test="%{transDtoList.size()==0}">
    <h2>No issues between selected dates</h2>
</s:if>
<s:else>
<hr/>
        <table border="1">
            <tr>
                <th>Date</th>
                <!--th>Issue to</th-->
                <th>Address</th>
              
                <th>Items</th>
                <th>Quantity</th>
               
                <th>Open Balance</th>
                <th>Close Balance</th>
                <th><s:text name="th.operType"/></th>
                  <th><s:text name="th.remarks"/></th>
            </tr>    
        <s:iterator value="transDtoList" var="transDto">
           
               
               <%-- <td><s:property value="tm.donateReceivePurchaseFrom"/></td>--%>
            
              
             
                 <s:iterator value="%{tdList}">
                     
                   <tr>
                   
                       <td><s:date name="tm.transDate" format="dd/MM/yyyy"/></td>
                   
                       <td>    <s:property value="tm.donateReceivePurchaseFrom"/>     </td>
                  
                       <td><s:property value="itemName"/>       </td>
                       <td><s:property value="td.quantity"/>&nbsp;<s:property value="td.itemMaster.uom"/></td>
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
                       <td>    <s:property value="tm.transType"/>     </td>
                        <td><s:property value="td.remarks"/></td>
                  </tr>
                 
                  </s:iterator> 
                
     
        </s:iterator>
                    
        </table>
</s:else>
</s:else>
   


