<%-- 
    Document   : SelectRecIssReport
    Created on : 6 Mar, 2014, 12:00:06 PM
    Author     : suresh
--%>

<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core" %>

<%@page  import="java.util.List" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 200,
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
                
             $(document).ready(function(){
        $('#MonRecReport').on('submit',function(e){
           // alert("Data submitted------------>");
           // progressCircleShow2();
           if($("#trRepMon").val()=='select')
        {
            $dialog.html("Please Select Month");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#trRepYear").val()=='select')
        {
            $dialog.html("Please Select Year");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
           
           document.getElementById("subbut").disabled = true;
           document.getElementById("subbut").value="Submit...";
   
             $.ajax({
      url:'DS-reportTrans',
      type:'POST', 
      data:$('#MonRecReport').serialize(),
      dataType:'json',
      success:
          function(data){
            //alert("--->"+data);
           // document.getElementById("mon_rec_tbody").innerHTML=data.length;
           $("#mon_rec_tbody").empty();
           $("#mon_iss_tbody").empty();
           $("#no_rec_iss").empty();
           
           if(data=="")
               {
              document.getElementById("subbut").disabled = false;
              document.getElementById("subbut").value="Submit";
              document.getElementById("no_rec_iss").innerHTML="<center><b>No Transaction in Selected Month</b></center>"
               }
               
               else{
            var   rowCount2 = 0;    
           
           if(data[0].operType=="ISSUE") 
               {
              
               for(i=0;i<data.length;i++)
               {
            var row = mon_iss_tbody.insertRow(rowCount2);        
           row.insertCell(0).innerHTML=data[i].transDate;
           row.insertCell(1).innerHTML=data[i].transFrom;
           row.insertCell(2).innerHTML=data[i].operType;
           row.insertCell(3).innerHTML=data[i].itemName;
           row.insertCell(4).innerHTML=data[i].quanRecv;
           row.insertCell(5).innerHTML=data[i].openBal;
           row.insertCell(6).innerHTML=data[i].closeBal;
           row.insertCell(7).innerHTML=data[i].remarks;
           row.insertCell(8).innerHTML=data[i].itemRemarks;
                rowCount2=rowCount2+1; 
               }
               
               var html=$("#mon_iss_iss").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           //var win = window.open('', '_blank');
           win.document.write(html);
              document.getElementById("subbut").disabled = false;
               document.getElementById("subbut").value="Submit";
               }
               else
                   {
           for(i=0;i<data.length;i++)
               {
            var row = mon_rec_tbody.insertRow(rowCount2);        
           row.insertCell(0).innerHTML=data[i].transDate;
           row.insertCell(1).innerHTML=data[i].transFrom;
           row.insertCell(2).innerHTML=data[i].invNum;
           row.insertCell(3).innerHTML=data[i].invDate;
           row.insertCell(4).innerHTML=data[i].operType;
           row.insertCell(5).innerHTML=data[i].itemName;
           row.insertCell(6).innerHTML=data[i].quanRecv;
           row.insertCell(7).innerHTML=data[i].openBal;
           row.insertCell(8).innerHTML=data[i].closeBal;
           row.insertCell(9).innerHTML=data[i].remarks;
           row.insertCell(10).innerHTML=data[i].itemRemarks;
                rowCount2=rowCount2+1; 
               }
                var html=$("#mon_rec_iss").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           //var win = window.open('', '_blank');
           win.document.write(html);
              document.getElementById("subbut").disabled = false;
              document.getElementById("subbut").value="Submit";
                   }
          }
          
          }
    }); 
    
    e.preventDefault();
        });

});
            
        </script>
    </head>
    <body>
          <s:form action="DS-reportTrans" name="MonRecReport" id="MonRecReport">
        <center><h2>Monthly Procurements & Issues</h2></center>
           <center>
               <table align="center">
                <tr><td>
                        <s:text name="label.selMonth"/>:</td>
                    <td> 
                        <select name="trRepMon"  id="trRepMon">
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
                <tr><td><s:text name="label.selYear"/> : </td><td> <s:select name="trRepYear" id="trRepYear"  list="{'2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048'
                      ,'2049','2050','2051','2052','2053','2054','2055','2056','2057','2058','2059','2060'}" headerKey="select" headerValue="----" theme="simple"/><br/></td></tr>
                
                <!--tr><td>Select Fortnight</td>
                    <td>
                    <select name="fn_type" id="fn_type">
                              <option value="fn">--First 15 days--</option> 
                              <option value="1">--Last 15 days--</option> 
                    </select>
                    </td>
                </tr-->
          
                <tr><td>Select Transaction :</td>
                    <td><select name="trType" id="trType">
                              <option value="p">Purchases</option>
                              <option value="r">Receipts</option> 
                              <!--option value="q">Receipts & Purchases</option--> 
                              <option value="i">Issues</option> 
                        </select>
                    </td>
                </tr>
          
            </table>
            </center>
         <center>
                  <table align="center">
                        <tr>
                           <td><input type="submit" value="<s:text name="button.submit"/>" id="subbut"/></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                    </table>
                </center>
        </s:form>  
        <div id="no_rec_iss"></div>
        <div id="mon_rec_iss" style="display: none;">
            <table border="1">
                <thead>
                    <tr><th>Date</th><th>Purchased/Received From</th>
                        <th>Inv No</th><th>Inv Date</th>
                        <th>Type</th><th>Item</th> 
                        <th>Quantity</th><th>Open Bal</th>
                        <th>Close Bal</th><th>Receipt Remarks</th>
                        <th>Item Remarks</th>
                    </tr>    
                </thead>
                <tbody id="mon_rec_tbody">
                    
                    
                </tbody>    
            </table>
        </div>
        <div id="mon_iss_iss" style="display: none;">
            <table border="1">
                <thead>
                    <tr><th>Date</th><th>Issued To</th>
                        <th>Type</th><th>Item</th> 
                        <th>Quantity</th><th>Open Bal</th>
                        <th>Close Bal</th><th>Issue Remarks</th>
                        <th>Item Remarks</th>
                    </tr>    
                </thead>
                <tbody id="mon_iss_tbody">
                    
                    
                </tbody>    
            </table>
        </div>
        
       
    </body>
</html>
