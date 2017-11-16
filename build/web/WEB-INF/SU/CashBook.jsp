<%-- 
    Document   : CashBook
    Created on : 8 Jul, 2013, 12:06:20 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
             function sel_div()
             {
                   var check;
                   var sel=document.getElementsByName("csh_trans");   
                   for (var i = 0; i < sel.length; i++) {       
                        if (sel[i].checked) {
                            check=sel[i].value;
                            break;
                        }
                    }
                 if(check=='r')
                     {
                         document.getElementById("csh_rpt_div").style.display='none';
                         document.getElementById("csh_pmt_div").style.display='block';
                         
                          $("#csh_rpt_div").slideDown("fast");     //Slide Down Effect
                          $("#csh_pmt_div").slideUp("fast");	//Slide Up Effect
                     }
                 else if(check=='p')
                     {
                         document.getElementById("csh_pmt_div").style.display='none';
                         document.getElementById("csh_rpt_div").style.display='block';
                         
                          $("#csh_pmt_div").slideDown("fast");     //Slide Down Effect
                          $("#csh_rpt_div").slideUp("fast");	//Slide Up Effect
                     }
            
             }
             
             function check_cash()
             {
                 
                 var sel=document.getElementsByName("csh_trans");  
                 dojo.event.topic.publish("popCash");
             }
              $(document).ready(function(){
                  $('#chk_cash').on('click',function(e){
                  $.ajax({
                      url:'SU-popCash',
                      type:'POST',
                      dataType:'json',
                      success:
                          function(data)
                          {
                              document.getElementById('ch_shwcsh').innerHTML="&#8377;"+" "+"<font style='font-size:7;font-weight:bold;'>"+data+"</font>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                          }
                          
                  });
                  e.preventDefault();
              
                  });
              });
        </script>    
    </head>
    <body>
    <center><h1>Cash Book Register</h1></center>
    <div style="text-align: right;font-size: 5"><s:a id="chk_cash">Click to see available CASH</s:a></div><span style="padding-right:20px"></span>
    <div id="ch_shwcsh" style="text-align: right;"></div>           
    <s:form action="SU-saveCashTr" name="CashBkFr" id="CashBkFr">
        <center>
        <table>
            <tr>
                <td>Date    :</td><td><input type="text" name="csh_date" id="datepicker"/></td>
            </tr>
            <tr>
                <td>Amount  :</td><td><input type="text" name="csh_amt" id="csh_amt"/></td> 
            </tr>
            <tr>
                <td>Particulars:</td><td><textarea cols="30" rows="5" name="csh_part" id="csh_part"></textarea></td>
            </tr>
            <tr>
                <td colspan="2"><input type="radio" name="csh_trans" id="csh_trans" value="r" onclick="sel_div()"/>Cash Receipt<span style="padding-left:20px"></span><input type="radio" name="csh_trans" id="csh_trans" value="p" onclick="sel_div()"/>Cash Paid</td>
            </tr>
        </table>    
        </center>
        <div id="csh_rpt_div" style="display:none;">
            <table>
                <tr><td>Receipt No:</td><td><input type="text" name="csh_rptNo" id="csh_rptNo"/></td></tr>   
                <tr><td>Receipt From:</td><td><textarea name="csh_rptFrom" id="csh_rptFrom" cols="30" rows="5"></textarea></td></tr>   
            </table>     
        </div> 
        <div id="csh_pmt_div" style="display:none;">
             <table>
                 <tr><td>Cheque/<br/>Payment No:</td><td><input type="text" name="csh_pmtNo" id="csh_pmtNo"/></td></tr>  
                 <tr><td>Paid To:</td><td><textarea name="csh_paidTo" id="csh_paidTo" cols="30" rows="5"></textarea></td></tr>
             </table>    
        </div>
       
             
                 <center>
                    <table align="center">
                        <tr>
                            <td><input type="submit" value="save" /></td>
                            <td><input type="reset" value="clear"  /></td>
                        </tr>
                    </table>
                </center>
         
        
        <%--
                                 <s:url id="d_url33" action="SU-popCash"/>  
                                 <s:div id="det123" formId="CashBkFr" />
                                 <sx:bind id="details33" targets="det123"  formId="CashBkFr" href="%{d_url33}" listenTopics="popCash"  afterNotifyTopics="start">
                                           </sx:bind>
        --%>
        
    </s:form>    
    </body>
</html>
