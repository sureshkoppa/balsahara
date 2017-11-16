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
        <script type="text/javascript" src="JQscript/jqplot.barRenderer.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.categoryAxisRenderer.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.pointLabels.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.json2.min.js"></script>
        <link rel="stylesheet" type="text/css" href="jquery.jqplot.min.css" />
        
        
    </head>
    <body>
        <h1>Analytical Reports</h1>
        
        
        <div id="chartdiv" style="height:400px;width:800px; "></div>
        
        <script>
                                        $(document).ready(function(){
                              // Our ajax data renderer which here retrieves a text file.
                              // it could contact any source and pull data, however.
                              // The options argument isn't used in this renderer.
                                var x = [];
                                var y = [];
                              
                              (function(url, plot, options) {
                                var ret = null;                                
                                $.ajax({
                                  // have to use synchronous here, else the function
                                  // will return before the data is fetched
                                  async: false,
                                  url: "SU-AgewiseReport-JSON",
                                  dataType:"json",
                                  success: function(data) {
                                      //console.log('data before parse = '+data[0].key);
                                      //data = $.parseJSON(JSON.stringify(data, undefined, 2));
                                      //console.log('data after parse = '+data);
                                      try{
                                         
                                        $.each(data, function(key, value){
                                            console.log(key, value);
                                            x.push(key);
                                            y.push(value);
                                        });
                                       
                                       console.log('x = '+x);
                                       console.log('y = '+y);
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
                               plot1 = $.jqplot('chartdiv', [y], {
                                        // Only animate if we're not using excanvas (not in IE 7 or IE 8)..
                                        animate: !$.jqplot.use_excanvas,
                                        seriesDefaults:{
                                            renderer:$.jqplot.BarRenderer,
                                            pointLabels: { show: true }
                                        },
                                        axes: {
                                            xaxis: {
                                                renderer: $.jqplot.CategoryAxisRenderer,
                                                ticks: x
                                            }
                                        },
                                        highlighter: { show: false }
                                    });

                             
                            });
           
        </script>
    </body>
</html>
