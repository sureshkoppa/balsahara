<%-- 
    Document   : SuperGraphicalReports
    Created on : 12 Feb, 2014, 4:00:16 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript" type="text/javascript" src="JQscript/jquery-1.4.4.js"></script>
        <script language="javascript" type="text/javascript" src="JQscript/jquery.jqplot.min.js"></script>
        <script language="javascript" type="text/javascript" src="JQscript/jqplot.pieRenderer.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.json2.min.js"></script>
        <link rel="stylesheet" type="text/css" href="jquery.jqplot.min.css" />
        
        
    </head>
    <body>
        <h1>Analytical Reports</h1>
        
        
        <div id="chartdiv" style="height:400px;width:800px; "></div>
        
        <script>
                                        $(document).ready(function(){
                              var pieData =[[]];
                              /*var pieData = [
    ['Heavy Industry', 12],['Retail', 9], ['Light Industry', 14],
    ['Out of home', 16],['Commuting', 7], ['Orientation', 9]
  ];*/
                              
                              (function(url, plot, options) {
                                var ret = null;                                
                                $.ajax({
                                  // have to use synchronous here, else the function
                                  // will return before the data is fetched
                                  async: false,
                                  url: "DOC-Disease-Report-JSON",//"DOC-Disease-Report-JSON",
                                  dataType:"json",
                                  success: function(data) {
                                     //console.log('data before parse = '+data[0].key);
                                      //data = $.parseJSON(JSON.stringify(data, undefined, 2));
                                      //console.log('data after parse = '+data);
                                      try{
                                         
                                         //var count = 0;
                                        $.each(data, function(key, value){
                                            console.log(key, value);
                                            var arr = new Array();
                                            arr.push(key, value);
                                            pieData.push(arr);
                                            //count++;
                                        });
                                       
                                       alert(pieData + 'array length = '+pieData.length);
                                       
                                      }
                                      
                                      catch(err){
                                          alert(err);
                                      }
                                 
                                  }
                                });
                                //return ret;
                              })();
                               
                              // The url for our json data
                              //var jsonurl =  "SU-AgewiseReport-JSON";
                              var jsonurl = "JsonData.json";
                              //$.jqplot.config.enablePlugins = true;
                            var plot1 = jQuery.jqplot ('chartdiv', [pieData],
                                    {
                                      seriesDefaults: {
                                        // Make this a pie chart.
                                        renderer: jQuery.jqplot.PieRenderer,
                                        rendererOptions: {
                                          // Put data labels on the pie slices.
                                          // By default, labels show the percentage of the slice.
                                          showDataLabels: true,
                                          dataLabels: 'value'
                                        }
                                      },
                                      legend: { show:true, location: 'e' }
                                    }
                                  );
                            
                            });
           
        </script>
    </body>
</html>
