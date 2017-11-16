<%-- 
    Document   : viewInterviewRegister
    Created on : Jul 8, 2011, 11:56:17 AM
    Author     : Ramu Parupalli
--%>

<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
            <sx:head/>
            <script>
            function show_details(val) {
               // alert(val.value);
              //  dojo.event.topic.publish("show_childdetails");
               if(val.value!=1){
            dojo.event.topic.publish("show_interviewregister");
        
                     }
            }
                     
        </script>
           

    </head>
    <body>
        <center>
            <h2><s:text name="label.intRegView"/></h2>
             <s:form action="CW-ViewInterview" method="POST" theme="css_xhtml" id="Viewinterview" name="Viewinterview">
                 <s:hidden name="formName" value="Viewinterview"/>
               <table>
                    <tr>
                        <td><s:text name="label.selChildProid"/>: </td>
                         <td><select name="childProfileId" id="childProfileId" onchange="javascript:show_details(this);return false;">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${interviewRegisterChild}" var="obj">
                                       <option value="${obj.interviewRegisterPK.childProfileId}">${obj.childMaster.childName}-->${obj.interviewRegisterPK.childProfileId}</option>
                                   </c:forEach>
                            </select>  
                                </td>
                    </tr>    
                      </table>
              <table>
                 <tr> <td>
                    <s:url id="d_url" action="DS-Interview_View"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_interviewregister" formId="Viewinterview" showLoadingText="true">
                 </sx:div></td></tr>
                 
                 </table>
                          </s:form>
            
        </center>
</body>
</html>
