<%-- 
    Document   : EnterBOMChart
    Created on : 16 Jul, 2011, 3:10:08 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
          <sx:head/>
         
            <script language="javascript">
                 var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
               
               
               var $dialog = $('<div></div>')
		    .html('This dialog will show every time!')
		    .dialog({
			autoOpen: false,
                        height: 130,
			width: 250,
                        modal: true,
                        title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
	     	});
           
            function populate_allsubcat1()
            {  
                  if($("#addcat_prodcat_select").val()=="select")
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
                            
                       // alert("opt count------5---");
          
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
        
        
   
      
        </script>     
   
         <%--  <script src="../../javascripts/ds_bomDetails.jsp"/>  --%>
         
          <script type="text/javascript">
            //alert("8888888888888888888");
                    <jsp:include page="../../javascripts/ds_bomDetails.jsp"></jsp:include> 
        </script>
         
    </head>
    <body onload="document.getElementById('dialog-form_enter_bom').style.visibility='hidden'">
        <s:form action="DS-dietChart-saveBOM" theme="css_xhtml" name="BOMForm" id="BOMForm">
            
            <table border="1" align="center" style="font-size:small;width: 30em">  
                <caption><font size="3"><b><center><s:text name="heading.bomReg"/></center></b></font></caption>
                      <tr>
                                 <td><s:text name="label.prodTopcat"/></td>   
                                  <td>                                   
                                       <s:if test="%{addcat_prodcat_select ==null}">
                                    <select name="addcat_prodcat_select" onchange="javascript:populate_allsubcat1()">
                                        <option value="select">---<s:text name="option.selTopCat"/>---</option>
                                   <c:forEach items="${addcat_prodcat_pop}" var="obj" varStatus="count">
                                       <option value=${obj.key}>${obj.value}</option>
                                   </c:forEach>
                               </select>
                                </s:if>
                                <s:else>
                                    <s:property value="addcat_prodcat_select" escape="false"/>
                                </s:else>
                                      
                              </td>
                              </tr>
            </table>
                                    <s:url id="d_url22" action="DS-dietChart-popAllSubCat"/>                  
                 <sx:div id="detailsenterbom1" href="%{d_url22}" listenTopics="pop_subcatDetails" formId="BOMForm">
                 </sx:div> 
    
    
           <s:url id="d_url23" action="DS-dietChart-popRationForBom"/>                  
                 <sx:div id="detailsenterbom2" href="%{d_url23}" listenTopics="popItem" formId="BOMForm">
                 </sx:div> 
            
        </s:form>
    
         <div id="dialog-form_enter_bom" title="BOMDetails/Preview">
	<form name="bom_form_dialog">
            
            
         
            
            <table border="1" id="bom_reg_span">
            <thead>
             <tr>
               
                 <td><b><s:text name="label.itemName" /></b></td>
                 <td><b><s:text name="label.quanInGram"/></b></td>
             </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
           
            
        
            
        </form>
     </div>
    </body>
</html>
