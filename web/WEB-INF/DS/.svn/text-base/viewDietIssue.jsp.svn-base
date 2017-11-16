<%-- 
    Document   : viewIssue
    Created on : 29 Aug, 2011, 2:55:39 PM
    Author     : suresh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<s:if test="%{tdto==null}">
   <h2></h2>
</s:if>
   <s:elseif test="%{tdto.tm==null}">
       <h2>No Diet issues in selected date</h2>
       
   </s:elseif>
<s:else>
<hr/>
<table>
    <tr>
        <td>Date:</td><td><s:date name="tdto.tm.transDate" format="dd/MM/yyyy"/></td>
    </tr>
    <tr>
         <td>Number Of Children:</td>
         <td><s:property value="tdto.tm.remarks"/></td>
    </tr>  
    <%--tr>
        <td>Leader given:</td>
        <td><s:property value="tdto.tm.donateReceivePurchaseFrom"/></td>
    </tr--%>
    
   
</table>
        <table border="1">
            <tr>
               
                <th>Item Given</th>
                
                <th>Quantity<br/>Issued</th>
                <th>Type</th>
                <th>Open Balance</th>
                <th>Close Balance</th>
            </tr>    
        <s:iterator value="tdto.tdList" var="transDto">
           
               
               <%-- <td><s:property value="tm.donateReceivePurchaseFrom"/></td>--%>
            
              
             
                 <s:iterator value="%{transDto}" var="td">
                  <%--     <s:if test="%{td.issuedTo!='COOK'}">  --%>
                   <tr>
                   
                    <%--    <td><s:date name="tm.transDate" format="dd/MM/yyyy"/></td>--%>
                   <td><s:property value="td.itemMaster.itemName"/>
                       <%--    
                       </td>
                       <td>
                           <s:if test="%{td.issuedTo=='in'}">
                               <s:url action="DS-viewIssueDetail" var="urlTag" >
                                   <s:param name="transId"><s:property value="td.TransactionDetailsPK.transId"/></s:param>
                                   <s:param name="itemNo"><s:property value="td.TransactionDetailsPK.itemNo"/></s:param>
                               </s:url>
                              
                               <s:a href="%{urlTag}">Inmates</s:a>
                           
                           </s:if>  
                             <s:else>
                                 <s:property value="td.issuedTo"/>
                             </s:else>     
                       </td>
                    --%>
                       <td><b><s:property value="td.quantity"/>&nbsp;&nbsp;<s:property value="td.itemMaster.uom"/></b></td>
                       <td><s:property value="tdto.tm.transType"/></td>
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
                     <%--   <td><s:property value="td.remarks"/></td>--%>
                  </tr>
                   <%-- </s:if>  --%>
                  </s:iterator> 
             
        </s:iterator>
                    
        </table>
</s:else>

   

