<%-- 
    Document   : ViewIssueDetail
    Created on : 23 Feb, 2012, 4:08:55 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
     <table>
         
             <tbody>
                 <tr>
                     <td><b><s:text name="label.issDate"/>:</b></td>
                     <td><s:property value="issueInmates.date"/></td>
                 </tr>
                 <tr>
                     <td><b><s:text name="leftMenu.ds.issues"/>:</b></td>
                     <td><s:property value="issueInmates.item" escape="false"/></td>
                 </tr>
                 <tr>
                     <td><b>Total Issued Inmates:</b></td>
                     <td><s:property value="issueInmates.issued_child.size()"/></td>
                 </tr>
             </tbody>
         </table>

        
        <table border="1">
             <thead>
                 <tr>
                     <th><s:text name="global.label.childProID"/></th>
                     <th><s:text name="label.fName"/></th>
                     <th><s:text name="label.lName"/></th>
                 </tr>
             </thead>    
             
            <s:iterator value="issueInmates.issued_child" >
                <s:if test="%{issueInmates.issued_child!=null}">
            
                    <tr>
                         
                        <td> <s:property value="childProfileId"/>  </td>
                        <td> <s:property value="childName"/></td>
                        <td> <s:property value="childSurname"/></td>
                    </tr>
                    </s:if>
               </s:iterator>
        </table>
       
                  
    </body>
</html>
