<%-- 
    Document   : EnterTopCategory
    Created on : 6 Jul, 2011, 1:06:05 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            
             <jsp:include page="../../javascripts/ds_addTopCat.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <s:form action="DS-addCategory-addTopCat"  theme="css_xhtml" name="AddTopCatForm" id="AddTopCatForm"> 
        <table border="1" align="center" style="font-size:small">
                <caption><font size="3"><b><center><s:text name="heading.enterTopCat"/></center></b></font></caption>
                        <tbody align="left" id="table1">
                <tr>
                    <td><s:text name="label.enterTopCat"/>*</td>
                    <td><s:textfield name="newtopcat_name" id="newtopcat_name" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                <tr>
                    <td><s:text name="label.remarksCatType"/></td>
                    <td><s:textfield name="newtopcat_type" id="newtopcat_type" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>    
                        </tbody>
            </table>
            <center>
                  <table align="center">
                        <tr>
                             <td><input type="submit" value="<s:text name="button.saveCat"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                    </table>
                </center>
            
        </s:form>
         <!--this div is for showing preview (unlike other forms here all fields are added dynamically in preview)-->
        <div id="dialog-form_add_topcat" title="<s:text name="js.preview.addTopCatHead"/>">
            <center>
                <table border="1" id="addtopcat_preview">
                </table>
            </center>
        </div>
        
    </body>
</html>
