<%--
    Document   : RemoveCategoryRegister
    Created on : Apr 5, 2011, 3:45:26 PM
    Author     : ksuresh
--%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<%@page  import="java.util.List" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Category</title>
        <script type="text/javascript">
        
                
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
              function populate_allsubcat()
              {
                     if($("#addcat_prodcat_select").val()=="select")
                        {
                            $dialog.html("Sorry! Select Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                
                
                // alert("in populate item for allsubcat");
                 document.getElementById('RemoveCategoryForm').action="DS-removeCategory-popAllSubCat";
                 document.getElementById('RemoveCategoryForm').submit();
                        }
                        
                       

            }   
     
          function  populate_cat()
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
                            
                       // alert("opt count------5---");
            document.getElementById('RemoveCategoryForm').action="DS-removeCategory-popSelectCategory";
            document.getElementById('RemoveCategoryForm').submit();
                        }
         }
         function check()
         {
                  
                   
                      var max;
                     //  alert("hidden val**"+document.getElementById("itr").value);
                       if(document.getElementById("itr").value==1 )
                       {
                           max=1;
                       }    
                       else    
                        {  
                           max=document.RemoveCategoryForm.removecat_chk.length;
                        }
                
                     var total=0;
                //     var max=document.DonationForm.donation_item_chk.length;
                //alert(max+"---"+total);
                  if(max>1)
                      {
                           for (var idx = 0; idx < max; idx++) 
                           {
                                    if (eval("document.RemoveCategoryForm.removecat_chk[" + idx + "].checked") == true) {
                                    total += 1;
                                   }
                           }
                      }
                      else
                          {
                                    if (document.RemoveCategoryForm.removecat_chk.checked == true) 
                                        total=1;
                              
                          } 
                          
                    if(total==0)
                    {
                        $dialog.html("Sorry! Select atleast one Category for Remove");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                        
                        
                    }       
             
         }
         
          function count_opt(oSelect)
          {
              
              var count=0;
            //  alert("opt count---"+count+"+++++++++++"+oSelect);
              for(var i=0;i<oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                      //  if(count>maxNum){
                      //     alert("Can't select more than 3");
                      //     return false;
                      //  }
                 }
                 return count;
                // alert("opt count2---"+count);
                 
          }
          
        </script>
    </head>
    <body>
        <h2 style="text-align: center"><s:text name="heading.remCat"/></h2>
        <s:form name="RemoveCategoryForm" action="DS-removeCategory-removeCat"  theme="css_xhtml" id="RemoveCategoryForm" onsubmit="javascript:return check();">
                
 <table border="1" align="center" style="font-size:small">
                            <tr>
                                <td><s:text name="label.prodTopcat"/></td>
                                <td>
                                <select name="addcat_prodcat_select" onchange="populate_allsubcat()" id="addcat_prodcat_select">
                                   <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                               </select>   
                                
                                </td>
                            </tr>
                           <s:if test="%{removeitem_subcat_pop!=null}">  
                               <tr>
                                   <td><s:text name="label.prodSubcat"/></td><td>
                                       
                                   <select name="removeitem_items_select" onchange="display_end();" multiple="true" id="removeitem_items_select">
                                   <c:forEach items="${removeitem_subcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                                   </select>
                                   
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="text-align: right">  <input type="button" onclick="populate_cat()" value="<s:text name="button.getCats"/>"/></td>
                               </tr>    
                           </s:if>        
                        </table>
                               
                                <s:if test="%{remove_cat_detail!=null}">
                                  
                                <s:if test="%{remove_cat_detail.size()==0}">
                                <br/><br/>
                                     <font><s:property value="message.noSubcatsUnderCat"/> <i>
                                         <s:property value="removeitem_items_selectnames" escape="false"/></i></font>
                  </s:if>  
                 <s:else>    
                    
                      <h1> <s:text name="meessage.catUnder">
                             <i>  <s:param>${removeitem_items_selectnames}</s:param>       </i>
                         </s:text> </h1>
                      <table border="1" align="center">
                     <thead>
                      <tr>
                        <td></td>
                         <td><s:text name="th.catName"/></td>
                        <td><s:text name="th.remarks"/></td>
                      </tr>
                     </thead>
                     <tbody>

                     
                         <s:iterator value="remove_cat_detail">
                             <s:hidden id="itr" value="%{remove_cat_detail.size}"/>
                                    <tr>
                                       
                <td><s:checkbox name="removecat_chk" fieldValue="%{productSubcatNo}" value="false"/>
                 </td>
                 <td>
                     <s:property value="productSubcatName" escape="false"/>
                </td>
                <td>
                    <s:property value="itemType" escape="false"/>
                </td>
               </tr>
                                </s:iterator>  
                          
                           
            </tbody>
        </table>
               
                <center>
                  <table align="center">
                        <tr>
                           <td><input type="submit" value="<s:text name="button.remCat"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                            
                        </tr>
                    </table>
                </center>
   </s:else>
                               
                            </s:if>
                         
       </s:form>
    </body>
</html>