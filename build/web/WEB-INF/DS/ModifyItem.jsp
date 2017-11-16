<%-- 
    Document   : ModifyItemSuccess
    Created on : 27 May, 2011, 2:51:39 PM
    Author     : suresh
--%>


<%@page import="com.einnovates.customtags.tree.TreeNode"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
           
         function toggle() {
                  checkboxes = document.getElementsByName('modifyItem_itemNo');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle() {
                  checkboxes = document.getElementsByName('modifyItem_itemNo');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             }
            
        </script>
        <script type="text/javascript">
            //alert("8888888888888888888");
                    <jsp:include page="../../javascripts/ds_modifyItem.jsp"></jsp:include> 
        </script>
    </head>
    <body onload="document.getElementById('dialog-form_enter_qoh').style.visibility='hidden'">
        <h2 style="text-align: center"><s:text name="heading.enterQOH"/></h2>
        <h5 style="text-align: center">(Page for Entering Existing Quantity At first time)</h5>


        <s:form name="ModifyItemForm1" action="DS-modifyItem-modifyItem_qoh"  theme="css_xhtml" id="ModifyItemForm1" onsubmit="javascript:return modify_qoh()">
     
      
       <s:if test="%{itemDetails.size()==0}">
             <br/><br/>
             <font style="font-size: medium">
             <s:text name="message.noItemsInCat">
                 <i><s:param> ${removeitem_items_selectnames} </s:param></i>
             </s:text>
                 </font>
           
       </s:if>  
           <s:else>    
               <br/><br/>
               <h1><s:text name="message.itemsInCat">
                   
                       <i> <s:param>${removeitem_items_selectnames}</s:param> </i>
               </s:text>  
               </h1>
            <table border="1" align="center" style="text-align: center">
                <thead>
                    <tr>
                        <th></th>
                        <th><s:text name="th.itemName"/></th>
                        <th><s:text name="th.specOrSize"/> </th>
                        <th><s:text name="th.quanOnHand"/></th>
                        <th><s:text name="th.units"/></th>
                        <th><s:text name="th.unitPrice"/></th>
                        <th><s:text name="th.remarks"/></th>
                        <th><s:text name="th.mfgDate"/></th>
                        <th><s:text name="th.expDate"/></th>
                    </tr>
                </thead>
                
                <tbody>  
        <s:iterator value="itemDetails" var="id1" >
            <s:hidden id="itr" value="%{itemDetails.size}"/>
            <tr>
                <td><s:checkbox name="modifyItem_itemNo" fieldValue="%{itemNO}" value="false"/>
                    <%--  <s:set name="modifyitem_iname[%{itemNO}]" value="%{itemName}" scope="session" id="modifyitem_iname"/>  
<s:property value="%{modifyitem_iname[%{itemNO}]}"/>  --%>
                </td>    
                <%--   <td><s:textfield value="%{itemName}" theme="css_xhtml" size="7" name="modifyItem_itemName[%{itemNO}]" /></td>
            <td><s:textfield value="%{specifications}"  theme="css_xhtml" size="5" name="modifyItem_itemSpec[%{itemNO}]"/></td>
            <td><s:property value="qoh"/></td>
                --%>
                <td><s:property value="%{itemName}"  escape="false"/>
                    <s:hidden name="modifyitem_iname" value="%{itemName}"  />
                </td>
                <td><s:property value="%{specifications}" escape="false"/></td>
                <s:if test="%{qoh==0.0}">   
            <td><s:textfield name="modifyItem_qoh[%{itemNO}]" value="%{qoh}" size="5" id="modifyItem_qoh" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>    
                </s:if>
                <s:else>
                    <td><s:textfield name="modifyItem_qoh[%{itemNO}]" value="%{qoh}" size="5" id="modifyItem_qoh" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' readonly="true" cssStyle="background-color:#F0F0F0"/></td>           
                    </s:else>
            <td><s:property value="UOM" escape="false"/></td>
            <td><s:property value="unitPrice" /></td>
            <td><s:textarea  theme="css_xhtml" rows="2" cols="5" name="modifyItem_remarks[%{itemNO}]" id="modifyItem_remarks_%{itemNO}" escape="false" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' value="%{remarks}" escapeHtml="false"/>
                  
                </td>
            <td><s:if test="%{Mfg_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:date name="Mfg_date" id="createdDateId1" format="dd/MM/yyyy"/>
                    <s:textfield id="datepicker" value="%{createdDateId1}" theme="css_xhtml" size="6"   name="modifyItem_mfgDate[%{itemNO}]" /> 
                    
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    <s:text name="message.na"/>
                </s:if>
                <s:else>
                    <s:date name="Exp_date" id="createdDateId2" format="dd/MM/yyyy"/>
                    <s:textfield id="datepicker1" value="%{createdDateId2}" theme="css_xhtml" size="6" name="modifyItem_expDate[%{itemNO}]"/> 
                </s:else></td>
            </tr>  
        </s:iterator>
                </tbody>
            </table>
              <center>
                  <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
        <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>
                       
                             <table align="center" >
                                       <tr>
                                           <td><input type="submit" value="<s:text name="button.enterQOH"/>"/></td>
                                           <td><input type="reset" value="<s:text name="button.clear"/>"/></td>
                                       </tr>
                                 </table>
                         </center>
           </s:else>
        </s:form>
      <p style="font-size: small;text-align: center">
          <s:text name="message.noteOnlyInkgs"/> <br/>
                       
                               </p>   
             
                               <div id="dialog-form_enter_qoh" title="<s:text name="js.preView.QOHPreview"/>">
                <center>
                <table border="1" id="enter_qoh_preview">
                    <thead>
                    <tr>
                            <th><s:text name="label.itemName"/></th>
                            <th><s:text name="label.quantity"/></th>
                            <th><s:text name="label.remarks"/></th>
                     </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                </center>
        </div>
                                 
                               
                               
                               
    </body>
</html>
