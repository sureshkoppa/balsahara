<%-- 
    Document   : SelGenLedge
    Created on : 9 Jul, 2013, 6:09:28 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script >
            
            $(document).ready(function(){
            
            $('#GenLedgeForm').on('submit',function(e){
           // alert("Data submitted------------>");  
              $.ajax({
              url:'SU-genLedge',
              type:'POST',
              data:$('#GenLedgeForm').serialize(),
              dataType:'json',
              success:
                  function(data){
                     var rowCount1=0;
                     
                     $("#gl_body").html("");
                     if(data.length!=0)
                         {
                             for(var i=0;i<data.length;i++)
                             {
                                  var row = gl_body.insertRow(rowCount1);

                                  row.insertCell(0).innerHTML=data[i].month;
                                  row.insertCell(1).innerHTML=data[i].date;
                                  row.insertCell(2).innerHTML=data[i].account+'&nbsp;';
                                  row.insertCell(3).innerHTML=data[i].accDesc+'&nbsp;';
                                  row.insertCell(4).innerHTML=data[i].debit;
                                  row.insertCell(5).innerHTML=data[i].credit;
                                  row.insertCell(6).innerHTML=data[i].jorHead+'&nbsp;';
                                  row.insertCell(7).innerHTML=data[i].cumDbt+'&nbsp;';
                                  row.insertCell(8).innerHTML=data[i].cumCrt+'&nbsp;';

                                   rowCount1=rowCount1+1;
                             }
                         }
                     else
                        {
                            //var row = gl_body.insertRow(rowCount1);
                            
                           document.getElementById("gl_body").innerHTML="<tr><td colspan=9 style='text-align:center'>No records found.</td></tr>";
                        }
                     
                      var html=$("#child_details").html();
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
        <center><h1>General Ledger</h1></center>
        <s:form id="GenLedgeForm" name="GenLedgeForm">
        
            <table align="center">
              <tr><td>
                        <s:text name="label.selMonth"/>:</td>
                    <td> 
                        <select name="gl_month"  id="gl_month">
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
                <tr><td><s:text name="label.selYear"/> : </td><td> <s:select name="gl_year" id="gl_year"  list="{'2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048'
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
        
        <div id="child_details" style="display: none">
            
            <h2 style="text-align: center">General Ledger</h2>
                   <table style="border: 1;outline-color: #006666;color: black;text-align: center;border-color: black" border="1">
                       <thead style="color: blue;">
                           <tr><th>Month</th><th>Date</th><th>Account</th><th>Account<br/>Description</th>
                               <th>Credit</th><th>Debit</th><th>Journal Head</th><th>Cum<br/> Credit</th><th>Cum<br/> Debit</th></tr>    
                       </thead>
                       <tbody id="gl_body">
                           
                       </tbody>    
                  </table>
        </div>
        
    </body>
</html>
