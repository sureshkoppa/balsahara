<%-- 
    Document   : popSubcat
    Created on : 13 Jul, 2011, 4:30:51 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
  <s:if test='%{removeitem_subcat_pop.size()==0}'>
   
    
       </s:if>
       <s:else>
                         <%--<s:if test="%{removeitem_items_select==null}"> --%>
                                    <table border="1" align="center" style="font-size:small">
                               <tr>
                                   <td><s:text name="label.prodSubcat"/></td>
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
                                   <td colspan="2" style="text-align: right">  <input type="button" onclick="popItem()" value="<s:text name='button.getItems'/>"/></td>
                               </tr> 
                               </table>
                               <%-- </s:if> 
                               
                               
                               <s:else>
                                             
                                    <table border="1" align="center" style="font-size:small">           
                                          
                               
                               <tr>
                                   <td><s:text name="message.subCatSelected"/></td><td><s:property value="subcat_selected" escape="false"/></td>
                               </tr> 
                                    </table>
                                </s:else>
                      
--%>


       </s:else>   

<%--
  <s:if test='%{removeitem_subcat_pop.size()==0}'>
   
    
       </s:if>
       <s:else>
       <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                                   <tr>
                                       <td>Product Sub Category(s)</td>
                                       <td><s:select list="removeitem_subcat_pop" name="removeitem_items_select" id="removeitem_items_select"   multiple="true" theme="simple"/></td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: right">
                                           <input type="button" onclick="popItem()" value="get items"/>
                                       </td>
                                   </tr>
                              
                 
                                 </tbody>
                </table>
                            
       </s:else>   

--%>