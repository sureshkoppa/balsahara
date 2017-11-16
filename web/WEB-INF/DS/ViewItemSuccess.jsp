<%-- 
    Document   : ViewItemSuccess
    Created on : 27 May, 2011, 2:51:39 PM
    Author     : suresh
--%>


<%@page import="com.einnovates.customtags.tree.TreeNode"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib uri="http://einnovates.com/tree4jsp" prefix="t" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       
     
      
       <s:if test="%{itemDetails.size()==0}">
             <br/><br/>
             <font style="font-size: medium"><s:text name="global.message.noItemsInCat">
                                                 <s:param><i><s:property value="leafcat_select" escape="false"/></i></s:param>
                                             </s:text>
             </font>
           
       </s:if>  
           <s:else>    
               <h1>
                   <s:text name="message.itemsInCat">
                       <s:param>${leafcat_select}</s:param>
                       
                   </s:text>
              </h1>
               <button onclick="window.history.back()">Go Back</button>
            <table border="1" align="center" style="text-align: center;font-size: small">
                <thead>
                    <tr><th><s:text name="th.itemName"/></th>
                        <th><s:text name="th.specOrSize"/></th>
                        <th><s:text name="th.quanOnHand"/></th>
                        <th><s:text name="th.unitOfMes"/></th>
                        <th><s:text name="th.unitPrice"/></th>
                        <th><s:text name="th.remarks"/></th>
                        <th><s:text name="th.mfgDate"/></th> 
                        <th><s:text name="th.expDate"/></th>
                    </tr>
                </thead>
                
                <tbody>  
        <s:iterator value="itemDetails">
            <tr>
                <td><s:property value="itemName" escape="false"/></td>
                <td><s:property value="specifications" escape="false"/></td>
                <td><b><s:property value="qoh"/></b></td>
                <td><b><s:property value="UOM" escape="false"/></b></td>
            <td><s:property value="unitPrice"/></td>
            <td><s:property value="remarks" escape="false"/></td>
            <td><s:if test="%{Mfg_date==null}">
                    <i><s:text name="message.na"/></i> 
                </s:if>
                <s:else>
                    <s:date  name="Mfg_date" format="dd/MM/yyyy" />  
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    <i><s:text name="message.na"/></i>
                </s:if>
                <s:else>
                    <s:date name="Exp_date" format="dd/MM/yyyy"/> 
                </s:else></td>
            </tr>  
        </s:iterator>
                </tbody>
            </table>
        <button onclick="window.history.back()">Go Back</button>
           </s:else>
    </body>
</html>
