<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page   pageEncoding="ISO-8859-1" %>
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
   
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>

    <link href="style.css" rel="stylesheet" type="text/css" />
    <%--
    <link rel="stylesheet" href="JQscript/jquery.ui.all.css"/>
    
        <!--for time-->
        <!--script src="JQscript/jquery-ui-timepicker-addon.js"></script>
          <script src="JQscript/jquery-ui-1.8.6.custom.min.js"></script-->
          <!--link rel="stylesheet" href="JQscript/jquery-ui-1.8.6.custom.css"/-->
    
        <!--for time-->
       

	
       
	<link rel="stylesheet" href="JQscript/demos.css"/>
        
        <script src="JQscript/jquery-1.4.4.js"></script>
	<script src="JQscript/jquery.ui.core.js"></script>
	<script src="JQscript/jquery.ui.widget.js"></script>
        
	<script src="JQscript/jquery.ui.accordion.js"></script>
        <script src="JQscript/jquery.ui.datepicker.js"></script>
        <script src="javascripts/RowAddDelete.js"></script>
        <script src="JQscript/jquery.ui.mouse.js"></script>
	<script src="JQscript/jquery.ui.button.js"></script>
	<script src="JQscript/jquery.ui.draggable.js"></script>
	<script src="JQscript/jquery.ui.position.js"></script>
	<script src="JQscript/jquery.ui.resizable.js"></script>
	<script src="JQscript/jquery.ui.dialog.js"></script>
	<script src="JQscript/jquery.effects.core.js"></script>
          --%>   
              <!--script type="text/javascript" src="JQscript/vk_iframe.js" ></script-->
  

         <style>   
    .dialogFixed {
    position: fixed !important;
     }

    </style>
      <script language="JavaScript" type="text/javascript">
          function resetFont()
          {
              alert("enter");
             document.getElementsByTagName("body")[0].removeAttribute("class");
             alert("refresh");
             document.refesh();
          }
            function f1()
            { 
           alert("**hi***");
           alert(<s:text name="label.fieldsMand"/>);
                
            }
         </script>   
    <!-- for virtual keyboard start-->
    <link rel="stylesheet" href="jq/jquery-ui.css"/>
	 <script src="jq/jquery-1.8.2.js"></script>
	 <script src="jq/jquery-ui.js"></script>
	 <script type="text/javascript" src="VirtualKB/vk_easy.js" ></script>   
    <!-- for virtual keyboard ends-->
    
    
       <!--font resize start-->
<style>
html {
 font-size:13px;
       font-family : Verdana, Arial, Helvetica, sans-serif;
 color:#000000;
}

.post-body {
 font-size:13px;
       font-family : Verdana, Arial, Helvetica, sans-serif;
       color:#000000;
}

</style>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
 // Reset Font Size
 var originalFontSize = $('.post-body').css('font-size');
 $(".resetFont").click(function(){
 $('.post-body').css('font-size', originalFontSize);
 });
 // Increase Font Size
 $(".increaseFont").click(function(){
  var currentFontSize = $('.post-body').css('font-size');
 var currentFontSizeNum = parseFloat(currentFontSize, 10);
   var newFontSize = currentFontSizeNum*1.2;
 $('.post-body').css('font-size', newFontSize);
 return false;
 });
 // Decrease Font Size
 $(".decreaseFont").click(function(){
  var currentFontSize = $('.post-body').css('font-size');
 var currentFontSizeNum = parseFloat(currentFontSize, 10);
   var newFontSize = currentFontSizeNum*0.8;
 $('.post-body').css('font-size', newFontSize);
 return false;
 });
});
</script>
        <!--font resize ends-->
</head>
<body class="post-body">   
   
 <% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
 %>


<!--s:if test="%{#session.homeid!=null||Operation=='reg'}"-->
    <!--button id="opener"--><!--s:text name="global.button.openKB"/-->
<!--/button-->
<!--div id="dialog-kb" title="Key Board">
    <div id="td">
    </div>
</div-->
<!--/s:if-->
<!--font resize start-->

<div id="sidebar-right2" align="right"><div id="sidebar1">
        <table>
            <tr>
            <td>Font Change:<a href="#" class="increaseFont"><img src="images/incFont.jpg" width="27px" height="27px"/></a></td>
<td><a href="#" class="decreaseFont"><img src="images/deccFont.jpg" width="27px" height="27px"/></a></td>
            </tr>
            <!--tr>
                <td colspan="2" ><-input type="button" onclick="javascript:resetFont()" value="Reset"/></td> 
</tr-->
</table>
</div></div>


<!--font resize ends-->
<!--
   <input type=text name="text1" id="text1" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
       <input type=text name="text2" id="text2" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
-->

<div class="wrapper">

		<div id="header">
                    <img src="images/header.png"/>
                    <!--
		<h1></h1> 
		<h2></h2>
                    -->
	</div>

	<div id="container-top"></div>

	<div id="container">
            
		
		<div id="right"     style="width: 730px;">
			<tiles:insertAttribute name="tabs" />
                        <div id="right-top" style="overflow: auto;width: 720px;"></div>


                        <!--<div id="right-centre">(commented on 4-7-2012)-->
                        <div id="right-centre" style="overflow: auto;width: 720px;">


                <!--Your content goes here START write the contnt in side the below paragraph-->
		  <p>
                      
                      <s:if test="#session.homeid != null">
                          <s:text name="global.homeID"/>: <strong><s:property value="#session.homeid"/> </strong><br/>                          
                      </s:if>
                      
                       <s:if test="#session.userid != null">                
                         <s:text name="global.userID"/>: <strong><s:property value="#session.userid"/> </strong><br/>
                       </s:if>
                       
               
            <tiles:insertAttribute name="body" />
            
           

                                 </p>
                <!--Your content goes here START -->
               

				

		  </div>
            <div id="right-bottom" style="overflow: auto;width: 720px;"></div>
		</div>
		<div class="clear"></div>
	</div>
                     <tiles:insertAttribute name="footer" />
                   <!-- For Production System uncomment this--START--(CDN LINKS for application Speed up)-->   
        
         <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
         <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
         <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
        
       <!--For production system uncommmen this END-->
                     
                        <script src="javascripts/Common-Scripts.js"></script>
                     <tiles:useAttribute id="list" name="jsfiles" classname="java.util.List" />
          <c:forEach var="item" items="${list}">
              <script src='<tiles:insertAttribute value="${item}" flush="true" />'></script>
            <br/>
          </c:forEach>
</div>     
            
   </body>
</html>



