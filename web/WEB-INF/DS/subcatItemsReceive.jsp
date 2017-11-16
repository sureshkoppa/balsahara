<%-- 
    Document   : subcatItemsReceive
    Created on : 20 Jul, 2011, 3:03:26 PM
    Author     : suresh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<html>
    <head>
         <link rel="stylesheet" type="text/css" href="javascripts/keyboard.css"/>
        
        <script type="text/javascript" language="javascript" src='javascripts/keyboard.js'></script>
        
    </head>
    <body>
  <s:if test="%{remove_item_detail!=null}">
      <s:if test="%{remove_item_detail.size()==0}">
            <br/><br/>
            <font style="font-size: medium"><i><s:property value="removeitem_items_selectnames" escape="false"/></i><s:text name="global.message.noItemsInCat"/></font>
      </s:if>
      <s:else> 
          <br/>
          <h1><s:text name="global.message.selItemRec"/>  <s:property value="removeitem_items_selectnames" escape="false"/>  </h1>
          
         
        
       
            <table border="1"  align="center" style="text-align:center;font-size: small">
                <thead>
                    <tr>
                        <th></th>
                        <th><s:text name="th.itemName"/></th>
                        <th><s:text name="th.specOrSize"/></th>
                        
                        <th><s:text name="th.quanOnHand"/></th>
                        <th><s:text name="th.quanRecvd"/></th>
                        <th><s:text name="th.units"/></th>
                        <th><s:text name="th.unitPrice"/></th>
                        <th><s:text name="th.remarks"/></th>
                        <th><s:text name="th.mfgDate"/></th>
                        <th><s:text name="th.expDate"/></th>
                        
                    </tr>
                </thead>
               <tbody>  
                    <s:iterator value="remove_item_detail" status="stat" id="remove_item_detail">
                         <s:hidden id="itr" value="%{remove_item_detail.size}"/>
            <tr>
                <td><s:checkbox name="receiptitemChecked" fieldValue="%{itemNO}" value="false" theme="simple"/>
                  
                </td>
                <td><s:property value="itemName" escape="false"/>
                  <s:hidden name="receipt_iname" value="%{itemName}" />
            </td>
            <td><s:property value="specifications" escape="false"/></td>
          
            <td><s:property value="qoh"/></td>
            <td><s:textfield  name="receiptitem_qoh[%{itemNO}]" size="4" theme="simple" id="receiptitem_qoh" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>                  
         <%--    <td><s:textfield  name="receiptitem_qoh[%{itemNO}]" size="4" theme="simple" id="datepicker" /></td>  --%>
            <td><s:property value="UOM" escape="false"/></td>
            <td><s:property value="unitPrice"/></td>
            
            <td><s:textarea name="receiptitem_remarks[%{itemNO}]" rows="2" cols="10" theme="simple" id="receiptitem_remarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>   
            <td><s:if test="%{Mfg_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:property value="Mfg_date"/> 
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:property value="Exp_date"/> 
                </s:else></td>
           
            </tr>  
        </s:iterator>
                </tbody> 
               
            </table>
                
            
              <center>
                  <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
            <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>     
     
                  <table align="center">
                        <tr>
                            <td><input type="submit" value="<s:text name="button.save"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                    </table>
                
                </center>   
           
      </s:else>
                               
                            </s:if>
            <s:else>
                
            </s:else>
                          
                            
</body>
</html>