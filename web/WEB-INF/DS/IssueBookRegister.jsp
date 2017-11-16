<%-- 
    Document   : IssueBookRegister
    Created on : 12 Jul, 2011, 12:33:56 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript">
                     <jsp:include page="../../javascripts/ds_issue_book.jsp"></jsp:include>
          </script>
        <sx:head/>
            <script>
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
            function show_details(val) {
            dojo.event.topic.publish("show_childRHDetails");
            }
                     
            function populate_allsubcat(val)
            {
                       if($("#issbook_prod_topcat").val()=="select")
                        {
                            $dialog.html("Sorry! Please Select Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
              
                         dojo.event.topic.publish("pop_subcatDetails");
                    }

            }      
            function toggle() {
                  checkboxes = document.getElementsByName('select_childs_ids');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle() {
                  checkboxes = document.getElementsByName('select_childs_ids');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             } 
              function toggle1() {
                  checkboxes = document.getElementsByName('issue_item_chk');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle1() {
                  checkboxes = document.getElementsByName('issue_item_chk');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             } 
             

        </script>
           
         <script>
        function popItem()
        {
             var con=document.getElementById("removeitem_items_select");
                        // alert("opt count3---"+con);
                         if(count_opt(con)==0)
                        {
                           // alert("opt count4---");
                            $dialog.html("Sorry! Select at least one sub Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                            
            
            dojo.event.topic.publish("popItem");
                        }
        }
         function count_opt(oSelect)
          {
              
              var count=0;
              for(var i=0;i<oSelect.options.length;i++){
                  if(oSelect.options[i].selected)
                        count++;
                 }
                 return count;
          }   
          function populate(sselect)
          {
             //alert(sselect.value);
            if(sselect.value=='Others')
            {
             document.getElementById('tb1').innerHTML = 'Enter Name:<input type=text name=shname_other_issued id=shname_other_issued>'; 
             document.getElementById('tb2').innerHTML = 'Designation:<input type=text name=shdesig_other_issued id=shdesig_other_issued>'; 
             
            }
            else
            {
             document.getElementById('tb1').innerHTML = ''; 
             document.getElementById('tb2').innerHTML = ''; 
                    
            }
             
           }
        </script>
    </head>
    <body onload="document.getElementById('dialog-form_issue_reg').style.visibility='hidden'">
            <center>
            <CAPTION><font size="3"><b><s:text name="heading.itemIss"/></b></font></CAPTION>

            <s:form name="IssueForm" action="DS-issue-saveIssue" theme="css_xhtml" id="IssueForm" >
                <table border="1" align="center" style="font-size:small">
                    <tbody align="left">
                           <tr><td><s:text name="label.issDate"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="issue_date" readonly="true"/>
                               </td>
                           </tr>
                           <tr>
                                <td><s:text name="label.issTo"/>*</td>                               
                                <td>
                                 
                                    
                                     <input type="radio" name="issue_to_radio" id="issue_to_radio" checked="true" value="sh" onchange="javascript:show_details(this);return false;"/><s:text name="label.stkHolders" /><span style="padding-left: 20px"><input type="radio" name="issue_to_radio" id="issue_to_radio" value="in" onchange="javascript:show_details(this);return false;"/><s:text name="label.children"/></span>         
                                   
                              
                               
                                        <s:url id="d_url" action="DS-issue-popIssuedTo"/> 
                                        <sx:div id="details" href="%{d_url}" listenTopics="show_childRHDetails" formId="IssueForm" showLoadingText="true">
                 </sx:div> 
                                 
                                  
                            </td>
                            </tr>
                          
                          <tr>
                              <td><s:text name="label.remarks"/></td>
                              <td><s:textfield name="issue_remarks" id="issue_remarks" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                          </tr>
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
                            
                          </tbody>
                </table>
               
                               <s:url id="d_url1" action="DS-issue-popSubCatExRation"/>                  
                 <sx:div id="details12" href="%{d_url1}" listenTopics="pop_subcatDetails" formId="IssueForm" >
                 </sx:div> 
                                      
                 
                               <s:url id="d_url2" action="DS-issue-popSelectItem"/>                  
                 <sx:div id="details3" href="%{d_url2}" listenTopics="popItem" formId="IssueForm" >
                 </sx:div> 
                 
                            
       </s:form>   
            <div id="dialog-form_issue_reg" title="IssueDetails/Preview">
	<form name="issue_form_dialog">
            <table rules="rows">
                <tr>
                    <td><s:text name="label.issDate"/>:</td><td><span id="issue_date_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.issTo"/>:</td><td><span id="issue_to_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.remarks"/>:</td><td><span id="issue_remarks_span"></span></td>
                </tr>
            </table>
            
         
            
            <table border="1" id="issue_reg_span">
            <thead>
             <tr>
                 <td><b><s:text name="label.part"/></b></td>
                <td><b><s:text name="th.quantity"/></b></td>
                <td><b><s:text name="label.remarks"/></b></td>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
           
            
        
            
        </form>
     </div>
           
            </center>
</body>
</html>