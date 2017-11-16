<%-- 
    Document   : AddPhoto
    Created on : 23 Jul, 2011, 2:14:40 PM
    Author     : suresh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<%@taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
    <head>
         <title>Add Photo Of the Child</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <script type="text/javascript">            
            <jsp:include page="../../javascripts/AddChildPhoto.jsp"></jsp:include>                
             
         </script>
       
    </head>
    <body>
         <center>
             <CAPTION><font size="3"><b><s:text name="global.heading.addPhoto"/></b></font></CAPTION>
        
            <s:form name="PhotoUploadForm" action="Child-AddPhoto-Save" theme="css_xhtml" method="POST" id="PhotoUploadForm" enctype="multipart/form-data">
         <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td><s:text name="label.profileId"/>*</td>
                               <td>                                   
                                   <select name="photoId" id="photoId" >
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>                                                                         
                                        <c:forEach items="${childDTOList}" var="obj">
                                       <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                                   </c:forEach>
                            </select> 
                               </td>
                           </tr>
                           <tr>
                        
                                 <td><s:text name="label.uploadPhoto"/></td>
                                 <td><s:file name="photoFile" id="photoFile" theme="simple" /></td>
                            </tr> 
                        
                 </tbody>
                </table>
            <center>
                  <table align="center">
                        <tr>
                            <td colspan="2"><input id="submitButton" type="submit" value="<s:text name="button.save"/>" /></td>
                            <%--<td><input type="reset" value="<s:text name="button.clear"/>"  /></td>--%>
                        </tr>
                    </table>
                </center>    
                
                
            </s:form>   
         
           <ul>
<li>3MB is Maximum file size</li> 
<li>jpg images only allowed file types</li>
</ul> 
          
         </center>
    </body>
</html>
