<%-- 
    Document   : popupex
    Created on : 30 Nov, 2011, 11:22:36 AM
    Author     : suresh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.cdac.usermanagement.ORM.ChildMaster"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        
        
        
        
        
        
        <font style="font-size: medium"> <s:text name="global.label.childsInHome"/>:: <b> <s:property value="%{home}"/></b></font>
        
        <br/><br/>
        <%--  
             List<ChildMaster> ch_list=(ArrayList<ChildMaster>)request.getParameter("home");
             
             for()
        

        --%>
       
        <table border="1" style="font-size: small" >
            <tr>
                <td><s:text name="global.label.childProID"/></td>
                <td><s:text name="label.fName"/></td>
                <td><s:text name="label.lName"/></td>
            </tr>  
            
        <s:iterator value="home_child" var="child">
        
                <tr>
                    <td>
                          <s:url action="CH-ReportAction" var="REPORTtag" >
                                          <s:param name="childProfileId">
                                                <s:property value="childProfileId"/>
                                          </s:param>
                                       </s:url> 
                                   
                        
                        
              <s:a href="%{REPORTtag}" target="_blank"> <s:property value="childProfileId" />   </s:a>
                    
                    
                    
                    
                    </td>
                    <td><s:property value="childName"/></td> 
                    <td> <s:if test='%{childSurname.equals("NA")}'>
                            -
                        </s:if>
                        <s:else>
                        <s:property value="childSurname"/>
                       </s:else>
                    </td>
                </tr>
    
        </s:iterator>  
                
        </table>
        
    </body>
    
</html>
