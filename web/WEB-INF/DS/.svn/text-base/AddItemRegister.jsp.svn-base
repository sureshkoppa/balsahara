<%--
    Document   : AddItemRegister
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
        <sx:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Item</title>
         <script lang="text/javascript">
            <jsp:include page="../../javascripts/ds_addItem.jsp"></jsp:include>
        </script>
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
                     if($("#addcat_prodcat_select_top").val()=="select")
                        {
                            $dialog.html("Sorry! Select Category Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                    
                // document.getElementById('AddItemForm').action="DS-addItem-popAllSubCat";
                 //document.getElementById('AddItemForm').submit();
                 dojo.event.topic.publish("popSubcat");
                        }

            }   
         
         function display_end()
         {
                 document.getElementById('addcat_details').style.visibility="visible";
                 var obj1=document.getElementById("addcat_prodcat_select_top");
                 var val=obj1.options[obj1.selectedIndex].text;
                 //alert(sel+":::::"+val);
                 //if(document.getElementById("addcat_prodcat_select_top").options[this.selectedIndex].value=="3")
          /*       if(val=='medical'||val=='Medical')
                     {
            */             
                       //alert(document.getElementById("addcat_prodcat_select_top").listValue.toString()+"--list value--");
                     document.getElementById('addcat_medical').style.visibility="visible";
              /*       }    */
                 document.getElementById('addcat_buttons').style.visibility="visible";
         }   
         function initial_page()
         {
              document.getElementById('AddItemForm').action="DS-addItem-populate";
              document.getElementById('AddItemForm').submit();
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
                         if(document.getElementById("addcat_prodcat_select_sub").headervalue=="--select sub category--")
                         {
                             alert("Please select product sub category");
                             return false;
                         }
                     }
                    else {

                        alert("no select");
                    }

         }

        </script>
       
    </head>
    <body>
        <s:form name="AddItemForm" action="DS-addItem-addItem1"  theme="css_xhtml" id="AddItemForm" >
                <table border="1" align="center" style="font-size:small;width: 30em">
                      <caption><font size="3"><b><center><s:text name="heading.addItem"/>                               
                              </center></b></font><br/>(Add Items which are not in the Software)</caption>

                        <tbody align="left" id="table1">

                            <tr>
                           <td><s:text name="label.prodTopcat"/>*</td>
                           <td width="180" align="left">
                              
                                    <select name="addcat_prodcat_select" id="addcat_prodcat_select" onchange="populate_allsubcat()">
                                   <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                               </select>
                                 
                      
                        </td>
                            </tr>
                        </tbody>
                </table>
                                   <s:url id="d_url33" action="DS-addItem-popAllSubCat"/>  
                                 <s:div id="det123" formId="AddItemForm" />
                                 <sx:bind id="details33" targets="det123"  formId="AddItemForm" href="%{d_url33}" listenTopics="popSubcat"  afterNotifyTopics="start">
                                           </sx:bind>
             
                     <div id="addcat_details"  style="visibility: hidden">
                         
                 <table border="1" align="center" style="font-size:small">
                     
                     <tbody>
                    <tr>
                                <td><s:text name="label.itemName"/>*</td>
                                <td><s:textfield  name="additem_newitem_itemName" id="additem_newitem_itemName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                            </tr>
                           


                            <%--  <tr>
                                <td>Quantity on hand*</td>
                                <td><s:textfield name="additem_newitem_itemQoh" id="additem_newitem_itemQoh"/></td>
                                </tr>  --%>
                             <tr>
                                <td><s:text name="label.uom"/>*</td>
                                <td>
                                    <%--
                                    <s:select name="additem_newitem_itemUom" id="additem_newitem_itemUom" list="{'nums','mg','grams','kgs','ml','litres','meters','others'}" headerKey="select" headerValue="-select-"/>
                                    --%> 
                                
                                    <select name="additem_newitem_itemUom" id="additem_newitem_itemUom" >
                                   <option value="select">---<s:text name="label.select"/>---</option>
                                   <option value="<s:text name="option.nums"/>"><s:text name="option.nums"/></option>
                                   <option value="<s:text name="option.millGram"/>"><s:text name="option.millGram"/></option>
                                   <option value="<s:text name="option.grams"/>"><s:text name="option.grams"/></option>
                                   <option value="<s:text name="option.kgs"/>"><s:text name="option.kgs"/></option>
                                   <option value="<s:text name="option.ml"/>"><s:text name="option.ml"/></option>
                                   <option value="<s:text name="option.litres"/>"><s:text name="option.litres"/></option>
                                   <option value="<s:text name="option.meters"/>"><s:text name="option.meters"/></option>
                                   <option value="<s:text name="option.other"/>"><s:text name="option.other"/></option>
                                    </select>
                                </td>
                            </tr>
                             <tr>
                                <td><s:text name="label.specOrSize"/></td>
                                <td><s:textfield name="additem_newitem_itemSpec" id="additem_newitem_itemSpec" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                            </tr>
                                      <tr>
                                <td><s:text name="label.appPrice"/>*</td>
                                <td><s:textfield name="additem_newitem_itemPrice" id="additem_newitem_itemPrice" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;' value="0"/></td>


                            </tr>
                             <tr>
                                <td><s:text name="label.remarks"/></td>
                                <td><s:textfield name="additem_newitem_itemRemarks" id="additem_newitem_itemRemarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                            </tr>
               
                     </tbody>
                 </table>
                          
                            
                             <div id="addcat_medical" >
                                   <table border="1" align="center" style="font-size:small; ">
                            
                               
                            <tr>
                                <td><s:text name="label.mfgDate"/></td>
                                <td><s:textfield name="additem_newitem_mfgDate" id="datepicker"  /></td>
                            </tr>
                            <tr>
                                <td><s:text name="label.expDate"/></td>
                                <td><s:textfield name="additem_newitem_expDate" id="datepicker1"  /> </td>
                          </tr>
                                
                                   </table>
                          <center> (Manufacturing Date,Expiry Date Required only for Medical Items)</center>
                             </div>
                            <div id="addcat_buttons"  >
                <center>
                  <table align="center">
                        <tr>
                             <td><input type="submit" value="<s:text name="button.addItem"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>" /></td>
                        </tr>
                    </table>
                </center>
                         </div>
                        
                          </div>
        </s:form>
           <div id="dialog-form_add_item" title="<s:text name="js.preview.addItem"/>">
                <table border="1" id="additem_preview">
                </table>
        </div>
        
        
    </body>
</html>
