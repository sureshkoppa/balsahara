<%-- 
    Document   : ModifyItemTree
    Created on : 7 Jul, 2011, 3:18:48 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript">
             var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 140,
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
            
            
           function populate_allsubcat()
            {
                   if($("#addcat_prodcat_select").val()=="start")
                        {
                            $dialog.html("Sorry! Select Category Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                    
                   
                 document.getElementById('ModifyItemForm').action="DS-modifyItem-popAllSubCat";
                 document.getElementById('ModifyItemForm').submit();
                        }
            }
         function  populate_item()
          {
             //alert("in populate items");
               var con=document.getElementById("removeitem_items_select");
                        // alert("opt count3---"+con);
                         if(count_opt(con)==0)
                        {
                           // alert("opt count4---");
                            $dialog.html("Sorry! Select at least 1 sub Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                            
             
            document.getElementById('ModifyItemForm').action="DS-modifyItem-modifyItemDetail";
            document.getElementById('ModifyItemForm').submit();
                        }
         }
          function count_opt(oSelect)
          {
              
              var count=0;
            //  alert("opt count---"+count+"+++++++++++"+oSelect);
              for(var i=0;i<oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                     
                 }
                 return count;
                // alert("opt count2---"+count);
                 
          }
        </script>
    </head>
    <body>
       <h2 style="text-align: center"><s:text name="heading.enterQOH"/></h2>
    <h5 style="text-align: center">(Page for Entering Existing Quantity At first time)</h5>


       <s:form name="ModifyItemForm" action="DS-deleteItemSubAction-listDeleteItem"  theme="css_xhtml" id="ModifyItemForm">
                        <table border="1" align="center" style="font-size:small">
                            <tr>
                                <td><s:text name="label.prodTopcat"/></td>
                                <td>
                                    
                                 <select name="addcat_prodcat_select" id="addcat_prodcat_select" onchange="populate_allsubcat()" >
                                <option value="select">---<s:text name="option.selTopCat"/>---</option>  
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                 <%--  <option value="select">--<s:text name="option.selTopCat"/>--</option>  --%>
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                                    </select> 
                                
                                </td>
                            </tr>
                           <s:if test="%{removeitem_subcat_pop!=null}">  
                               <tr>
                                   <td><s:text name="label.prodSubcats"/></td>
                                   <td>
                                        <select name="removeitem_items_select" id="removeitem_items_select" multiple>
                                            <%--         <option value="select">--<s:text name="option.selSubCat"/>--</option>    --%>
                                   <c:forEach items="${removeitem_subcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                                            </select>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="text-align: right">  <input type="button" onclick="populate_item()" value="<s:text name='button.getItems'/>"/></td>
                               </tr>    
                           </s:if>        
                        </table>
       
                            
       </s:form>
         
    </body>
</html>