<%-- 
    Document   : populateSubCat
    Created on : 21 Jan, 2013, 4:37:39 PM
    Author     : suresh
--%>

<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
        <s:if test="%{removeitem_subcat_pop!=null}">
             <table border="1" align="center" style="font-size:small;width: 30em" >
                 <tbody align="left" id="table1">
                                   <tr>
                                       <td><s:text name="label.prodSubcat"/>*</td>
                                       <td>
                                       <select name="removeitem_items_select" onchange="display_end();"  id="removeitem_items_select">
                                                 <option value="select">--<s:text name="option.selSubCat"/>--</option>
                                   <c:forEach items="${removeitem_subcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                                             </select>
                                       
                                       </td>
                                   </tr>
                                  </tbody>
                 </table>  
                            </s:if>
 
