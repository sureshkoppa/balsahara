<%-- 
    Document   : AddDuty
    Created on : 20 Jun, 2011, 7:11:02 PM
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
            <CAPTION><font size="3"><b>Duty Register</b></font></CAPTION>

            <s:form name="AddDutyForm"  action="SU-addDuty-addDuty" id="AddDutyForm" theme="css_xhtml">
                 <table border="1" align="center" style="font-size:small ;">
                    <tbody align="left" >
                           <tr><td>Security Staff :</td>
                               <td>
                                   <s:select list="addDutyProfile" listKey="profile_id" listValue="profile_name" name="addDuty_name" id="addDuty_name" headerKey="select" headerValue="--Select Profile--" /> 
                                    
                                    
                               </td>
                           </tr>
                           <tr><td>Date of Duty :</td>
                               <td>
                                   <s:textfield id="datepicker" name="addDuty_date" />
                               </td>
                           </tr>
                           <tr><td>From Time* :</td>
                               <td>
                                   <table><tr><td><s:select  name="addDuty_fromTime_hours" id="addDuty_fromTime_hours" list="{'00','01','02','03','04','05','06','07','08','09','10','11'}" /></td><td><s:select  name="addDuty_fromTime_mins" id="addDuty_fromTime_mins" list="{'00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30',
                                             '31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59'}" /></td><td><s:select name="addDuty_fromTime_ampm" id="addDuty_fromTime_ampm" list="{'am','pm'}"/></td></tr>
                                       <tr><td>Hours</td><td>Minutes</td><td>AM/PM</td></tr>
                                   
                                   </table>
                               </td>
                           </tr>
                           <tr><td>To Time* :</td>
                               <td>
                                   <table><tr><td><s:select name="addDuty_toTime_hours" id="addDuty_toTime_hours" list="{'00','01','02','03','04','05','06','07','08','09','10','11'}" /></td><td><s:select name="addDuty_toTime_mins" id="addDuty_toTime_mins" list="{'00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30',
                                             '31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59' }" /></td><td> <s:select name="addDuty_toTime_ampm" id="addDuty_toTime_ampm" list="{'am','pm'}"/></td></tr>
                                 <tr><td>Hours</td><td>Minutes</td><td>AM/PM</td></tr>
                                  
                                 </table>
                               </td>
                           </tr>
                           <tr><td>Duty At :</td>
                               <td>
                                   <s:textfield name="addDuty_dutyAt" id="addDuty_dutyAt" />
                               </td>
                           </tr>
                           <tr><td>Observations<br/> During Duty:</td>
                               <td>
                                   <s:textarea  name="addDuty_observations" id="addDuty_observations" rows="3" cols="30"/>
                               </td>
                           </tr>
                    </tbody>
                 </table>
                               <table>
                                   <tr>
                                       <td>
                                   <s:submit value="Add duty" /></td>
                                       <td>
                                   <s:reset value="Clear" />
                                       </td>
                                   </tr>
                
                               </table>    
            </s:form>  
            
            <div id="dialog-form_add_duty" title="Add Duty Preview" >
                <table border="1" id="addduty_preview">
                </table>
        </div>
            </center>
                
    </body>
</html>
