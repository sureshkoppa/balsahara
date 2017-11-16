<%-- 
    Document   : viewIssue
    Created on : 29 Aug, 2011, 2:55:39 PM
    Author     : suresh
--%>
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
    <h2><s:text name="message.noIssInDates"/></h2>
</s:if>
<s:else>
<hr/>
        <table border="1">
            <tr>
                <th><s:text name="label.issDate"/></th>
                <!--th>Issue to</th-->
              
                <th><s:text name="th.items"/></th>
                <th><s:text name="label.issTo"/></th>
                <th><s:text name="th.quantity"/><br/>Issued</th>
               
               <th>Open Balance</th>
                <th>Close Balance</th>
            <th><s:text name="th.remarks"/></th>
            </tr>    
        <s:iterator value="transDtoList" var="transDto">
           
               
               <%-- <td><s:property value="tm.donateReceivePurchaseFrom"/></td>--%>
            
              
             
                 <s:iterator value="%{tdList}">
                      <s:if test="%{td.issuedTo!='COOK'}">  
                   <tr>
                   
                       <td><s:date name="tm.transDate" format="dd/MM/yyyy"/></td>
                   <td><s:property value="itemName" escape="false"/>
                           
                       </td>
                       <td>
                           <s:if test="%{td.issuedTo=='in'}">
                               <s:url action="DS-viewIssueDetail" var="urlTag" >
                                   <s:param name="transId"><s:property value="td.TransactionDetailsPK.transId"/></s:param>
                                   <s:param name="itemNo"><s:property value="td.TransactionDetailsPK.itemNo"/></s:param>
                               </s:url>
                              
                               <s:a href="%{urlTag}"><s:text name="label.inmates"/></s:a>
                           
                           </s:if>  
                             <s:else>
                                 <s:property value="td.issuedTo" escape="false"/>
                             </s:else>     
                       </td>
                       <td><b><s:property value="td.quantity"/>&nbsp;<s:property value="td.itemMaster.uom" escape="false"/></b></td>
                       
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
                        <td><s:property value="tm.remarks" escape="false"/></td>
                  </tr>
                   </s:if>  
                  </s:iterator> 
                
     
        </s:iterator>
                    
        </table>
</s:else>
</s:else>
   

