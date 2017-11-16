<%-- 
    Document   : DeleteItemConfirm
    Created on : 1 Jun, 2011, 4:50:56 PM
    Author     : suresh
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function op_cancel()
            {
                
        
                     document.getElementById('RemoveItemConfirm').action="DS-removeItem-cancelRemove";
                     document.getElementById('RemoveItemConfirm').submit();
            }
            
        </script>
    </head>
    <body>
        <s:text name="message.confirRem"/>:
        <s:form action="DS-removeItem-removeItem" name="RemoveItemConfirm" id="RemoveItemConfirm"> 
       <table border="2">
           <thead>
           <tr>
                        <td><s:text name="th.srNo"/></td>
                        <td><s:text name="th.itemName"/></td>
                        <td><s:text name="th.specOrSize"/></td>
                        <td><s:text name="th.quanOnHand"/></td>
                        <td><s:text name="th.unitOfMes"/></td>
                        <td><s:text name="th.unitPrice"/></td>
                        <td><s:text name="th.remarks"/></td>
                        <td><s:text name="th.mfgDate"/> </td>
                        <td><s:text name="th.expDate"/></td>
           </tr>
           </thead>
           <tbody>
               
              
               
               <s:iterator   value="deleteItemList" id="ib" status="itemStatus">
            <tr>
            <td><s:property value="#itemStatus.count"/>
                <s:hidden name="deleteItemNo"   value="%{itemNO}" /></td>    
            <td><s:property value="itemName" escape="false"/></td>
            <td><s:property value="specifications" escape="false"/></td>
            <td><s:property value="qoh"/></td>
            <td><s:property value="UOM" escape="false"/></td>
            <td><s:property value="unitPrice"/></td>
            <td><s:property value="remarks" escape="false"/></td>
           <td><s:if test="%{Mfg_date==null}">
                   <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:property value="Mfg_date"/> 
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    <s:text name="message.na" />
                </s:if>
                <s:else>
                    <s:property value="Exp_date"/> 
                </s:else></td>
            </tr>  
                    </s:iterator>
           </tbody>
          

          </table>
              <center>
                
            <table>
                <tr>
       
                    <td> <s:submit cssClass="button" name="buttonVal" value="confirm" theme="simple" /></td>
                    <td> <s:submit cssClass="button" name="buttonVal"  value="cancel" theme="simple" onclick="op_cancel();"/></td>
                </tr>
            </table>
              </center>
        </s:form>
    </body>
</html>
