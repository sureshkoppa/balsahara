<%-- 
    Document   : EnterMenu
    Created on : 15 Nov, 2012, 4:51:38 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <center>
            <CAPTION><font size="3"><b><s:text name="global.leftMenu.entMenuDetails"/></b></font></CAPTION>
            
            
            <s:form name="MenuDetailForm" action="DS-menu-saveMenuDetail" theme="css_xhtml" id="MenuDetailForm">
                <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                        <tr><td><s:text name="global.label.date"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="menu_date" readonly="true"/>
                               </td>
                           </tr>
                   </tbody>           
                </table>    
                
                <table border="1">
                    <thead>
                     <tr>
                             <td><s:text name="global.label.type"/></td>
                             <td width="150"><s:text name="global.label.items"/></td>
                             <td><s:text name="global.label.numOfChild"/></td>           
                     </tr>   
                     </thead>
                     <tbody>
                     <tr>
                             <td><s:text name="global.label.breakFast"/></td>
                             <td><s:iterator value="break_list" var="mitem">
                                     <input type="checkbox" name="bitem_check" value="${menuId}"/> <s:property value="itemName"/><br/>                                      
                                 </s:iterator></td>
                             <td><s:textfield name="break_qty"  size="4" value="%{numChilds}"/></td>
                    </tr>
                    <tr>
                             <td><s:text name="global.label.lunch"/></td>
                             <td><s:iterator value="lunch_list" var="mitem">
                                     <input type="checkbox" name="litem_check" value="${menuId}"/> <s:property value="itemName"/><br/>                                      
                                 </s:iterator></td>
                             <td><s:textfield name="lunch_qty"  size="4" value="%{numChilds}"/></td>
                    </tr>
                    <tr>
                             <td><s:text name="global.label.snacks"/></td>
                             <td><s:iterator value="snacks_list" var="mitem">
                                     <input type="checkbox" name="sitem_check" value="${menuId}"/> <s:property value="itemName"/><br/>                                      
                                 </s:iterator></td>
                             <td><s:textfield name="snacks_qty"  size="4" value="%{numChilds}"/></td>
                    </tr>
                    <tr>
                             <td><s:text name="global.label.dinner"/></td>
                             <td><s:iterator value="dinner_list" var="mitem">
                                   <input type="checkbox" name="ditem_check" value="${menuId}" /> <s:property value="itemName"/><br/>  
                                     
                                 </s:iterator></td>
                             <td><s:textfield name="dinner_qty"  size="4" value="%{numChilds}"/></td>
                    </tr>
                     </tbody>
                </table>
              <table>
                <tr>
                    <td><s:submit value="Save Menu" /></td>
                    <td><s:reset value="Clear"/></td>
                </tr>
            </table> 
                
                
                
                
                
            </s:form>
            
        </center>     
    </body>
</html>
