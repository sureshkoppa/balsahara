<%-- 
    Document   : CaseHistory_View
    Created on : Jul 5, 2011, 10:09:26 AM
    Author     : Ramu Parupalli
--%>

<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
            dojo.event.topic.publish("show_childCaseworkDetails");
        
                     }
            }
                     
        </script>
           

    </head>
    <body>
        <center>
            <h2><s:text name="option.caseWorkView"/></h2>
             <s:form action="CW-Save-To-CH" method="POST" theme="css_xhtml" id="CWView" name="CWView">
                 <s:hidden name="formName" value="CWView"/>
               <table>
                    <tr>
                        <td><s:text name="label.selChildProid"/>: </td>
                        <td>  
                            <%--<s:date name="childDetailsPK.lastModifiedDate" format="yyyy-MM-dd" />--%>
                            <select name="childProfileIdAndDateOfCaseWork" id="childProfileId" onchange="javascript:show_details(this);return false;">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childPIDList}" var="obj">
                                       <option value="${obj.childDetailsPK.childProfileId},${obj.childDetailsPK.lastModifiedDate}">${obj.childName}-->${obj.childDetailsPK.childProfileId}->${obj.childDetailsPK.lastModifiedDate}</option>
                                   </c:forEach>
                            </select>  </td>
                            
                            <%--

                            (new java.text.SimpleDateFormat('MM/dd/yyyy')).format(new java.util.Date(#this[0].time))
                            
                            "%{childName+'-->'+childDetailsPK.childProfileId+'--->'+childDetailsPK.lastModifiedDate}"
                            
                            --%>
                    
                    
                    </tr>    
                      </table>
              <table>
                 <tr> <td>
                    <s:url id="d_url" action="CW-View"/>                  
                 <sx:div id="details" href="%{d_url}" listenTopics="show_childCaseworkDetails" formId="CWView" showLoadingText="true">
                 </sx:div></td></tr>
                 
                 </table>
                          </s:form>
            
        </center>
</body>
</html>
