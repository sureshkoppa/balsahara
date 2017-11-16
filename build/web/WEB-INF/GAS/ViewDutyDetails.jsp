<%-- 
    Document   : ViewDutyDetails
    Created on : 4 Jul, 2011, 5:05:03 PM
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
         <s:if test="ViewDutyDetails.size()!=0">
             <p style="font-size: small">        Duty details  are: </p>
                                   <table border="2" style="font-size: small">
                                       <thead>
                                           <tr>
                                               <td>date</td>
                                               <td>from time</td>
                                               <td>to   &nbsp;&nbsp;time</td>
                                               <td>duty at</td>
                                               <td>observations</td>
                                           </tr>
                                       </thead>
                                       <s:iterator value="ViewDutyDetails">
                                           <tr>
                                               <td><s:date name="%{addDuty_date}"  format="dd/MM/yyyy"/></td>    
                                           
                                               <td><s:property value="addDuty_fromTime"/></td>
                                           <td><s:text name="%{addDuty_toTime}" /></td>
                                           <td><s:property value="addDuty_dutyAt"/></td>
                                           <td><s:property value="addDuty_observations"/></td>
                                       </tr>
                                          
                                           
                                           
                                       </s:iterator>
                                       
                                       
                                       
                                   </table>
                                   
                               </s:if>
                                   <s:else>
                                       
                                 no duty for <s:param name="ViewDutyDetails.profileId"/> between selected dates
                                   </s:else>
                           
    </body>
</html>
