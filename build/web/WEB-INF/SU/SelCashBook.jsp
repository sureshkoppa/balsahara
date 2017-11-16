<%-- 
    Document   : SelCashBook
    Created on : 8 Aug, 2013, 12:21:02 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
             $(document).ready(function(){
                 $('#ViewCashForm').on('submit',function(e){
            
                  $.ajax({
                       url:'SU-viewChBk',
                       type:'POST',
                       data:$('#ViewCashForm').serialize(),
                       dataType:'json',
                        success:
                  function(data){
                     var rowCount1=0;
                     $("#ch_body").html("");
                     if(data.length!=0)
                         {
                             document.getElementById("monOpen_bal").innerHTML=data.monOpen_Bal;
                             try
                             {
                                 
                                      for(var i=0;i<data.chlist.length;i++)
                                      {
                                          var row = ch_body.insertRow(rowCount1);
                                          var dateT=""+data.chlist[i].chDate;
                                          row.insertCell(0).innerHTML=dateT.substring(0,10);
                                          row.insertCell(1).innerHTML=data.chlist[i].amount;
                                          row.insertCell(2).innerHTML=data.chlist[i].particulars;
                                          row.insertCell(3).innerHTML=data.chlist[i].recpay;
                                          if(data.chlist[i].recpay=="r")
                                              {
                                                  row.insertCell(4).innerHTML=data.chlist[i].rorpayno;
                                                  row.insertCell(5).innerHTML=data.chlist[i].recorpaid;
                                                  row.insertCell(6).innerHTML='&nbsp;';
                                                  row.insertCell(7).innerHTML='&nbsp;';    
                                              }
                                          else
                                              {
                                                   row.insertCell(4).innerHTML='&nbsp;';
                                                   row.insertCell(5).innerHTML='&nbsp;';    
                                                   row.insertCell(6).innerHTML=data.chlist[i].rorpayno;
                                                   row.insertCell(7).innerHTML=data.chlist[i].recorpaid;   
                                              }


                                           row.insertCell(8).innerHTML='&nbsp;';

                                           rowCount1=rowCount1+1;
                                      }
                             }
                             catch(err)
                             {
                                 alert(err);
                             }
                              document.getElementById("monEnd_bal").innerHTML=data.monEnd_Bal;
                         }
                     else
                        {
                                 
                        }
                         var html=$("#cash_details").html();
                      var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
                      win.document.write(html);
                     
                  }
          }); 
    
    e.preventDefault();
        });

});
           
        </script>    
    </head>
    <body>
       <center><h1>View Cash Book</h1></center>
       
       <s:form id="ViewCashForm" name="ViewCashForm">
              <table align="center">
              <tr><td>
                        <s:text name="label.selMonth"/>:</td>
                    <td> 
                        <select name="ch_month"  id="ch_month">
                              <option value="select">---<s:text name="label.select"/>---</option>
                              <option value="1"><s:text name="month.jan"/></option>
                              <option value="2"><s:text name="month.feb"/></option>
                              <option value="3"><s:text name="month.mar"/></option>
                              <option value="4"><s:text name="month.apr"/></option>
                              <option value="5"><s:text name="month.may"/></option>
                              <option value="6"><s:text name="month.jun"/></option>
                              <option value="7"><s:text name="month.jul"/></option>
                              <option value="8"><s:text name="month.aug"/></option>
                              <option value="9"><s:text name="month.sept"/></option>
                              <option value="10"><s:text name="month.oct"/></option>
                              <option value="11"><s:text name="month.nov"/></option>
                              <option value="12"><s:text name="month.dec"/></option>
                            
                            
                        </select>
                        
                      
                    </td></tr>
                <tr><td><s:text name="label.selYear"/> : </td><td> <s:select name="ch_year" id="ch_year"  list="{'2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048'
                      ,'2049','2050','2051','2052','2053','2054','2055','2056','2057','2058','2059','2060'}" headerKey="select" headerValue="--select year--" theme="simple"/><br/></td></tr>
          
            </table>
               <center>
                    <table align="center">
                        <tr>
                            <td><input type="submit" value="Show Report" /></td>
                            <td><input type="reset" value="clear"  /></td>
                        </tr>
                    </table>
               </center>
        </s:form>   
       
         <div id="cash_details" style="display: none;max-width: 900px;">
        
            <h2 style="text-align: center">Cash Book</h2>
            <div style="text-align: justify">Month Opening Balance:<span id="monOpen_bal" style="color: blue;"></span></div><br/>
                   <table style="border: 2;outline-color: #006666;color: black;text-align: center" border="1">
                       <thead style="color: blue;">
                           <tr><th>Date</th><th>Amount</th><th>Particulars</th><th>Trans<br/>Type</th><th>Receipt<br/>Ref No</th>
                               <th>Receipt From</th><th>Cheque/<br/>Payment No</th><th>Paid To</th><th>Bank</th></tr>    
                       </thead>
                       <tbody id="ch_body">
                           
                       </tbody>    
                  </table>
            <br/>
            <div style="text-align: left">Month Closing Balance:<span id="monEnd_bal" style="color: blue;"></span></div>
      
        </div>
       
    </body>
</html>
