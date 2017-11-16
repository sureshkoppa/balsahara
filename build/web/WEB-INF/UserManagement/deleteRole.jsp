<%-- 
    Document   : deleteRole
    Created on : May 23, 2011, 11:18:47 AM
    Author     : NEELAVA
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <table>
            <tr>
                <td>Select any role :</td>
                <!--s:action name="UM-ViewRole"/-->

                <td><s:select list="roles" listKey="roleId" listValue="roleName"/></td>

                <td><s:submit value="Delete"/></td>
            </tr>
        </table>
    </body>
</html>
