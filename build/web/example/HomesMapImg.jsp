<!-- saved from url=(0022)http://internet.e-mail -->
<%@taglib  prefix="s" uri="/struts-tags" %>
<html>
<head>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBAhBqZbrrYYLQ58ccpRY37j-m3TgEzTw&callback=initMap"
  async defer>
</script>
        <script src="JQscript/jquery.ui.widget.js"></script>
	<script src="JQscript/jquery.ui.accordion.js"></script>
	<link rel="stylesheet" href="JQscript/demos.css"/>
<title>AP Child Homes-Google Map</title>
<style type="text/css">
div#map_canvas{
        text-align: center;
        
	width:500px;
	height:500px;
}
</style>
<script type="text/javascript" 
   src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
 
<script type="text/javascript">
 /* function loadMap() {
      
    var latlng = new google.maps.LatLng(15.900000,80.507732);
    var myOptions = {
      zoom: 7,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    //var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
       var map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);    
 

           var layer =  new google.maps.FusionTablesLayer({
  
 query: {
    select: 'geometry',
    //from: '920549'
      from :'2103189'
  },  
  styles: [{
    polygonOptions: {
     strokeColor:"#0071bc",
     fillColor:"#ffffff",
    fillOpacity:0.3,
     strokeWeight:"1"
    //textAlign:"left"
     }
  }]
});

      
      var layer2 = new google.maps.FusionTablesLayer({
  query: {
    select: 'Location',
    from: '2168862'
  }
});


//layer1.setMap(map);
layer2.setMap(map);
*/


var map;

var layer;

var tableid = 2103189;

var layer2;

var tableid2 = 2168862;



function loadMap() {

  map = new google.maps.Map(
  document.getElementById('map_canvas'), 
  {

    center: new google.maps.LatLng(15.900000,80.507732),

    zoom: 6,

    mapTypeId: google.maps.MapTypeId.ROADMAP,
    
    scrollwheel:false,
    
    panControl: false,

    mapTypeControl: false,
    
    streetViewControl: false,

    zoomControl: true


  });

  layer = new google.maps.FusionTablesLayer(tableid);
  /*
   * 
   styles:
      [
      {
    polygonOptions: {
     strokeColor:"#0071bc",
     fillColor:"#ffffff",
    fillOpacity:0.3,
     strokeWeight:"1"
    //textAlign:"left"
     }
  }
]
  });
*/
  layer.setQuery("SELECT 'geometry' FROM " + tableid);
  
   
  
  layer.setMap(map);

  layer2 = new google.maps.FusionTablesLayer(tableid2);

  layer2.setQuery("SELECT 'Location' FROM " + tableid2);

  layer2.setMap(map);

  //layer3 = new google.maps.FusionTablesLayer(tableid3);

  //layer3.setQuery("SELECT 'geometry' FROM " + tableid3);

  //layer3.setMap(map);
  }

</script>
</head>
 
<body><%-- onload="loadMap()"> --%>
    
      

      <h1><s:text name="global.map.heading.aphomes"/></h1>
      <div id="map_canvas"><img src="example/HomesMap.jpg"/></div>
      <%--
        <table width="100%">
            <tr>
                <td width="75%"><div id="map_canvas"></div></td>
                <td width="25%" style="">
                      <div id="accordion">
                    <s:iterator  value="homeDetails">
                    
                  
                        <h3><a href="#"><s:property value="districtName"/></a></h3>
                    
                        
                        
                    </s:iterator>
                    </div>
                    
                </td>
            </tr>         
            
            
        </table>
      --%>

</body>

 
</html>