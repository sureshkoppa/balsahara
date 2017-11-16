<%-- 
    Document   : AddPhoto
    Created on : 23 Jul, 2011, 2:14:40 PM
    Author     : suresh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b>Add Photo</b></font></CAPTION>
        
            <s:form name="PhotoUploadForm" action="UM-AddPhoto-Save" theme="css_xhtml" method="POST" id="PhotoUploadForm" enctype="multipart/form-data">
         <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <%--tr><td>Profile id*</td>
                               <td><s:textfield name="photoId"/></td>
                           </tr--%>
                           <s:hidden name="photoId" value="%{#session.userid}"/>
                           <tr>
                        
                                 <td>Upload photo</td>
                                 <td><s:file name="photoFile" theme="simple" /></td>
                            </tr> 
                        
                 </tbody>
                </table>
             <table>
                <tr>
                    <td><s:submit value="Save Photo" /></td>
                    <td><s:reset value="Clear"/></td>
                </tr>
            </table>    
                
                
            </s:form>    
       
    </body>
</html>
