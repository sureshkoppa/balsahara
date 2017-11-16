<%-- 
    Document   : ShowReport
    Created on : 9 Feb, 2012, 4:14:31 PM
    Author     : vinumol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            $(document).ready(function(){    
            
            $('#childStatusForm').submit(function(e){
            //alert('clicked');
            
            /*ajax code START*/
            $.ajax({
      url:'SU_ChildStatusReport',
      type:'POST',
      data:$('#childStatusForm').serialize(),
      dataType:'json',
      success:
          function(data){
          //alert('data = '+data);
          document.getElementById('homename_span').innerHTML=data[0].homename;
          document.getElementById('fromdate_span').innerHTML=data[0].fromDate;
          document.getElementById('todate_span').innerHTML=data[0].toDate;
          document.getElementById('numOfOpenAdm_span').innerHTML=data[0].numOfOpenAdm;
          document.getElementById('numOfNewAdm_span').innerHTML=data[0].numOfNewAdm;
          document.getElementById('numOfReturnSL_span').innerHTML=data[0].numOfReturnSL;
          document.getElementById('numOfReturnResident_span').innerHTML=data[0].numOfReturnResdent;
          document.getElementById('numOfMissFnd_span').innerHTML=data[0].numOfMissFnd;
          document.getElementById('numOfRunBrtBk_span').innerHTML=data[0].numOfRunBrtBk;
          document.getElementById('numofResidential_span').innerHTML=data[0].numofResidential;
          document.getElementById('numofMissing_span').innerHTML=data[0].numofMissing;
          document.getElementById('numOfSentSL_span').innerHTML=data[0].numOfSentSL;
          document.getElementById('numOfRunAway_span').innerHTML=data[0].numOfRunAway;
          document.getElementById('numOfRelease_span').innerHTML=data[0].numOfRelease;
          document.getElementById('numOfClosing_span').innerHTML=data[0].numOfClosing;
          
           var html=$("#childStatusRepo_details").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           win.document.write(html);
          
      }
    });
    
    /*ajax code END*/
            
    e.preventDefault();
        });

});
        </script>
       </head>
    <body>
        <center>
        <CAPTION><font size="3"><b><s:text name='global.heading.viewChStatRepo'/></b></font></CAPTION>
        <table border="1" align="center">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="childStatusForm" action="SU_ChildStatusReport" method="POST" theme="css_xhtml" id="childStatusForm">
                
                <tr><td align="right"><s:text name='global.label.viewopregFromDate'/>:</td><td><s:textfield name="report_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name='global.label.viewopregToDate'/>:</td><td><s:textfield name="report_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="global.button.suShowRepo"/>" align="center" id="View" name="ViewReport"/></td></tr>
            </s:form> 
        </table>
        </center>
        <div id="childStatusRepo_details" style="display: none"> <div id="print_div">
                      
                <center><h2><s:text name="global.heading.ChStaReHeading"/></h2></center>
                      <center><table>
                        <tr>
                            <td><s:text name="global.label.ChStaReHomeNam"/></td>
                            <td><span id="homename_span"></span></td>
                        </tr>
                        <tr>
                            <td><s:text name="global.label.viewopregFromDate"/></td>
                            <td><span id="fromdate_span"></span></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><s:text name="global.label.viewopregToDate"/></td>
                            <td><span id="todate_span"></span></td>
                        </tr> 
                      </table></center>
                      <br/>
                      <br/>
                      <center><table border="1">
                        <tr>
                            <td colspan="6"><s:text name="global.label.ChStaReAdmiss"/></td>
                            <td colspan="6"><s:text name="global.label.ChStaReDischar"/></td>
                        </tr>
                        <tr>
                            <td><s:text name="global.label.ChStaReOpenChi"/></td>
                            <td><s:text name="global.label.ChStaReNewAdmi"/></td>
                            <td><s:text name="global.label.ChStaReShortLeaRet"/></td>
                            <td><s:text name="global.label.ChStaReResiReturn"/></td>
                            <td><s:text name="global.label.ChStaReMissiFou"/></td>
                            <td><s:text name="global.label.ChStaReRunawBac"/></td>
                            <td><s:text name="global.label.ChStaReResidenNo"/></td>
                            <td><s:text name="global.label.ChStaReMissiNo"/></td>
                            <td><s:text name="global.label.ChStaReShoLeavNo"/></td>
                            <td><s:text name="global.label.ChStaReRunAwNo"/></td>
                            <td><s:text name="global.label.ChStaReDischaNo"/></td>
                            <td><s:text name="global.label.ChStaReClosiNo"/></td> 
                        </tr>
                        <tr>
                            <td><span id="numOfOpenAdm_span"></span></td>
                            <td><span id="numOfNewAdm_span"></span></td>
                            <td><span id="numOfReturnSL_span"></span></td>
                            <td><span id="numOfReturnResident_span"></span></td>
                            <td><span id="numOfMissFnd_span"></span></td>
                            <td><span id="numOfRunBrtBk_span"></span></td>
                            <td><span id="numofResidential_span"></span></td>
                            <td><span id="numofMissing_span"></span></td>
                            <td><span id="numOfSentSL_span"></span></td>
                            <td><span id="numOfRunAway_span"></span></td>
                            <td><span id="numOfRelease_span"></span></td>
                            <td><span id="numOfClosing_span"></span></td> 
                        </tr> 
                      </table></center>
                        <br/><br/>
                        <center><input type="button" id="prbutton" value="<s:text name="global.button.print"/>" onclick="prdi('print_div')"/></center>
                    </div>   
                   <script type="text/javascript">
                       function prdi(divID)
    {
        var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var larPage = document.getElementById(divID).innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML = 
              "<html><head><title></title></head><body>" + 
              divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML =larPage;

    }
                       </script>
             </div>    
    </body>
</html>
