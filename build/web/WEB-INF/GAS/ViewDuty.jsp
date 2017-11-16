<%-- 
    Document   : ViewDuty
    Created on : 1 Jul, 2011, 5:45:08 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>



 <html>
    <head>
       
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b>View Duty Register</b></font></CAPTION>

            <s:form name="AddDutyForm"  action="SU-viewDuty-viewDuty" id="ViewDutyForm" theme="css_xhtml">
                 <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td>Security Staff :</td>
                               <td>
                                   <s:select list="addDutyProfile" listKey="profile_id" listValue="profile_name" name="viewDuty_name" headerKey="select" headerValue="--Select Profile--" /> 
                                    
                                    
                               </td>
                           </tr>
                           <tr><td>From Date :</td>
                               <td>
                                   <s:textfield id="datepicker" name="viewDuty_fromDate" />
                               </td>
                           </tr>
                           <tr><td>To Date :</td>
                               <td><s:textfield id="datepicker1" name="viewDuty_toDate" /></td>
                           </tr>
                    </tbody>
                 </table>
                           
                             
                           
                             <table>
                                   <tr>
                                       <td>
                                   <s:submit value="view duty" /></td>
                                       <td>
                                   <s:reset value="Clear" />
                                       </td>
                                   </tr>
                
                               </table>
            </s:form>
         </center>
 </body>
</html>

