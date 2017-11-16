<%-- 
    Document   : TailorIssueRegister
    Created on : 18 Jul, 2011, 6:03:13 PM
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
         <script type="text/javascript">
               <jsp:include page="../../javascripts/ds_tailorIssue.jsp"></jsp:include> 
        </script>      
              <sx:head/>
          <script  type="text/javascript">  
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
           function populate_allsubcat()
            {
                   /*validating the fields present in the form*/
                     if($("#tailissue_prod_topcat").val()=="select")
                        {
                            $dialog.html("Sorry! Select Category Top Category");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open'); 
                            return false;
                        }
                        else{
               dojo.event.topic.publish("pop_subcatDetails")
                        }

            }
            
            function popItem()
            {
             var con=document.getElementById("removeitem_items_select");
                        // alert("opt count3---"+con);
                         if(count_opt(con)==0)
                        {
                           // alert("opt count4---");
                            $dialog.html("Sorry! Select clothes Category");
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
         function toggle() {
                  checkboxes = document.getElementsByName('tail_item_checked');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle() {
                  checkboxes = document.getElementsByName('tail_item_checked');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             } 
                    
        
        </script>
    </head>
    <body onload="document.getElementById('dialog-form_tailor_issue_reg').style.visibility='hidden'">
          <s:form name="TailorIssueForm" action="DS-tailorIssue-saveTailoringIssue" theme="css_xhtml" id="TailorIssueForm">
               <table border="1" align="center" style="font-size:small">
                   <caption><font size="3"><b><center><s:text name="heading.tailIssue"/></center></b></font></caption>
                        <tbody align="left" id="table1">
                            <tr><td><s:text name="label.issDate"/>*</td>
                               <td class="demo">
                                   <s:textfield id="datepicker" name="tailor_issue_date" readonly="true"/>
                               </td>
                           </tr>
                           <tr><td><s:text name="label.letterNo"/>*</td>
                               <td class="demo">
                                   <s:textfield  name="tailor_issue_letterno" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                           <%--
                           <tr><td>Letter Date</td>
                               <td class="demo">
                                   <s:textfield  name="tailor_issue_letterdate" id="datepicker1"/>
                               </td>
                           </tr>
                           --%>
                           <tr><td><s:text name="label.tailAddr"/>*</td>
                               <td class="demo">
                                   <s:textarea name="tailor_issue_address" id="tailor_issue_address" rows="1" cols="16" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                               </td>
                           </tr>
                    <tr>
                                  <td><s:text name="label.prodTopcat"/>*</td>   
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
                                      <s:url id="d_url22" action="DS-tailorIssue-popAllSubCat"/>       
                               <s:div id="details222" formId="TailorIssueForm"/>
                                      <sx:bind targets="details222" href="%{d_url22}" listenTopics="pop_subcatDetails" formId="TailorIssueForm"/>
                              
                              <s:url id="d_url33" action="DS-tailorIssue-popSelectItem"/>  
                                            <s:div id="details333" formId="TailorIssueForm"/>
                                            <sx:bind targets="details333" href="%{d_url33}" listenTopics="popItem" formId="TailorIssueForm" afterNotifyTopics="start"/>
                                         
          </s:form>
    
    
      <div id="dialog-form_tailor_issue_reg" title="<s:text name="js.err.tailIssuePrev"/>">
	<form name="tailorissue_form_dialog">
            <table rules="rows">
                <tr>
                    <td><s:text name="label.issDate"/>:</td><td><span id="tailor_issue_date_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.letterNo"/>:</td><td><span id="tailor_letterno_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.tailAddr"/>:</td><td><span id="tailor_address_span"></span></td>
                </tr>
            </table>
            
         
            
            <table border="1" id="tailorissue_reg_span">
            <thead>
             <tr>
                <td><b><s:text name="th.itemName"/></b></td>
                <td><b><s:text name="th.quanIssud"/></b></td>
                <td><b><s:text name="th.remarks"/></b></td>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
           
            
        
            
        </form>
     </div>
    </body>
    
</html>
