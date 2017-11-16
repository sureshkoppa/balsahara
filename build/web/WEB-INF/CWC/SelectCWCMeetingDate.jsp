<%-- 
    Document   : SelectCWCMeetingDate
    Created on : Jul 27, 2011, 2:25:19 PM
    Author     : Ramu Parupalli
--%>

<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <sx:head/>
            <script>
            function show_details(val) {
                 if(val.value!=1){
            dojo.event.topic.publish("show_cwcmeetingminutes");
        
                 }
          }
                     
        </script>
           

    </head>
    <body>
        <center>
            <h2><s:text name="global.heading.SelCWCMeetDate"/></h2>
             
             <s:form action="CW-ViewCWCMeetingDetails" method="get" theme="css_xhtml" id="ViewCWCMeetingDetails" name="ViewCWCMeetingDetails">
                 <s:hidden name="formName" value="ViewCWCMeetingDetails"/>
                   <s:hidden name="homeid" value="%{homeId}"/>
                           
                  
               <table border="1">
                    <tr><td></td>
                        <td><s:text name="global.label.MeetDate"/>: </td>
                        <td><s:text name="global.label.NumChildInte"/>:</td>
                        <%-- <td>  <s:select name="selectedMeetingdate" id="selectedMeetingdate" labelposition="left" headerKey="non" headerValue="--Please Select--" list="cwcMinuteslist"  onchange="javascript:show_details(this);return false;"/></td> --%>
                    </tr> 
                  
                    <s:iterator  value="cwcMeetingOverViewDTOList">
                        <tr><td align="center"><input type="radio" name="selectedMeetingdate" value="<s:property value="orderDate"/>" onchange="javascript:show_details(this);return false;" ></td>
                            <td align="center"><s:date name="orderDate" format="dd/MM/yyyy"/> <%--s:property value="orderDate"/--%></td>
                            <td align="center"><s:property value="noOfProfilesVisited"/></td>
                        </tr>
                    </s:iterator>
                    
                      </table>
                    
              <table>
                 <tr> <td>
                    <s:url id="d_url" action="CW-MeetingMInutesDetails"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_cwcmeetingminutes" formId="ViewCWCMeetingDetails" showLoadingText="true">
                 </sx:div></td></tr>
                 
                 </table>
                          </s:form>
            
        </center>
</body>
</html>

