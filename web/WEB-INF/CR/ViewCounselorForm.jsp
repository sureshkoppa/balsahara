<%-- 
    Document   : ViewCounselorForm
    Created on : 9 Mar, 2012, 9:49:27 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <sx:head/>
         
           <script>
                  /*var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
           
            function popCounsel()
            {  
                  if($("#view_counsel_profileId").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select ProfileId");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
              
              
                          dojo.event.topic.publish("viewCounsilTopics");  
                      //     document.ViewCounselForm.view_counsel_profileId.disabled=true;
                    }

            }*/  
            
         
            function dis1(field)
            {
                
                document.getElementById('counselChildDate').value=field.value;
                
                 dojo.event.topic.publish("viewCounsilDetails");
                 
               //  document.ViewCounselForm.view_counsel_profileId.disabled=false;
                
                 
            }
            
            <jsp:include page="../../javascripts/ViewCounselorForm_Validation.jsp"></jsp:include> 
        </script>     
    </head>
    <body>
        <s:form action="" id="ViewCounselForm" name="ViewCounselForm" method="post" theme="simple">
            <table border="1">
                <tr>
                    <td><s:text name="package.label.viewCounSelProfId" />:</td><td><select name="view_counsel_profileId" id="view_counsel_profileId">
                                   <option value="select">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${counsel_listChilds}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childName}---->${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--<s:select name="view_counsel_profileId" id="view_counsel_profileId" list="counsel_listChilds" listKey="%{childProfileId}" listValue="%{childName+'---->'+childProfileId}" theme="simple"  headerKey="select" headerValue="--select--" disabled="false"/>--%></td>
                </tr>
                
            </table> 
            <center>
                   <input type="button" onclick="popCounsel()" value="<s:text name="package.button.viewCounselSubmit"/>" style="background-position: center"/>
            </center>
       
        
        <s:url action="CR-viewCounselChid" id="urlViewCounsel"/>
        <sx:div id="div123" listenTopics="viewCounsilTopics" formId="ViewCounselForm" href="%{urlViewCounsel}">
            
        </sx:div>
        
        
          <s:url action="CR-counselChidDetail" id="urlCounselDetail"/>
        <sx:div id="div456" listenTopics="viewCounsilDetails" formId="ViewCounselForm" href="%{urlCounselDetail}">
            
        </sx:div>
         </s:form>
        
    </body>
</html>
