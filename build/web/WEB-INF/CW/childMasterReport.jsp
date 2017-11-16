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
        <script language="javascript" type="text/javascript" src="JQscript/jqplot.pieRenderer.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.categoryAxisRenderer.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.canvasAxisTickRenderer.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.canvasTextRenderer.min.js"></script>
        
        <script type="text/javascript" src="JQscript/jqplot.pointLabels.min.js"></script>
        <script type="text/javascript" src="JQscript/jqplot.json2.min.js"></script>
        <link rel="stylesheet" type="text/css" href="jquery.jqplot.min.css" />        
       
        <style type="text/css" media="screen">
                    
            body {
	margin: 0px; 
        padding:0px;
	text-align:center;
        font-family: "Arial Black", Gadget, sans-serif;
	}
        
        #chartdiv {
	width:800px;
        height: 400px;
	margin:0px auto;
	/*text-align:left;
	padding:15px;*/
	border:1px dashed #333;
	background-color:#eee;
	}
        
        #input{
            width:800px;
            margin: 0px auto;
            text-align: left;
            padding-bottom: .5em;
        }
        
        #info{
            text-align: left;
            background-color: yellow;
            color: green;
            font-family: "Arial Black", Gadget, sans-serif;
            font-size: .8em;
        }
            
        </style>

        
    </head>
    <body>
        <div id="wrapper">
             <h2>BalSahara Analytical Reports</h2>
            <div id="input">
        
  Select a home: <select name="homeid" id="homeId">
            <option value="all">All Homes Consolidated Report</option>

             <optgroup label="Anantapur">
<option value="AP_ANA_OHB_0035">Observation Home for Boys, Somuladoddi Post, Anantapur</option>
</optgroup>
<optgroup label="Chittor">
<option value="AP_CHI_RUB_0028">RECEPTION UNIT FOR BOYS , Mangalam, Tirupati</option>
<option value="AP_CHI_CHB_0028">GOVT. CHILDREN HOME FOR BOYS , Mangalam, Tirupati</option>
<option value="AP_CHI_RUG_0029">RECEPTION UNIT FOR GIRLS S.D.Road, Tirupati </option>
<option value="AP_CHI_CHG_0029">Children Home for Girls, Tirupati, Chittor</option>
<option value="AP_CHI_OHB_0043">Observation home for boys , tirupati , chitoor</option>
<option value="AP_CHI_SHB_0044">Special Home for Boys, Mangalam, Tirupati</option>
</optgroup>
<optgroup label="E.Goadawari">
<option value="AP_EGO_OHB_0038">Observation Home for Boys, Rajahmundry, E.Goadawari</option>
</optgroup>
<optgroup label="Hyderabad">
<option value="AP_HYD_RUB_0001">RECEPTION UNIT FOR BOYS, saidabad , Hyderabad </option>
<option value="AP_HYD_CHB_0001">Children Home For Boys, saidabad , Hyderabad</option>
<option value="AP_HYD_RUG_0017">RECEPTION UNIT FOR GIRLS, Nimboliadda, Hyderabad</option>
<option value="AP_HYD_CHG_0017">Children Home for Girls, Nimboliadda, Hyderabad</option>
<option value="AP_HYD_OHB_0041">Observation Home for Boys, Saidabad, Hyderabad</option>
<option value="AP_HYD_SHB_0034">Special Home for Boys, Saidabad, Hyderabad</option>
</optgroup>
<optgroup label="Kadapa">
<option value="AP_KAD_RUB_0020">RECEPTION UNIT FOR BOYS, Kadapa</option>
<option value="AP_KAD_CHB_0020">Children Home for Boys, Kadapa</option>
</optgroup>
<optgroup label="Krishna">
<option value="AP_KRI_OHB_0040">Observation Home for Boys,Vijayawada, Krishna </option>
</optgroup>
<optgroup label="Kurnool">
<option value="AP_KUR_OHB_0039">Observation Home for Boys, Kurnool</option>
</optgroup>
<optgroup label="Visakapatnam">
<option value="AP_VIS_RUB_0022">RECEPTION UNIT FOR BOYS,Visakapatnam</option>
<option value="AP_VIS_CHB_0022">Children Home for Boys,Visakapatnam</option>    
<option value="AP_VIS_RUG_0023">RECEPTION UNIT FOR GIRLS, Visakapatnam-43</option>
<option value="AP_VIS_CHG_0023">Children Home for Girls, Visakapatnam-43</option>
<option value="AP_VIS_OHB_0032">Observation Home for Boys,Seethammadhara, Visakapatnam</option>
<option value="AP_VIS_SHB_0033">Special Home for Boys, MVP Colony, Visakapatnam</option>
</optgroup>


<optgroup label="Warangal">
<option value="AP_WAR_RUB_0024">RECEPTION UNIT FOR BOYS, Warangal</option>
<option value="AP_WAR_CHB_0024">Children Home for Boys, Warangal</option>
<option value="AP_WAR_OHB_0042">Observation Home for Boys, Warangal</option>
</optgroup>
<optgroup label="W.Godawari">
<option value="AP_WGO_CHB_0018">Children Home for Boys, Eluru, W.Godawari</option>
<option value="AP_WGO_RUB_0018">RECEPTION UNIT FOR BOYS,Eluru, W.Godawari</option>
</optgroup>


        </select> <br>
        
      Report based on:  <select name="searchParm" id="searchParm">            
            <option value="age">Age</option>
            <option value="provisionLaw">Crime</option>
            <option value="status">Over all picture</option>
            <option value="dataentry">All home Data Entry Status</option>
            
        </select>
      
      <button id="submitButton">Show Report</button>
            </div> 
      
        <div id="chartdiv" style="height:400px;width:800px; ">
            
        </div> <span id="info"></span>
        </div>
        <script>
            (function(){ //onload
                
              var x = [];
              var y = [];
              var pieData =[[]];
              
              var JsonDataFetch = {                  
                  fetchData:function(chart) {
                                var ret = null;
                                this.resetArray();                                
                                $.ajax({
                                  // have to use synchronous here, else the function
                                  // will return before the data is fetched
                                  async: false,
                                  url: "CW-Get-Master-Report-JSON",
                                  data:{'homeId':$('#homeId').val(),'searchParm':$('#searchParm').val()},
                                  dataType:"json",
                                  success: function(data) { 
                                      ret = data;
                                      try{
                                          
                                          if(chart === 'bar'){
                                            $.each(data, function(key, value){
                                            console.log(key, value);
                                            x.push(key);
                                            y.push(value);
                                        });
                                        console.log('x = '+x);
                                        console.log('y = '+y);
                                          }
                                          
                                          else if(chart === 'pie'){
                                              $.each(data, function(key, value){
                                            console.log(key, value);
                                            var arr = new Array();
                                            arr.push(key, value);
                                            pieData.push(arr);
                                            //count++;
                                        });
                                       
                                       console.log(pieData + 'array length = '+pieData.length);
                                              
                                          }
                                      }
                                      catch(err){
                                          alert(err);
                                      }
                                  }
                                });
                                return ret;
                              }, 
                              
                              resetArray:function(){
                              x.length=y.length=pieData.length= 0;
                              
                              
                              }
                           };
                           
                           
                           var Draw = {
                              
                           drawChart:function(chart){ 
                           
                            this.cleanCanvas();
                           
                           if(chart === 'bar'){
                                $.jqplot('chartdiv', [y], {
                                        
                                        animate: !$.jqplot.use_excanvas,
                                        seriesDefaults:{
                                            renderer:$.jqplot.BarRenderer,
                                            pointLabels: { show: true }
                                        },
                                        axes: {
                                            xaxis: {
                                                renderer: $.jqplot.CategoryAxisRenderer,
                                                ticks: x,                                                
                                                tickRenderer: $.jqplot.CanvasAxisTickRenderer,
                                                tickOptions: {
                                                          angle: -30
                                                             }
                                            }
                                        },
                                        highlighter: { show: false }
                                    });
                           }   
                           else if(chart === 'pie'){
                               
                               jQuery.jqplot ('chartdiv', [pieData],
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
                                      legend: { show:false,
                                                location: 'e',
                                                rendererOptions: {numberColumns: 4}
                                              }
                                    }
                                  );
                           }
                           },
                           
                           cleanCanvas:function(){
                               
                               $('#chartdiv').empty();  
                           }
                           
                           }
                           
                        $('#submitButton').click(function(){
                          var selectedParm = $('#searchParm').val();
                          var drawOption=(selectedParm === 'age'||selectedParm === 'dataentry'?'bar':'pie');  
                          
                          $("#info").empty()
                          var data = JsonDataFetch.fetchData(drawOption);
                          if($.isEmptyObject(data))
                              {   
                                  Draw.cleanCanvas();
                                  $('#chartdiv').append("NO DATA TO DISPLAY")
                                  
                              }
                              else{
                                  Draw.drawChart(drawOption);
                              }
                          
                          
                          
                            
                        });  
                 
                        $('#chartdiv').bind('jqplotDataClick',
                    function (ev, seriesIndex, pointIndex, data) {
                   $('#info').html('Category : '+data[0]+"<br>value : "+data[1]);
                      }
                    );
                    
                    
      
                   })(); //onload ends
            
        </script>
        
    </body>
</html>
