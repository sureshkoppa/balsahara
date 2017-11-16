<%-- 
    Document   : populateLoans
    Created on : 1 Mar, 2012, 11:09:25 AM
    Author     : suresh
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="%{loanPrevList==null}">
    
</s:if>
<s:else>
<table border="1">
    <thead>
        <tr>
            <th></th>
            <th><s:text name="label.loanDate"/></th>
            <th><s:text name="th.items"/></th>
            <th><s:text name="th.quantity"/></th>
            <th><s:text name="th.paymentHome"/></th>
            <th><s:text name="th.status"/></th>
        </tr>
    </thead>
    <tbody>
      
        <s:iterator value="loanPrevList" id="loanPrevList">
                  <s:hidden id="itr" value="%{loanPrevList.size}"/>
        <tr>
            <td><s:checkbox name="loanTransId" fieldValue="%{transId}" value="false" theme="simple"/></td>
            <td><s:property value="loanDate"/></td>
            <td><s:iterator value="loanItem">
                    <s:property escape="false"/><hr/>
                </s:iterator> 
            </td>
            <td>
                <s:iterator value="loanQuan">
                    <s:property /><hr/>
                </s:iterator>
            </td>
            <td><s:property value="loanHome"/></td>
            <td><s:property value="loanStatus"/></td>
        </tr>
        </s:iterator>
    </tbody>
</table>
            </s:else>