<%-- 
    Document   : subcatItems
    Created on : 6 Jul, 2011, 2:12:10 PM
    Author     : suresh
--%>


<%@taglib  prefix="s" uri="/struts-tags" %>

   <s:if test="%{remove_item_detail!=null}">
         
                  <s:if test="%{remove_item_detail.size()==0}">
                                <br/><br/>
                                <font style="font-size: medium"><s:text name="message.noItemsInCat"><s:param> <s:property value="removeitem_items_selectnames" escape="false"/>
                                             </s:param>
                                </s:text></font>
                  </s:if>  
                 <s:else>    
            <h1><s:text name="global.message.selItemIss"/>  <i> <s:property value="removeitem_items_selectnames" escape="false"/> </i>  </h1>
         
            <table border="1"  align="center" id="IssueItems"  style="text-align: center;font-size: small;">
              <tr>
              
                        <td></td>
                        <th><s:text name="th.itemName"/></th>
                        <th><s:text name="th.specOrSize"/></th>
                        <th><s:text name="th.quanOnHand"/></th>
                        <th><s:text name="th.units"/></th>
                        <th><s:text name="th.quanIssud"/></th>
                  
                        
                      
                        <th><s:text name="th.remarks"/></th>
                        <th><s:text name="th.mfgDate"/></th>
                        <th><s:text name="th.expDate"/></th>
                        
              </tr>
                 
                    <s:iterator value="remove_item_detail" status="stat" id="remove_item_detail">
                        <s:hidden id="itr" value="%{remove_item_detail.size}"/>
            <tr>
                <td><s:checkbox name="issue_item_chk" fieldValue="%{itemNO}" value="false" theme="simple"/>
                    
                </td>
            <td><s:property value="itemName" escape="false"/>
                <s:hidden name="issue_iname11" value="%{itemName}" />
            </td>
            <td><s:property value="specifications" escape="false"/></td>
            
            <td><s:property value="qoh"/></td>  
            
            <td><s:textfield  name="issue_item_quantity[%{itemNO}]" size="4" id="issue_item_quantity" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>         
            <td><s:property value="UOM" escape="false"/></td>
            <td><s:textarea name="issue_item_remarks[%{itemNO}]" rows="2" cols="10" id="issue_item_remarks" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>   
           <td><s:if test="%{Mfg_date==null}">
                   <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:date name="Mfg_date" format="dd/MM/yy" /> 
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:date name="Exp_date" format="dd/MM/yy"/> 
                </s:else></td>
            </tr>  
        </s:iterator>
              
               
            </table>
                <center> 
                           <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
        <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>
            <table>
                <tr>
                    <td>
                        <input type="submit" value="<s:text name="button.submit"/>" />
                    </td>
                    <td><input type="reset"  value="<s:text name="button.clear"/>"/></td>
                </tr>
            </table>  
                       </center>
           </s:else>
                               
                            </s:if>
            <s:else>
                
                
            </s:else>
   