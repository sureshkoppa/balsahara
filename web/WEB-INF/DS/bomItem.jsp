<%-- 
    Document   : bomItem
    Created on : 20 Jul, 2011, 11:34:54 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="%{bomItem!=null&&bomItem.size()!=0}">
    <h3><s:text name="label.enterBOM"/></h3><h4>(BOM is per child per day Ration consumption)</h4>
    <center>
<table border="1" style="font-size:small;">
   <tbody align="left" id="table1">
       
        <s:iterator value="bomItem" >
         <s:hidden id="itr" value="%{bomItem.size}"/>
         <tr>
             <td>
                 <s:hidden name="bomItemNo" id="bomItemNo" value="%{itemNo}"/>
           
                 <s:property  value="%{itemName}"  escape="false"/></td>
             <s:hidden id="bomItemName_%{itemNo}" value="%{itemName}" />  
             <td><s:textfield name="bom_quanntity[%{itemNo}]" value="%{scale}" theme="css_xhtml" id="bom_quantity_%{itemNo}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
         </tr>
           
            
        </s:iterator>    
                     </tbody>
            </table>
    </center>
            <center>
                <table>
                    <tr>
                        <td><input type="submit" value="<s:text name="button.saveBOM"/>" /></td>
                        <td><input type="reset" value="<s:text name="button.clear"/>" /></td>
                    </tr>
                </table>
          
                        <p style="font-size: small;text-align: center">
                           
                                <s:text name="message.noteBOMReg"/>
                     
                               </p>       
            </center>  
</s:if>
<s:else>
      <br/><br/>
      <s:if test="bomItem!=null">
          <center><font style="font-size: medium;text-align: center"><s:text name="message.noItemsInCat"/><i><s:property value="removeitem_items_selectnames.size()"/></i></font></center>
      </s:if>        
</s:else>