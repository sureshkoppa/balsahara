<%-- 
    Document   : viewLoan
    Created on : 1 Mar, 2012, 4:11:37 PM
    Author     : suresh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="%{transDtoList==null}">
   
</s:if>
<s:else>
<s:if test="%{transDtoList.size()==0}">
    <h2><s:text name="message.noLoanInDates"/></h2>
</s:if>
<s:else>
<hr/>
        <table border="1">
            <tr>
                <th><s:text name="label.loanDate"/></th>
                <!--th>Issue to</th-->
              
                <th><s:text name="th.homeIdLoanGiveOrTake"/></th>
                <th><s:text name="th.items"/></th>
                <th><s:text name="th.quantity"/></th>
                <th><s:text name="th.remarks"/></th>
                <th><s:text name="th.status"/></th>
            
            </tr>    
        <s:iterator value="transDtoList" var="transDto">
           
               
               <%-- <td><s:property value="tm.donateReceivePurchaseFrom"/></td>--%>
            
              
             
                 <s:iterator value="%{tdList}">
                   <tr>
                <td><s:date name="tm.transDate" format="dd/MM/yyyy"/></td>

                <td><s:property value="tm.donateReceivePurchaseFrom" escape="false"/></td>
               
                <td><s:property value="itemName" escape="false"/></td>
                <td><s:property value="td.quantity"/>&nbsp;<s:property value="td.itemMaster.uom"/></td>
                <td><s:property value="td.remarks" escape="false" /></td>
                <td>
                <s:if test="%{tm.transType=='LOAN GIVEN'||tm.transType=='LOAN TAKEN'}">
                    
                
                         <font style="color: red"><s:property value="tm.transType" escape="false"/></font>
                
                </s:if>
                <s:elseif test="%{tm.transType=='LOAN CLEARED'||tm.transType=='LOAN CREDITED'}">
                             <font style="color: green" ><s:property value="tm.transType"/></font>
                    
                </s:elseif>
                    <s:else>
                        <s:property value="tm.transType" escape="false"/>**
                    
                    </s:else>  
                     </s:iterator> 
                </td>
                
            </tr>
            
        </s:iterator>
            </tbody>

        </table>
</s:else>
</s:else>
   
