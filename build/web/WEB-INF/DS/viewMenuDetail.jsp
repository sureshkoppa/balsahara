<%-- 
    Document   : viewMenuDetail
    Created on : 16 Nov, 2012, 5:28:06 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<s:if test="%{mdList==null}">
   
</s:if>
<s:else>
<s:if test="%{mdList.size()==0}">
    <h2><s:text name="global.msg.noMenuDetails"/></h2>
</s:if>
<s:else><hr/>
        <table border="1">
            <tr>
                <th>Date </th>
                <th><s:text name="global.label.items"/></th>
                <th><s:text name="global.label.type"/></th>
                <th><s:text name="global.map.label.inmates"/> </th>
             </tr>    
      
           
                
                
               <s:iterator value="%{mdList}">
               <tr>
                   <td><s:date name="menuDetailPK.menuDate" format="dd/MM/yyyy"/></td>
                   <td><s:property value="menuMaster.type"/></td> 
                   <td><s:property value="menuMaster.itemName"/></td>                   
                   <td><s:property value="numChild"/></td>
                </tr>  
                </s:iterator> 
               
                
           
      
        </table>
</s:else>
</s:else>

