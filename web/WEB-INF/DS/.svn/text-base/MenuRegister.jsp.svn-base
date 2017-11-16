<%-- 
    Document   : MenuRegister
    Created on : 15 Nov, 2012, 2:24:52 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%--
        <script>
            function validate()
            {
               // alert("in validate-----");
                        var myform = document.getElementById('MenuForm');
                        var inputTags = myform.getElementsByTagName('input');
                        var checkboxCount = 0;
                        for (var i=0, length = inputTags.length; i<length; i++) {
                             if (inputTags[i].type == 'checkbox') {
                                 checkboxCount++;
                             }
                        }
                        alert(checkboxCount);
                alert("------>"+checkboxCount);
                 if(checkboxCount>1)
                   {
                               for(var k=0;k<checkboxCount;k++)  
                               {
                                       if(document.MenuForm.nameMenu[k].value.length==0)
                                       {
                                              alert("name of "+k+" can not be empty");
                                              return false;
                                       } 
                                       if(document.menuType[k].value.toString()==1)
                                       {
                                           alert("select---> "+k+" choice");
                                           return false;
                                       }
                               }
                                   


                        
                  }
                  else
                      {
                          
                                      if(document.MenuForm.nameMenu.value.length==0)
                                       {
                                              alert("name of can not be empty");
                                              return false;
                                       } 
                                          if(document.menuType.headerValue==1)
                                           {
                                                alert("select--- choice");
                                                return false;
                                           }
                          
                      }
                return false;
            }
</script>   --%> 
    </head>
    <body>
        <center>
            <CAPTION><font size="3"><b><s:text name="global.heading.addMenuItem"/></b></font></CAPTION>

            <s:form name="MenuForm" action="DS-menu-saveMenu" theme="css_xhtml" id="MenuForm" ><%--onsubmit="javascript:return validate()"> --%>
                
                         
                     
                            <table id="MIT" border="1">
             <tr>
                 <td><b><s:text name="label.select"/></b></td>
                 <td><b><s:text name="global.label.nameOfMenu"/></b></td>
          
                 <td><b><s:text name="global.label.type"/></b></td>
              
             </tr>
             <tr>
               <td><INPUT type="checkbox" name="chk" /></td>
               <td><s:textfield name="nameMenu" size="7" id="nameMenu"/></td>
             
               <td><select name="menuType" id="menuType" >
                       <option value="1"><s:text name="global.option.headerKey"/></option>
                       <option value="Break Fast"><s:text name="global.label.breakFast"/></option>
                       <option value="Lunch"><s:text name="global.label.lunch"/></option>
                       <option value="Snacks"><s:text name="global.label.snacks"/></option>
                       <option value="Snacks"><s:text name="global.label.dinner"/></option>
                       
                   </select></td>
             </tr>
        </table>
                        
                       <INPUT type="button" value="<s:text name="label.addRow"/>" onclick="addRow('MIT')" />&nbsp;&nbsp;<INPUT type="button" value="<s:text name="label.delRow"/>" onclick="deleteRow('MIT')"/>
                             
            
               <table align="center">
                        <tr>
                           <td><input type="submit" value="<s:text name="button.save"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                    </table>
            </s:form>
        </center>
    </body>
</html>
