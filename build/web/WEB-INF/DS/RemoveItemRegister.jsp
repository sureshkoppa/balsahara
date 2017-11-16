<%-- 
    Document   : RemoveItemRegister
    Created on : Apr 27, 2011, 10:59:36 AM
    Author     : ksuresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--
        <script lang="text/javascript">
            <jsp:include page="../../javascripts/ds_remItem.jsp"></jsp:include>
        </script>
       --%>
        <script language="javascript">
                 
                var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
               
               
               var $dialog = $('<div></div>')
		    .html('This dialog will show every time!')
		    .dialog({
			autoOpen: false,
                        height: 130,
			width: 250,
                        modal: true,
                        title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
	     	});
                
           function populate_allsubcat()
            {
                // alert("in populate item for allsubcat");
                if($("#addcat_prodcat_select").val()=="select")
                        {
                            $dialog.html("<s:text name="js.err.topCatSelect"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                
                 document.getElementById('RemoveItemForm').action="DS-removeItem-popAllSubCat";
                 document.getElementById('RemoveItemForm').submit();
                        }

            }
       
          function  populate_item()
          {
             //alert("in populate items");
               var con=document.getElementById("removeitem_items_select");
                        // alert("opt count3---"+con);
                         if(count_opt(con)==0)
                        {
                           // alert("opt count4---");
                            $dialog.html("<s:text name="js.err.subCatSelect"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                            
                       // alert("opt count------5---");
          
            document.getElementById('RemoveItemForm').action="DS-removeItem-popSelectItem";
            document.getElementById('RemoveItemForm').submit();
                        }
         }
         function remove_item()
         {
             var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {   
                            
                         
                        max=document.RemoveItemForm.itemChecked.length;
                        }  
                //alert("------>"+max);
                     var total=0;
                //     var max=document.DonationForm.donation_item_chk.length;
                  if(max!=1)
                      {
                      for (var idx = 0; idx < max; idx++) {
                                    if (eval("document.RemoveItemForm.itemChecked[" + idx + "].checked") == true) {
                                    total += 1;
                              }
                             }
                          }
                      else
                          {
                                    if (document.RemoveItemForm.itemChecked.checked == true) 
                                        total=1;
                              
                          }
             
             if(total==0)
                    {
                        $dialog.html("<s:text name="js.err.selLeastItem"/>");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
             else
              {
                     document.getElementById('RemoveItemForm').action="DS-deleteItemSubAction-listDeleteItem";
                     document.getElementById('RemoveItemForm').submit();
              }
             
             
             
         }
          function count_opt(oSelect)
          {
              
              var count=0;
            //  alert("opt count---"+count+"+++++++++++"+oSelect);
              for(var i=0;i<oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                      //  if(count>maxNum){
                      //     alert("Can't select more than 3");
                      //     return false;
                      //  }
                 }
                 return count;
                // alert("opt count2---"+count);
                 
          }
        
        </script>
        
    </head>
    <body>
        <h2 style="text-align: center"><s:text name="heading.remItem"/></h2>
        <s:form name="RemoveItemForm" action="DS-deleteItemSubAction-listDeleteItem"  theme="css_xhtml" id="RemoveItemForm" onsubmit="javascript:return remove_item();">
                        <table border="1" align="center" style="font-size:small">
                            <tr>
                                <td><s:text name="label.prodTopcat"/></td>
                                <td>
                                
                                 <s:if test="%{addcat_prodcat_select ==null}">
                               <select name="addcat_prodcat_select" onchange="populate_allsubcat()" id="addcat_prodcat_select">
                                   <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                               </select>
                                </s:if>
                                <s:else>
                                    <s:property value="addcat_prodcat_select" escape="false"/>
                                    <s:hidden name="topcat_selected" value="%{addcat_prodcat_select}"/>
                                </s:else>
                                </td>
                            </tr>
                           <s:if test="%{removeitem_subcat_pop!=null}">  
                                <s:if test="%{removeitem_items_select==null}">
                               <tr>
                                   <td><s:text name="label.prodSubcats"/></td>
                                   <td>
                                      
                                       <select name="removeitem_items_select" id="removeitem_items_select"  multiple="true">
                                                <option value="select">--<s:text name="option.selSubCat"/>--</option>
                                   <c:forEach items="${removeitem_subcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                                       </select>
                                      
                                           
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="text-align: right">  <input type="button" onclick="populate_item()" value="<s:text name='button.getItems'/>"/></td>
                               </tr> 
                                </s:if>
                               <s:else>   
                               
                               <tr>
                                   <td><s:text name="message.subCatSelected"/></td><td><s:property value="subcat_selected" escape="false"/></td>
                               </tr> 
                                </s:else>
                           </s:if>        
                        </table>
                  <s:if test="%{remove_item_detail!=null}">
                  <s:if test="%{remove_item_detail.size()==0}">
                                <br/><br/>
                                <font style="font-size: medium"> <i>
                                    
                                    <s:property value="removeitem_items_selectnames" escape="false"/><s:text name="message.noItemsInCat"/>
                                    
                                     
                                    </i></font>
                  </s:if>  
                 <s:else>    
                     <h1><i> <s:text name="message.itemsInCat">
                                 <s:param>${removeitem_items_selectnames}</s:param>
                             
                             </s:text>
                             </i>  </h1>
            <table border="1" align="center" style="font-size: smaller;text-align: center">
                <thead>
                    <tr>
                        <td></td>
                        <td><s:text name="th.itemName"/></td>
                        <td><s:text name="th.specOrSize"/></td>
                        <td><s:text name="th.quanOnHand"/></td>
                        <td><s:text name="th.unitOfMes"/> </td>
                        <td><s:text name="th.unitPrice"/>  </td>
                        <td><s:text name="th.remarks"/></td>
                        <td><s:text name="th.mfgDate"/> </td>
                        <td><s:text name="th.expDate"/>    </td>
                        <td><s:text name="th.delete"/> </td>
                    </tr>
                </thead>
                
                <tbody>  
        <s:iterator value="remove_item_detail">
            <s:hidden id="itr" value="%{remove_item_detail.size}"/>
            <tr>
                <td><s:checkbox name="itemChecked" fieldValue="%{itemNO}" value="false" id="item_remove"/></td>
        <td><s:property value="itemName" escape="false"/></td>
        <td><s:property value="specifications" escape="false"/></td>
            <td><s:property value="qoh"/></td>
            <td><s:property value="UOM" escape="false"/></td>
            <td><s:property value="unitPrice"/></td>
            <td><s:property value="remarks" escape="false"/></td>
            <td><s:if test="%{Mfg_date==null}">
                    N.A
                </s:if>
                <s:else>
                    <s:property value="Mfg_date"/> 
                </s:else>
             </td>
            <td><s:if test="%{Exp_date==null}">
                    N.A
                </s:if>
                <s:else>
                    <s:property value="Exp_date"/> 
                </s:else></td>
            
            <td>
             
                <s:a href="DS-deleteItemSubAction-getDeleteItem?itemChecked=%{itemNO}"> 
                    <img width="11" height="13" src="images/button_delete.png" alt="Delete" title="Delete" border="0"/>
                </s:a>
           </td>
            </tr>  
        </s:iterator>
                </tbody>
            </table>
            
                <center>
                  <table align="center">
                        <tr>
                             <td><input type="submit" value="<s:text name="button.err.ok"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>" /></td>
                        </tr>
                    </table>
                </center>
        
           </s:else>
                               
                            </s:if>
                         
       </s:form>
    </body>
</html>
