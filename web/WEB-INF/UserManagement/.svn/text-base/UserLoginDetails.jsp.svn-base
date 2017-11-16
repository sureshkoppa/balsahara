<%-- 
    Document   : UserLoginDetails
    Created on : 3 Aug, 2012, 4:21:05 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login Details</title>
    </head>
    <body>
        <h1>User Logins</h1>
        
        <table border="1">
            <tr>
                <th>User Name</th> 
                <th>Home Id</th> 
                <th>Last Login</th> 
                <th>Logged in as</th> 
            </tr>
            
            <s:iterator value="udl">
                <tr>
                    <td><s:property value="userDetailPK.userId"/></td>
                    <td><s:property value="userDetailPK.homeId"/></td>
                    <td><s:property value="lastModifiedDate"/></td>
                    <td><s:property value="lastModifiedBy"/></td>                    
                </tr>
            </s:iterator>
            
        </table>
       
    </body>
</html>
