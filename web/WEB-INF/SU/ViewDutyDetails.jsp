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
             <p style="font-size: small">       <s:text name="label.dutyDetAre"/>: </p>
         <center>
                                   <table border="2" style="font-size: small">
                                       <thead>
                                           <tr>
                                               <th><s:text name="label.dutyDate"/></th>
                                               <th><s:text name="label.fromTime"/>(hh:mm)</th>
                                               <th><s:text name="label.toTime"/>(hh:mm)</th>
                                               <th><s:text name="label.dutyAt"/></th>
                                               <th><s:text name="label.observ"/></th>
                                           </tr>
                                       </thead>
                                       <s:iterator value="ViewDutyDetails">
                                           <tr>
                                               <td><s:date name="%{addDuty_date}"  format="dd/MM/yyyy"/></td>    
                                           
                                               <td><s:property value="addDuty_fromTime"/></td>
                                               <td><s:property value="%{addDuty_toTime}" /></td>
                                           <td><s:property value="addDuty_dutyAt"/></td>
                                           <td><s:property value="addDuty_observations"/></td>
                                       </tr>
                                          
                                           
                                           
                                       </s:iterator>
                                       
                                       
                                       
                                   </table></center>
                                   
                               </s:if>
                                 <s:else>
                                     <s:text name="message.noDutySelDates">
                                         <s:param>${viewDuty_name}</s:param>
                                     </s:text>
                                   </s:else>
                           
    </body>
</html>
