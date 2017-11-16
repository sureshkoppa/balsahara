<%-- 
    Document   : AddCategoryRegister
    Created on : Apr 5, 2011, 3:45:26 PM
    Author     : ksuresh
--%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="sx" uri="/struts-dojo-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<%@page  import="java.util.List" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
         <sx:head/>
         <%--
         <script type="text/javascript">            
            <jsp:include page="../../javascripts/ds_addCat.jsp"></jsp:include> 
        </script>
         --%>
        <script type="text/javascript">
            
         function populate_allsubcat()
            {
               var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                
                    /*validating the fields present in the form*/
                     if($("#addcat_prodcat_select").val()=="select")
                        {
                            $dialog.html("Sorry! Select Category Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                            dojo.event.topic.publish("popSubcat");
                         //  document.getElementById('AddCategoryForm').action="DS-addCategory-popAllSubCat";
                          // document.getElementById('AddCategoryForm').submit();
                        }

            }     
       
         function display_end()
         {
           
                 document.getElementById('addcat_details').style.visibility="visible";
         }
         function initial_page()
         {
              document.getElementById('AddCategoryForm').action="DS-addCategory-populate";
              document.getElementById('AddCategoryForm').submit();
         }
         function check()
         {

             if(document.getElementById("addcat_prodcat_select_top")!=null)
                 {
                     if(document.getElementById("addcat_prodcat_select_top").headervalue=="--select top category--")
                         {
                             alert("Please select product top category");
                             return false;
                         }
                     
                 }
                 else if(document.getElementById("addcat_prodcat_select_sub")!=null)
                     {
                         if(document.getElementById("addcat_prodcat_select_sub").value=="select")
                         {
                             alert("Please select product sub category");
                             return false;
                         }
                     }
                    

         }

        </script>
        
    </head>
    <body>
        <s:fielderror/>
        <s:form name="AddCategoryForm" action="DS-addCategory-addCat"  theme="css_xhtml" id="AddCategoryForm"  onsubmit="return check();">
            <table border="1" align="center" style="font-size:small;width: 30em" >
                      <caption><center><font size="3"><b><s:text name="heading.addCat" /></b></font></center></caption>
                        <tbody align="left" id="table1">

                            <tr>
                           <td><s:text name="label.prodTopcat"  />*</td>
                           <td width="180" align="left">
                               
                              
                                        <select name="addcat_prodcat_select" onchange="populate_allsubcat()" id="addcat_prodcat_select">
                                            <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                           <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                               <option value=${obj.key}>${obj.value}</option>
                                           </c:forEach>
                               </select>
                               
                                  
                      
                        </td>
                            </tr>
                                 </tbody>
                 </table>
                                 <s:url id="d_url33" action="DS-addCategory-popAllSubCat"/>  
                                 <s:div id="det123" formId="AddCategoryForm" />
                                 <sx:bind id="details33" targets="det123"  formId="AddCategoryForm" href="%{d_url33}" listenTopics="popSubcat"  afterNotifyTopics="start">
                                           </sx:bind>
                       
                                 
                                               
            
                     <div id="addcat_details"  style="visibility: hidden">
                 <table border="1" align="center" style="font-size:small;width: 30em">
                     <tbody>
                        
                <tr>
                    <td><s:text name="label.subCatName"/>*</td>
                    <td><s:textfield name="addcat_newcat_name" id="addcat_newcat_name"  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>

                <tr>
                    <td><s:text name="label.remarksCatType"/></td>
                    <td><s:textfield name="addcat_newcat_itemType" id="addcat_newcat_itemType" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                      
            </tbody>
        </table>
                 
                    <%--if(((java.util.List)request.getAttribute("addCat_subCatItems")).size()!=0){%>

                        Product sub Category:<s:select list="addcat_sub_category" name="addcat_sub_sel_category"  />
                    <%}--%>
                  
                <center>
                  <table align="center">
                        <tr>
                           <td><input type="submit" value="<s:text name="button.saveCat"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                    </table>
                </center>
                         </div>
                        
                        <s:token value="mytoken"/>
        </s:form>
         <!--this div is for showing preview (unlike other forms here all fields are added dynamically in preview)-->
         <center>
        <div id="dialog-form_add_cat" title="<s:text name="button.saveCat"/>">
                <table  id="addcat_preview" border="1">
                </table>
        </div>
         </center>
    </body>
</html>
