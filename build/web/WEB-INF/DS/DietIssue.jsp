<%-- 
    Document   : DietChart
    Created on : 15 Jul, 2011, 1:51:09 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script lang="text/javascript">
            <jsp:include page="../../javascripts/ds_dietIssue.jsp"></jsp:include>
        </script>
        <script type="text/javascript">
            function toggle() {
                  checkboxes = document.getElementsByName('diet_itemNo');
                  for(var i in checkboxes)
                        checkboxes[i].checked = true;
             }
             function untoggle() {
                  checkboxes = document.getElementsByName('diet_itemNo');
                  for(var i in checkboxes)
                        checkboxes[i].checked = false;
             } 
        </script>
    </head>
    <body onload="document.getElementById('dialog-form_dietissue_reg').style.visibility='hidden'">
        

         <s:form name="DietIssueForm" action="DS-dietIssue-saveDietIssue"  theme="css_xhtml" id="DietIssueForm" >
                <table border="1" align="center" style="font-size:small">
                      <caption><font size="3"><b><center><s:text name="heading.dietIss"/></center></b></font></caption>
                      <tr>
                          <td><s:text name="label.dietIssDate"/>*</td>
                          <td><s:textfield id="datepicker" name="dietIssue_date" readonly="true" /></td>
                      </tr>
                      <tr>
                          <td><s:text name="label.noOfSrChilds"/>*</td>
                          <td><s:textfield id="dietReg_srChilds" name="dietReg_srChilds"/></td>
                      </tr>
                      <tr>
                          <td><s:text name="label.noOfJrChilds"/>*</td>
                          <td><s:textfield id="dietReg_jrChilds" name="dietReg_jrChilds"/></td>
                      </tr>  
                </table>
                          <s:if test="dietChart_items.size()==0">
                              <br/><br/>
                          <center> <font style="font-size: medium;"><s:text name="message.BOMunavail"/>.</font></center>
                              
                          </s:if>
                          <s:else>
                  <table border="1"  align="center" id="DietItems" style="text-align: left;font-size: small">
                <thead>
                    <tr style="text-align: center">
                          <td></td>
                         <td><s:text name="label.itemName"/></td>
                          <td><s:text name="label.dietInGram"/><img src="./images/gif_mod.gif"/></td>
                          <td><s:text name="th.quanOnHand"/></td>
                          <%--td>Actual(Total not per child) <br/>Quantity Issued<div style="text-decoration: blink;">(In KGS)</div></td--%>
                          <td>Enter Total In KGs/Litres<br/>(Not for Scale)</td>
                      </tr>
                </thead>
               
               <tbody> 
                       <s:hidden name="dietItem_size" value="%{dietChart_items.size()}"/>
                       <s:iterator  status="stat" value="dietChart_items" begin="0" end="dietChart_items.size()-1" step="1">
                          <s:hidden id="itr" value="%{dietChart_items.size}"/>
                           
                          <tr>
                              <td><s:checkbox fieldValue="%{itemNo}-%{#stat.count}" value="false"  name="diet_itemNo" theme="simple"/></td>
                                  
                              <td><s:property value="itemName" />
                                  <s:hidden name="dietissue_iname" value="%{itemName}" />  
                              </td>
                              <td>
                              <s:if test="%{itemName=='rice'||itemName=='Rice'}">
                                  <s:property value="scale" />(<s:text name="label.jrChilds"/>)&<br/><s:property value="scale+100" />(<s:text name="label.srChilds"/>)
                              </s:if>
                              <s:else>
                                  <s:property value="scale" />    
                              </s:else>
                                      </td>
                                      <td>
                                          <s:property value="home_qoh"/>&nbsp;<s:property value="uom"/>
                                      </td>       
                               <td>
                                   <s:textfield name="act_issued" id="act_issued" />
                                  
                              </td>
                              
                          </tr>
                          
                      </s:iterator>
               </tbody>
                       
                </table>
                       <center> 
                           <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
        <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>
       
        
            <table>
                <tr>
                    <td>
                        <input type="submit" value="<s:text name="button.submit"/>" />
                    </td>
                    <td><input type="reset"  value="<s:text name="button.clear"/>"/></td>
                </tr>
            </table>  
                       </center>
                          </s:else>
         </s:form>
        
                          <div id="dialog-form_dietissue_reg" title="<s:text name="js.preView.dietIss"/>">
	<form name="dietissue_form_dialog">
            <center>
            <table>
                <tr>
                  <td><s:text name="label.dietIssDate"/>:</td><td><span id="dietissue_date_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.noOfSrChilds"/>:</td><td><span id="dietissue_srchild_span"></span></td>
                </tr>
                <tr>
                    <td><s:text name="label.noOfJrChilds"/>:</td><td><span id="dietissue_jrchild_span"></span></td>
                </tr>
            </table>
            </center>
         
            <center>
            <table border="1" id="dietissue_reg_span">
            <thead>
             <tr>
                <th><s:text name="js.msg.itemIssued"/></th>
                <%--th><s:text name="js.msg.entActQuan"/></th--%>
             </tr>
            </thead>
            <tbody>
                
            </tbody>
            </table>
            </center>
        </form>
     </div>
    </body>
</html>
